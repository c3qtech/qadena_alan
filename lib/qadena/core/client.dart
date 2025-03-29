import 'dart:typed_data';

import 'package:qadena_alan/qadena/core/client/query/export.dart';
import 'package:qadena_alan/qadena/types/hdpath.dart';
import 'package:qadena_alan/qadena/types/qadena_hd_wallet.dart';
import 'package:qadena_alan/utils/bip_39.dart';
import 'package:qadena_alan/wallet/network_info.dart';
import 'package:qadena_alan/wallet/wallet.dart';
import 'package:fixnum/src/int64.dart';
import 'package:qadena_alan/alan.dart' as alan;
import 'package:protobuf/protobuf.dart';
import 'package:qadena_alan/proto/cosmos/feegrant/v1beta1/feegrant.pb.dart';
import 'package:qadena_alan/proto/cosmos/feegrant/v1beta1/tx.pb.dart';
import 'package:qadena_alan/proto/cosmos/tx/v1beta1/tx.pb.dart';
import 'package:qadena_alan/proto/cosmos/base/v1beta1/coin.pb.dart';
import 'package:grpc/grpc.dart';
import 'package:qadena_alan/qadena.dart';
import 'package:qadena_alan/qadena/core/client/msg/qadena/create_wallet.dart';
import 'package:qadena_alan/qadena/core/client/query/qadena_query.dart';
import 'package:qadena_alan/proto/cosmos/bank/v1beta1/query.pb.dart';
import 'package:qadena_alan/qadena/core/client/msg/qadena/register_authorized_signatory.dart';
import 'package:qadena_alan/qadena/core/client/msg/qadena/claim_credentials.dart';
import 'package:qadena_alan/qadena/core/client/msg/qadena/common.dart';

//import 'package:qadena_alan/proto/qadena/qadena/export.dart' as qadenaproto;


class StringRef {
  String value;
  StringRef(this.value);
}


class LocalAccountResponse {
  final List<String> mnemonic;
  final String? password;
  final String txAddress;
  final String cxAddress;
  final Uint8List txPublicKeyHex;
  final Uint8List cxPublicKeyHex;

  LocalAccountResponse({
    required this.mnemonic,
    this.password,
    required this.txAddress,
    required this.cxAddress,
    required this.txPublicKeyHex,
    required this.cxPublicKeyHex,
  });
}

class AccountResponse {
  QadenaHDWallet mainWallet;
  QadenaHDWallet ephWallet;

  AccountResponse({
    required this.mainWallet,
    required this.ephWallet,
  });
}

class QadenaClient {
  final NetworkInfo networkInfo;
  late final Chain chain;

  late final alan.Wallet sponsorAcct;
  late final WalletResponse sponsorWallet;


  QadenaClient(this.networkInfo) {
    chain = Chain(networkInfo);
    // HARD CODED
    sponsorAcct = alan.Wallet.derive(
      "guilt decline utility scale crash envelope snap table dress coach tray use detect success lemon fatigue surround project warfare victory mean midnight address before"
          .split(' '),
      networkInfo,
      derivationPath: "m/44'/744'/0'/0/0");

     sponsorWallet = toWallet(sponsorAcct);
  }


  final double gasMultiplier = 1.2;
  final Int64 gasPrice = Int64(500000000); // in config.yml of chain

