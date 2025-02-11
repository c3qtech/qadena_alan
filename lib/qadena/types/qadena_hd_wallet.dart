import 'dart:convert';
import 'dart:typed_data';

import 'package:fixnum/src/int64.dart';
import 'package:qadena_alan/alan.dart' as alan;
import 'package:qadena_alan/proto/cosmos/bank/v1beta1/query.pb.dart';
import 'package:qadena_alan/proto/cosmos/feegrant/v1beta1/feegrant.pb.dart';
import 'package:qadena_alan/proto/cosmos/feegrant/v1beta1/tx.pb.dart';
import 'package:qadena_alan/proto/qadena/qadena/query.pb.dart';
import 'package:qadena_alan/qadena.dart';
import 'package:qadena_alan/qadena/core/client/msg/qadena/create_wallet.dart';
import 'package:qadena_alan/qadena/core/client/msg/qadena/register_authorized_signatory.dart';
import 'package:qadena_alan/qadena/core/client/msg/qadena/sign_document.dart';
import 'package:qadena_alan/qadena/core/client/msg/qadena/claim_credentials.dart';
import 'package:qadena_alan/qadena/core/client/query/export.dart';
import 'package:qadena_alan/qadena/core/client/query/qadena_query.dart';
import 'package:qadena_alan/qadena/types/hdpath.dart';
import 'package:hex/hex.dart';
import 'package:protobuf/protobuf.dart';



class WalletResponse {
  final String address;
  final Uint8List addressBytes;
  final String algo;
  final Uint8List privkey;
  final String privkeyHex;
  final Uint8List pubkey;
  final String pubkeyHex;
  final String pubkeyB64;

  WalletResponse({
    required this.address,
    required this.addressBytes,
    required this.algo,
    required this.privkey,
    required this.privkeyHex,
    required this.pubkey,
    required this.pubkeyHex,
    required this.pubkeyB64
  });
}

WalletResponse toWallet(alan.Wallet wallet) {
  return WalletResponse(
    address: wallet.bech32Address,
    addressBytes: Uint8List.fromList(wallet.address),
    algo: 'secp256k1',
    privkey: Uint8List.fromList(wallet.privateKey),
    privkeyHex: HEX.encode(wallet.privateKey),
    pubkey: Uint8List.fromList(wallet.publicKey),
    pubkeyHex: HEX.encode(wallet.publicKey),
    pubkeyB64: base64Encode(wallet.publicKey),
  );
}

final networkInfo = alan.NetworkInfo.fromSingleHost(
    bech32Hrp: 'qadena', host: 'localhost', isEthSecP256K1Addr: false);

class QadenaHDWallet {
  final Chain chain;
  final List<String> seed;
  final int ephIndex;
  late final alan.Wallet txAcct;
  late final alan.Wallet cxAcct;
  late final alan.Wallet pioneerAcct;
  late final alan.Wallet sponsorAcct;
  late final WalletResponse sponsorWallet;
  late final WalletResponse transactionWallet;
  late final WalletResponse credentialWallet;
  late final String transactionWalletAddress;
  late final String transactionPublicKey;
  late final String credentialWalletAddress;
  late final String credentialPublicKey;
  late final String homePioneerID;
  late final String serviceProviderID;

  QadenaHDWallet(this.chain, this.seed, this.ephIndex, this.homePioneerID, this.serviceProviderID) {
    final txpath = HDPath(walletType: AccountType.transactionWalletType.value, addressIdx: ephIndex).toString();
    print("txpath: $txpath");
    final cxpath = HDPath(walletType: AccountType.credentialWalletType.value, addressIdx: ephIndex).toString();
    txAcct = alan.Wallet.derive(seed, networkInfo, derivationPath: txpath);
    cxAcct = alan.Wallet.derive(seed, networkInfo, derivationPath: cxpath);

    // HARD-CODED FOR NOW!!! THERE SHOULD BE AN APPSVR ENDPONT THAT DOES THE FEEGRANT 
    sponsorAcct = alan.Wallet.derive(
        "guilt decline utility scale crash envelope snap table dress coach tray use detect success lemon fatigue surround project warfare victory mean midnight address before"
            .split(' '),
        networkInfo,
        derivationPath: "m/44'/744'/0'/0/0");


    sponsorWallet = toWallet(sponsorAcct);
    transactionWallet = toWallet(txAcct);
    credentialWallet = toWallet(cxAcct);
    transactionWalletAddress = transactionWallet.address;
    credentialWalletAddress = credentialWallet.address;
    transactionPublicKey = transactionWallet.pubkeyHex;
    credentialPublicKey = credentialWallet.pubkeyHex;
  }

