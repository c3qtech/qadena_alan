
import 'package:qadena_alan/qadena/core/client/query/export.dart';
import 'package:qadena_alan/wallet/network_info.dart';
import 'package:fixnum/src/int64.dart';
import 'package:qadena_alan/alan.dart' as alan;
import 'package:protobuf/protobuf.dart';
import 'package:qadena_alan/proto/cosmos/tx/v1beta1/tx.pb.dart';
import 'package:qadena_alan/proto/cosmos/base/v1beta1/coin.pb.dart';
import 'package:grpc/grpc.dart';
import 'package:qadena_alan/qadena.dart';
import 'package:qadena_alan/qadena/common.dart' as c;

// HELPER CLASSES FOR TALKING TO THE BROADCASTING TO QADENA


/*
Common GRPC errors

NOT_FOUND
Resource not found

UNKNOWN
Unknown error

DEADLINE_EXCEEDED
Timeout occurred

UNAVAILABLE
Server unavailable or network error

*/

class StringRef {
  String value;
  StringRef(this.value);
}

class QadenaClientTx {
  static  NetworkInfo? networkInfo;
  static  Chain? chain;
  
  static final double gasMultiplier = 1.2;
  static final Int64 gasPrice = Int64(500000000); // in config.yml of chain

  static Future<String?> broadcastTx(
      alan.Wallet signingWallet, List<GeneratedMessage> msgs, {String? feeGranter, StringRef? txHashRef}) async {
    try {
    final List<Duration> normalTimeouts = [
      Duration(seconds: 1),
      Duration(seconds: 1),
      Duration(seconds: 2),
      Duration(seconds: 2),
      Duration(seconds: 4),
      Duration(seconds: 4),
      Duration(seconds: 4),
      Duration(seconds: 4),
      Duration(seconds: 10),
      Duration(seconds: 10),
      Duration(seconds: 10),
    ];

    final List<Duration> backoffTimeouts = [
      Duration(seconds: 20),
      Duration(seconds: 20),
      Duration(seconds: 20),
      Duration(seconds: 30),
      Duration(seconds: 30),
      Duration(seconds: 30),
      Duration(seconds: 30),
    ];

    var timeouts = normalTimeouts;

    var maxTries = 0;
    var backoff = false;
    var shouldRetry = true;
    final signer = alan.TxSigner.fromNetworkInfo(networkInfo!);
    final txSender = alan.TxSender.fromNetworkInfo(networkInfo!);
    Int64? oldSequence;
    while (true) {
      /* ADD BELOW TO SIMULATE sequence mismatch error
      // HACK -- oldSequence--;
      */

      // create and sign the message, assign seq
      Tx? tx;

      //
      var success = false;
      String? simulateErrorMessage = null;

      Int64 gas = Int64(0);

      try {
        // remember the current sequence number of the signingWallet
        oldSequence = await getSequenceNumber(signingWallet);

        print("oldSequence: $oldSequence for wallet ${signingWallet.bech32Address}");

        var fee = Fee();
        gas = Int64(500000);
        fee.gasLimit = gas;
        final feeAmount = gas * gasPrice;
        fee.amount.add(Coin.create()
          ..amount = "$feeAmount"
          ..denom = 'aqdn');
        if (feeGranter != null) {
          fee.granter = feeGranter;
        }
        tx = await signer.createAndSign(signingWallet, msgs,
          accountSequence: oldSequence, simulate: true, fee: fee);
        final simulateResponse = await txSender.simulate(tx);
        if (c.Debug) {
          print("simulateResponse: $simulateResponse for wallet ${signingWallet.bech32Address}");
        }
        if (simulateResponse.hasGasInfo()) {
          gas = simulateResponse.gasInfo.gasUsed;
          success = true;
        }
      } on GrpcError catch (e) {
        if (c.Debug) {
          print("simulate error for wallet ${signingWallet.bech32Address}: $e");
        }
        // get code and message from e
        final code = e.code;
        final codeName = e.codeName;
        final message = e.message;
        if (c.Debug) {
          print("simulate error for wallet ${signingWallet.bech32Address}: $e, code: $code, codeName: $codeName, MESSAGE: $message");
        }
        if (code == 2 && message!.contains("sequence mismatch")) {
          // sequence not found, retry
          success = false;
          shouldRetry = true;
        } else {
          success = false;
          shouldRetry = false;

          final regExp = RegExp(r'message index: \d+: (.+?) \[');
          final match = regExp.firstMatch(message!);

          if (match != null) {
            final message = match.group(1); // 'Signatory already exists'

            if (c.Debug) {
              print('Message: $message');
            }
            simulateErrorMessage = message;
          } else {
            if (c.Debug) {
              print('Could not parse raw_log.');
            }
            simulateErrorMessage = codeName;
          }
        }
      }

      if (success) {
        // calculate gas
        double gasDouble = gas.toDouble() * gasMultiplier;
        gas = gasDouble.toInt().toInt64();
        if (c.Debug) {
          print("gas (adjusted) $gas for wallet ${signingWallet.bech32Address}");
        }

        var fee = Fee();
        fee.gasLimit = gas;
        final feeAmount = gas * gasPrice;
        fee.amount.add(Coin.create()
          ..amount = "$feeAmount"
          ..denom = 'aqdn');
        if (feeGranter != null) {
          fee.granter = feeGranter;
        }
        tx = await signer.createAndSign(signingWallet, msgs, accountSequence: oldSequence!, fee: fee);
        final broadcastResponse = await txSender.broadcastTx(tx);
        var acceptResponse = checkTxAccepted(txSender, broadcastResponse, signingWallet, oldSequence);

        final accepted = acceptResponse.first;
        if (accepted) {
          if (txHashRef != null) {
            txHashRef.value = broadcastResponse.txhash;
            return null;
          }
          final result = await checkTxResult(txSender, broadcastResponse.txhash);
          return result;
        }
        shouldRetry = acceptResponse.second;
      }

      if (shouldRetry) {
        await Future.delayed(timeouts[maxTries]);
        final newBackoff =
            await waitForSequenceChange(signingWallet, oldSequence!);
        if (newBackoff && !backoff) {
          maxTries = 0;
          backoff = true;
          if (c.Debug) {
            print("backing off");
          }
          timeouts = backoffTimeouts;
        } else {
          maxTries++;
          if (maxTries == timeouts.length) {
            print("max tries exceeded");
            return "DEADLINE_EXCEEDED";
          }
        }
        continue;
      } else if (!success) {
        return simulateErrorMessage;
      } else {
        break;
      }
    }

    await waitForSequenceChange(signingWallet, oldSequence!);
    // note: we get here even if the sequence number did not increase, but the chain may just be delayed in updating the sequence number
    return null;
    } on GrpcError catch (e) {
      if (c.Debug) {
        print("broadcastTx grpc error: $e");
      }
      return e.codeName;
    } catch (e) {
      print("broadcastTx error: $e");
      return "UNKNOWN";
    }
  }