  Future<bool> broadcastTx(
      alan.Wallet signingWallet, List<GeneratedMessage> msgs, {String? feeGranter, StringRef? txHashRef}) async {
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
    final signer = alan.TxSigner.fromNetworkInfo(networkInfo);
    final txSender = alan.TxSender.fromNetworkInfo(networkInfo);
    Int64 oldSequence;
    while (true) {
      // remember the current sequence number of the signingWallet
      oldSequence = await getSequenceNumber(signingWallet);

      /* ADD BELOW TO SIMULATE sequence mismatch error
      // HACK
      //oldSequence--;
      */

      // create and sign the message, assign seq
      Tx? tx;

      //
      var success = false;
      Int64 gas = Int64(0);

      try {
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
        print("simulateResponse: $simulateResponse");
        if (simulateResponse.hasGasInfo()) {
          gas = simulateResponse.gasInfo.gasUsed;
          success = true;
        }
      } on GrpcError catch (e) {
        print("simulate error: $e");
        // get code and message from e
        final code = e.code;
        final message = e.message;
        if (code == 2 && message!.contains("sequence mismatch")) {
          // sequence not found, retry
          success = false;
          shouldRetry = true;
        } else {
          success = false;
          shouldRetry = false;
        }
      }

      if (success) {
        // calculate gas
        double gasDouble = gas.toDouble() * gasMultiplier;
        gas = gasDouble.toInt().toInt64();
        print("gas (adjusted) $gas");

        var fee = Fee();
        fee.gasLimit = gas;
        final feeAmount = gas * gasPrice;
        fee.amount.add(Coin.create()
          ..amount = "$feeAmount"
          ..denom = 'aqdn');
        if (feeGranter != null) {
          fee.granter = feeGranter;
        }
        tx = await signer.createAndSign(signingWallet, msgs, accountSequence: oldSequence, fee: fee);
        final broadcastResponse = await txSender.broadcastTx(tx);
        var acceptResponse = checkTxAccepted(txSender, broadcastResponse, signingWallet, oldSequence);

        final accepted = acceptResponse.first;
        if (accepted) {
          if (txHashRef != null) {
            txHashRef.value = broadcastResponse.txhash;
            return true;
          }
          final result = await checkTxResult(txSender, broadcastResponse.txhash);
          return result;
        }
        shouldRetry = acceptResponse.second;
      }

      if (shouldRetry) {
        await Future.delayed(timeouts[maxTries]);
        final newBackoff =
            await waitForSequenceChange(signingWallet, oldSequence);
        if (newBackoff && !backoff) {
          maxTries = 0;
          backoff = true;
          print("backing off");
          timeouts = backoffTimeouts;
        } else {
          maxTries++;
          if (maxTries == timeouts.length) {
            print("max tries exceeded");
            return false;
          }
        }
        continue;
      } else if (!success) {
        return false;
      } else {
        break;
      }
    }

    await waitForSequenceChange(signingWallet, oldSequence);
    // note: we get here even if the sequence number did not increase, but the chain may just be delayed in updating the sequence number
    return true;
  }