  Future<Int64> getSequenceNumber(alan.Wallet wallet) async {
    final account = await chain.authQuery.authQuerier.getAccountData(wallet.bech32Address);
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

  // return a pair of (success bool, retry bool)
  Future<Pair<bool, bool>> checkTxResponse(alan.TxSender txSender, alan.TxResponse response, alan.Wallet wallet, Int64 oldSequence) async{
    if (!response.isSuccessful) {
      if (response.codespace == 'sdk' && (response.code == ErrWrongSequence || response.code == ErrTxInMempoolCache)) {
        return Pair(false, true);
      }
      return Pair(false, false);
    }

    // Loop 8 times
    for (int tryCount = 8; tryCount > 0; tryCount--) {
      try {
        final output = await txSender.checkTx(response);

        if (output.isSuccessful) {
          return Pair(true, false);
        } else {
          print("Transaction failed: $response.txhash, Code: ${output.code}, Log: ${output.rawLog}");
          return Pair(false, false);
        }
      } catch (e) {
        print("exception: $e");
        if (tryCount == 1) {
          print("Error querying transaction: $e");
          return Pair(false, false);
        } else {
          print("sleep start");
          await Future.delayed(Duration(milliseconds: 750));
          print("sleep end");

        }
      }
    }
    return Pair(false, false);
  }

  // returns true if the sequence changed by more than 1 (meaning there many simultaneous transactions from this wallet), false otherwise; also returns true if we didn't detect a change
  Future<bool> waitForSequenceChange(alan.Wallet wallet, Int64 oldSequence) async {
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

  Future<bool> broadcastTxSync(alan.Wallet signingWallet, List<GeneratedMessage> msgs) async {
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
      // create and sign the message, assign seq
      final tx = await signer.createAndSign(
        signingWallet,
        msgs,
        accountSequence: oldSequence
      );

      final broadcstResponse = await txSender.broadcastTx(tx);
      var response = await checkTxResponse(txSender, broadcstResponse, signingWallet, oldSequence);
      final success = response.first;
      shouldRetry = response.second;
      
      if (shouldRetry) {
        await Future.delayed(timeouts[maxTries]);
        final newBackoff = await waitForSequenceChange(signingWallet, oldSequence);
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

  Future<bool> feeGrant() async {
    final basicAllowance = BasicAllowance.create();

    final allowance = AllowedMsgAllowance.create();
    allowance.allowance = alan.Any(
      typeUrl: '/cosmos.feegrant.v1beta1.BasicAllowance',
      value: basicAllowance.writeToBuffer(),
    );
    allowance.allowedMessages.addAll([
      '/qadena.qadena.MsgAddPublicKey',
    ]);

    final msg = MsgGrantAllowance.create();
    msg.grantee = transactionWallet.address;
    msg.granter = sponsorWallet.address;
    msg.allowance = alan.Any(
      typeUrl: '/cosmos.feegrant.v1beta1.AllowedMsgAllowance',
      value: allowance.writeToBuffer(),
    );

    final response = await broadcastTxSync(sponsorAcct, [msg]);

    print("feegrant msg: $msg");
    if (response) {
      print('Tx sent successfully. Response: $response');

      return true;
    }

    print('Tx errored: $response');
    return false;
  }

  Future<bool> walletExists() async {
    try {
      final wallet =await chain.qadenaQuery.queryClient.wallet(QueryGetWalletRequest(
        walletID: transactionWallet.address
      ));
      print("wallet already exists: $wallet");
      return true;
    } catch (e) {
      print("wallet not found");
      return false;
    }
  }

  Future<bool> registerWallet() async {
    final isEphemeral = ephIndex > 0;
    dynamic acceptCredentialTypes;
    dynamic requireSenderCredentialTypes;

    print('seed: ${seed.join(' ')}');
    print('txAddress: ${transactionWallet.address}');
    print('cxAddress: ${credentialWallet.address}');

    WalletResponse? realWalletTransaction;

    if (isEphemeral) {
      final realWalletTransactionPath = HDPath(walletType: AccountType.transactionWalletType.value, addressIdx: 0).toString();
      final realWalletTransactionAccount = alan.Wallet.derive(seed, networkInfo, derivationPath: realWalletTransactionPath);

      realWalletTransaction = toWallet(realWalletTransactionAccount);
    }

    final msgs = await msgCreateWallet(MsgCreateWalletArgs(
      chain: chain,
      cxwallet: credentialWallet,
      homePioneerID: homePioneerID,
      txwallet: transactionWallet,
      acceptCredentialTypes: acceptCredentialTypes,
      acceptPassword: null,
      isEphemeral: isEphemeral,
      requireSenderCredentialTypes: requireSenderCredentialTypes,
      incentives: () async => await getIncentives(chain),
      serviceProviderID: serviceProviderID,
      realWallet: realWalletTransaction,
    ));

    print('msgs: $msgs');

    final response = await broadcastTxSync(txAcct, msgs);

    if (response) {
      print('Tx sent successfully. Response: $response');
      return true;
    }

    print('Tx errored: $response');
    return false;
  }

  Future<bool> registerAuthorizedSignatory() async {
    final isEphemeral = ephIndex > 0;
    WalletResponse? realWalletTransaction;
    WalletResponse? realWalletCredential;
    alan.Wallet? realWalletTransactionAccount;
    if (!isEphemeral) {
      print("can only register authorized signatory for ephemeral wallets");
      return false;
    } else {
      final realWalletTransactionPath = HDPath(walletType: AccountType.transactionWalletType.value, addressIdx: 0).toString();
      realWalletTransactionAccount = alan.Wallet.derive(seed, networkInfo, derivationPath: realWalletTransactionPath);

      realWalletTransaction = toWallet(realWalletTransactionAccount);

      final realWalletCredentialPath = HDPath(walletType: AccountType.credentialWalletType.value, addressIdx: 0).toString();
      final realWalletCredentialAccount = alan.Wallet.derive(seed, networkInfo, derivationPath: realWalletCredentialPath);

      realWalletCredential = toWallet(realWalletCredentialAccount);

    }

    final msgs = await msgRegisterAuthorizedSignatory(MsgRegisterAuthorizedSignatoryArgs(
      chain: chain,
      txwallet: transactionWallet,
      realWalletTransaction: realWalletTransaction,
      realWalletCredential: realWalletCredential,
    ));

    final response = await broadcastTxSync(realWalletTransactionAccount, msgs);

    if (response) {
      print('Tx sent successfully. Response: $response');
      return true;
    }

    print('Tx errored: $response');

  
    return false;
  }

Future<bool> signDocument(String document, String hashHex, String newHashHex) async {
    final isEphemeral = ephIndex > 0;
    WalletResponse? realWalletTransaction;
    WalletResponse? realWalletCredential;
    alan.Wallet? realWalletTransactionAccount;
    if (!isEphemeral) {
      print("can only sign a document from an ephemeral wallets");
      return false;
    } else {
      final realWalletTransactionPath = HDPath(walletType: AccountType.transactionWalletType.value, addressIdx: 0).toString();
      realWalletTransactionAccount = alan.Wallet.derive(seed, networkInfo, derivationPath: realWalletTransactionPath);

      realWalletTransaction = toWallet(realWalletTransactionAccount);

      final realWalletCredentialPath = HDPath(walletType: AccountType.credentialWalletType.value, addressIdx: 0).toString();
      final realWalletCredentialAccount = alan.Wallet.derive(seed, networkInfo, derivationPath: realWalletCredentialPath);

      realWalletCredential = toWallet(realWalletCredentialAccount);

    }

    final msgs = await msgSignDocument(MsgSignDocumentArgs(
      chain: chain,
      txwallet: transactionWallet,
      cxwallet: credentialWallet,
      realWalletTransaction: realWalletTransaction,
      realWalletCredential: realWalletCredential,
      document: document,
      hashHex: hashHex,
      newHashHex: newHashHex
    ));

    print("msgs: $msgs");

    final response = await broadcastTxSync(txAcct, msgs);

    if (response) {
      print('Tx sent successfully. Response: $response');
      return true;
    }
    print('Tx errored: $response');
    return false;
  }


Future<bool> claimCredentials(BigInt claimAmount, BigInt claimBlindingFactor, {bool recoverKey = false}) async {
    final isEphemeral = ephIndex > 0;

    if (isEphemeral) {
      print("can only claim credentials from a real wallet");
      return false;
    }

    final msgs = await msgClaimCredentials(MsgClaimCredentialsArgs(
      chain: chain,
      txwallet: transactionWallet,
      cxwallet: credentialWallet,
      claimAmount: claimAmount,
      claimBlindingFactor: claimBlindingFactor,
      recoverKey: recoverKey
    ));

    print("msgs: $msgs");

    final response = await broadcastTxSync(txAcct, msgs);

    if (response) {
      print('Tx sent successfully. Response: $response');
      return true;
    }

    print('Tx errored: $response');
  
    return false;
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
}