  static Future<Int64> getSequenceNumber(alan.Wallet wallet) async {
    final account =
        await chain!.authQuery.authQuerier.getAccountData(wallet.bech32Address);
    if (account == null) {
      throw Exception(
        'Account ${wallet.bech32Address} does not exist on chain',
      );
    }
    return account.sequence;
  }

  // define constants ErrWrongSequence and ErrTxInMempoolCache
  // NOTE NOTE:  these constants are defined in Cosmos SDK!!!!
  static const ErrWrongSequence = 32;
  static const ErrTxInMempoolCache = 19;

  static Pair<bool, bool> checkTxAccepted(alan.TxSender txSender,
      alan.TxResponse response, alan.Wallet wallet, Int64 oldSequence) {
    if (!response.isSuccessful) {
      if (response.codespace == 'sdk' &&
          (response.code == ErrWrongSequence ||
              response.code == ErrTxInMempoolCache)) {
        return Pair(false, true);
      }
      return Pair(false, false);
    }
    return Pair(true, false);
  }

  // return a pair of (success bool, retry bool)
  static Future<String?> checkTxResult(alan.TxSender txSender,
      String txhash) async {
    // Loop 8 times
    for (int tryCount = 8; tryCount > 0; tryCount--) {
      try {
        final output = await txSender.checkTxByHash(txhash);

        if (output.isSuccessful) {
          return null;
        } else {
          if (c.Debug) {
            print(
                "Transaction failed: txhash, Code: ${output.code}, Log: ${output.rawLog}");
          }

          // trying first format of error messages

          final rawLog = output.rawLog;
          final regExp = RegExp(r'codespace (\w+) code (\d+): (.+)$');
          final match = regExp.firstMatch(rawLog);

          if (match != null) {
            final codespace = match.group(1); // 'qadena'
            final code = int.parse(match.group(2)!); // 1145
            final message = match.group(3); // 'Signatory already exists'

            if (c.Debug) {
              print('Codespace: $codespace');
              print('Code: $code');
              print('Message: $message');
            }
            return message;
          } else {
            // trying second format of error messages
            final regExp = RegExp(r'message index: \d+: (.+?) \[');
            final match = regExp.firstMatch(rawLog);

            if (match != null) {
              final message = match.group(1); // 'Signatory already exists'

              if (c.Debug) {
                print('Message: $message');
              }
              return message;            
            } else {
              if (c.Debug) {
                print('Could not parse raw_log.');
              }
              return output.rawLog;
            }
          }
        }
      } catch (e) {
        if (c.Debug) {
          print("exception: $e");
        }
        if (tryCount == 1) {
          if (c.Debug) {
            print("Error querying transaction: $e");
          }
          return e.toString();
        } else {
          if (c.Debug) {
            print("sleep start");
          }
          await Future.delayed(Duration(milliseconds: 750));
          if (c.Debug) {
            print("sleep end");
          }
        }
      }
    }
    return "TIMEDOUT";
  }

// returns true if the sequence changed by more than 1 (meaning there many simultaneous transactions from this wallet), false otherwise; also returns true if we didn't detect a change
static Future<bool> waitForSequenceChange(
    alan.Wallet wallet, Int64 oldSequence) async {
    if (c.Debug) {
      print("Waiting for sequence change for wallet ${wallet.bech32Address} from $oldSequence");
    }
    for (int i = 0; i < 15; i++) {
      final newSequence = await getSequenceNumber(wallet);
      if (newSequence > oldSequence) {
        if (c.Debug) {
          print("Sequence number increased for wallet ${wallet.bech32Address} from $oldSequence to $newSequence");
        }
        if (newSequence > oldSequence + 1) {
          return true;
        } else {
          return false;
        }
      }
      await Future.delayed(Duration(milliseconds: 500));
    }
    return true;
  }
}