  Future<Int64> getSequenceNumber(alan.Wallet wallet) async {
    final account =
        await chain.authQuery.authQuerier.getAccountData(wallet.bech32Address);
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

  Pair<bool, bool> checkTxAccepted(alan.TxSender txSender,
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
  Future<bool> checkTxResult(alan.TxSender txSender,
      String txhash) async {
    // Loop 8 times
    for (int tryCount = 8; tryCount > 0; tryCount--) {
      try {
        final output = await txSender.checkTxByHash(txhash);

        if (output.isSuccessful) {
          return true;
        } else {
          print(
              "Transaction failed: txhash, Code: ${output.code}, Log: ${output.rawLog}");
          return false;
        }
      } catch (e) {
        print("exception: $e");
        if (tryCount == 1) {
          print("Error querying transaction: $e");
          return false;
        } else {
          print("sleep start");
          await Future.delayed(Duration(milliseconds: 750));
          print("sleep end");
        }
      }
    }
    return false;
  }

// returns true if the sequence changed by more than 1 (meaning there many simultaneous transactions from this wallet), false otherwise; also returns true if we didn't detect a change
  Future<bool> waitForSequenceChange(
      alan.Wallet wallet, Int64 oldSequence) async {
    print("Waiting for sequence change from $oldSequence");
    for (int i = 0; i < 15; i++) {
      final newSequence = await getSequenceNumber(wallet);
      if (newSequence > oldSequence) {
        print("Sequence number increased from $oldSequence to $newSequence");
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



  LocalAccountResponse createLocalAccount(
      {List<String>? mnemonic, int? ephIndex, String? password}) {
    try {
      var seedPhrase = mnemonic ?? Bip39.generateMnemonic(strength: 256);
      ephIndex = ephIndex ?? 0;

      final txpath = HDPath(
              walletType: AccountType.transactionWalletType.value,
              addressIdx: ephIndex)
          .toString();
      final cxpath = HDPath(
              walletType: AccountType.credentialWalletType.value, addressIdx: 1)
          .toString();
      var txWallet =
          Wallet.derive(seedPhrase, networkInfo, derivationPath: txpath);
      var cxWallet =
          Wallet.derive(seedPhrase, networkInfo, derivationPath: cxpath);

      return LocalAccountResponse(
        mnemonic: seedPhrase,
        password: password,
        txAddress: txWallet.bech32Address,
        cxAddress: cxWallet.bech32Address,
        txPublicKeyHex: txWallet.publicKey,
        cxPublicKeyHex: cxWallet.publicKey,
      );
    } catch (e) {
      print('Failed to create local wallet: $e');
      return LocalAccountResponse(
        mnemonic: [],
        txAddress: '',
        cxAddress: '',
        txPublicKeyHex: Uint8List(0),
        cxPublicKeyHex: Uint8List(0),
      );
    }
  }

  List<GeneratedMessage> createFeeGrantMessages(String mainWalletAddress, String ephWalletAddress) {
    final basicAllowance = BasicAllowance.create();

    final allowance = AllowedMsgAllowance.create();
    allowance.allowance = alan.Any(
      typeUrl: '/cosmos.feegrant.v1beta1.BasicAllowance',
      value: basicAllowance.writeToBuffer(),
    );
    allowance.allowedMessages.addAll([
      '/qadena.qadena.MsgAddPublicKey',
      '/qadena.qadena.MsgCreateWallet',
    ]);

    final msg = MsgGrantAllowance.create();
    msg.grantee = mainWalletAddress;
    msg.granter = sponsorWallet.address;
    msg.allowance = alan.Any(
      typeUrl: '/cosmos.feegrant.v1beta1.AllowedMsgAllowance',
      value: allowance.writeToBuffer(),
    );

    final msg2 = MsgGrantAllowance.create();
    msg2.grantee = ephWalletAddress;
    msg2.granter = sponsorWallet.address;
    msg2.allowance = alan.Any(
      typeUrl: '/cosmos.feegrant.v1beta1.AllowedMsgAllowance',
      value: allowance.writeToBuffer(),
    );

    return [msg, msg2];
  }

  Future<Map<String, Incentive>> getIncentives(Chain chain) async {
      try {
        final denomsMetadataRes = await chain.bankQuery.queryClient
            .denomsMetadata(QueryDenomsMetadataRequest());
        final metadatas = denomsMetadataRes.metadatas;
        final incentivesRes = await chain.qadenaQuery.incentives(metadatas);
        return incentivesRes;
      } catch (e) {
        print('Failed to get incentives: $e');
        return {};
      }
  }

  Future<AccountResponse?> createCompleteAccount(String pioneerID, List<String>? mnemonic, String? serviceProviderID, BigInt claimAmount, BigInt claimBlindingFactor) async {
    try {
      initECPedersen();

      var seedPhrase = mnemonic ?? Bip39.generateMnemonic(strength: 256);
      serviceProviderID = serviceProviderID ?? "";

      final chain = Chain(networkInfo);

      // main wallet index=0
      var mainWallet = QadenaHDWallet(chain, networkInfo, seedPhrase, 0,
          pioneerID, serviceProviderID);

      if (await mainWallet.walletExists()) {
        return null;
      }

      // ephemeral wallet index=1
      var ephWallet = QadenaHDWallet(chain, networkInfo, seedPhrase, 1,
          pioneerID, serviceProviderID);

      final txSender = alan.TxSender.fromNetworkInfo(networkInfo);


      final grantTxHashRef = StringRef("");
      if (networkInfo.isTesting) {
        final msgs = createFeeGrantMessages(mainWallet.transactionWalletAddress, ephWallet.transactionWalletAddress);

        final response = await broadcastTx(sponsorAcct, msgs, txHashRef: grantTxHashRef);

        if (response) {
          print('Accepted:  feegrant - Response: $response, TxHash: ${grantTxHashRef.value}, msgs: $msgs');
        } else {
          print("REJECTED:  feegrant msgs: $msgs");
          return null;
        }

        // wait for result
        if (await checkTxResult(txSender, grantTxHashRef.value)) {
          print("feegrant success");
        }
      }

      final mainWalletAmountRef = WalletAmountRef(null);

      final mainCWMsgs = await msgCreateWallet(MsgCreateWalletArgs(
        chain: chain,
        cxwallet: mainWallet.credentialWallet,
        homePioneerID: pioneerID,
        txwallet: mainWallet.transactionWallet,
        acceptCredentialTypes: null,
        acceptPassword: null,
        isEphemeral: false,
        requireSenderCredentialTypes: null,
        incentives: () async => await getIncentives(chain),
        serviceProviderID: serviceProviderID,
        mainWallet: null,
        mainWalletQadenaWalletAmount: mainWalletAmountRef,
      ));

      final mainCWTxHashRef = StringRef("");
      final mainCWResponse = await broadcastTx(mainWallet.txAcct, mainCWMsgs, feeGranter: sponsorWallet.address, txHashRef: mainCWTxHashRef);

      if (mainCWResponse) {
        print('Accepted:  create wallet - Response: $mainCWResponse, TxHash: ${mainCWTxHashRef.value}, msgs: $mainCWMsgs');
      } else {
        print("REJECTED:  create wallet msgs: $mainCWMsgs");
        return null;
      }


      final ephCWMsgs = await msgCreateWallet(MsgCreateWalletArgs(
        chain: chain,
        cxwallet: ephWallet.credentialWallet,
        homePioneerID: pioneerID,
        txwallet: ephWallet.transactionWallet,
        acceptCredentialTypes: null,
        acceptPassword: null,
        isEphemeral: true,
        requireSenderCredentialTypes: null,
        incentives: () async => await getIncentives(chain),
        serviceProviderID: serviceProviderID,
        mainWallet: mainWallet.transactionWallet,
        mainWalletQadenaWalletAmount: mainWalletAmountRef,
      ));

      final ephCWTxHashRef = StringRef("");
      final ephCWResponse = await broadcastTx(ephWallet.txAcct, ephCWMsgs, feeGranter: sponsorWallet.address, txHashRef: ephCWTxHashRef);

      if (ephCWResponse) {
        print('Accepted:  eph create wallet - Response: $ephCWResponse, TxHash: ${grantTxHashRef.value}, msgs: $ephCWMsgs');
      } else {
        print("REJECTED:  eph create wallet msgs: $ephCWMsgs");
        return null;
      }

      final rasMsgs =
            await msgRegisterAuthorizedSignatory(MsgRegisterAuthorizedSignatoryArgs(
          chain: chain,
          txwallet: ephWallet.transactionWallet,
          realWalletTransaction: mainWallet.transactionWallet,
          realWalletCredential: mainWallet.credentialWallet,
        ));

      final rasTxHashRef = StringRef("");
      final rasResponse = await broadcastTx(mainWallet.txAcct, rasMsgs, feeGranter: sponsorWallet.address, txHashRef: rasTxHashRef);

      if (rasResponse) {
        print('Accepted:  register authorized signatory - Response: $rasResponse, TxHash: ${rasTxHashRef.value}, msgs: $rasMsgs');
      } else {
        print("REJECTED:  register authorized signatory msgs: $rasMsgs");
        return null;
      }

      final ephCCTxHashRef = StringRef("");

      final ccMsgs = await msgClaimCredentials(MsgClaimCredentialsArgs(
        chain: chain,
        txwallet: mainWallet.transactionWallet,
        cxwallet: mainWallet.credentialWallet,
        claimAmount: claimAmount,
        claimBlindingFactor: claimBlindingFactor,
        recoverKey: false,
        mainWalletQadenaWalletAmount: mainWalletAmountRef,
        mainWalletServiceProviderID: [serviceProviderID],
        ));

      final ccResponse = await broadcastTx(mainWallet.txAcct, ccMsgs, feeGranter: sponsorWallet.address, txHashRef: ephCCTxHashRef);

      if (ccResponse) {
        print('Accepted:  claim credentials - Response: $ccResponse, TxHash: ${ephCCTxHashRef.value}, msgs: $ccMsgs');
      } else {
        print("REJECTED:  claim credentials msgs: $ccMsgs");
        return null;
      }
      




      if (await checkTxResult(txSender, mainCWTxHashRef.value)) {
        print("main create wallet success");
      } else {
        return null;
      }

      if (await checkTxResult(txSender, ephCWTxHashRef.value)) {
        print("eph create wallet success");
      } else {
        return null;
      }

      if (await checkTxResult(txSender, rasTxHashRef.value)) {
        print("register authorized signatory success");
      } else {
        return null;
      }

      return AccountResponse(
        mainWallet: mainWallet,
        ephWallet: ephWallet,
      );
    } catch (e) {
      print('Failed to create eph wallet: $e');
      return null;
    }
  }

  Future<QadenaHDWallet?> createWallet(String pioneerID, List<String>? mnemonic,
      int? ephIndex, String? serviceProviderID) async {
    try {
      initECPedersen();

      var seedPhrase = mnemonic ?? Bip39.generateMnemonic(strength: 256);
      ephIndex = ephIndex ?? 0;
      serviceProviderID = serviceProviderID ?? "";

      final chain = Chain(networkInfo);
      var wallet = QadenaHDWallet(chain, networkInfo, seedPhrase, ephIndex,
          pioneerID, serviceProviderID);

      if (await wallet.walletExists()) {
        return wallet;
      }

      if (networkInfo.isTesting) {
        final feeGrantSuccess = await wallet.feeGrant();
        print("Fee grant completed: $feeGrantSuccess");
      }

      final registerWalletSuccess = await wallet.registerWallet();
      print("Wallet registration successful: $registerWalletSuccess");

      return registerWalletSuccess ? wallet : null;
    } catch (e) {
      print('Failed to create main wallet: $e');
      return null;
    }
  }
}
