import 'dart:convert';
import 'dart:typed_data';

import 'package:fixnum/src/int64.dart';
import 'package:qadena_alan/alan.dart' as alan;
import 'package:qadena_alan/proto/cosmos/bank/v1beta1/query.pb.dart';
import 'package:qadena_alan/proto/cosmos/base/abci/v1beta1/abci.pb.dart';
import 'package:qadena_alan/proto/cosmos/base/v1beta1/coin.pb.dart';
import 'package:qadena_alan/proto/cosmos/feegrant/v1beta1/feegrant.pb.dart';
import 'package:qadena_alan/proto/cosmos/feegrant/v1beta1/tx.pb.dart';
import 'package:qadena_alan/proto/cosmos/tx/v1beta1/tx.pb.dart';
import 'package:qadena_alan/proto/qadena/qadena/query.pb.dart';
import 'package:qadena_alan/proto/qadena/dsvs/query.pb.dart';
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
import 'package:qadena_alan/proto/qadena/qadena/export.dart';
import 'package:grpc/grpc.dart';
import 'package:qadena_alan/qadena/types/qadena_client_tx.dart';


class WalletResponse {
  final String address;
  final Uint8List addressBytes;
  final String algo;
  final Uint8List privkey;
  final String privkeyHex;
  final Uint8List pubkey;
  final String pubkeyHex;
  final String pubkeyB64;

  WalletResponse(
      {required this.address,
      required this.addressBytes,
      required this.algo,
      required this.privkey,
      required this.privkeyHex,
      required this.pubkey,
      required this.pubkeyHex,
      required this.pubkeyB64});
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

class QadenaHDWallet {
  final Chain chain;
  final alan.NetworkInfo networkInfo;
  final List<String> seed;
  final int ephIndex;
  late final alan.Wallet txAcct;
  late final alan.Wallet cxAcct;
  late final alan.Wallet pioneerAcct;
  late final alan.Wallet sponsorAcct;
  late final WalletResponse sponsorWallet;
  late final WalletResponse transactionWallet;
  late final WalletResponse credentialWallet;
  late final String transactionPublicKey;
  late final String credentialWalletAddress;
  late final String credentialPublicKey;
  final double gasMultiplier = 1.2;
  final Int64 gasPrice = Int64(500000000); // in config.yml of chain

  String get transactionWalletAddress => transactionWallet.address;

  QadenaHDWallet(this.chain, this.networkInfo, this.seed, this.ephIndex) {
    final txpath = HDPath(
            walletType: AccountType.transactionWalletType.value,
            addressIdx: ephIndex)
        .toString();
    print("txpath: $txpath");
    final cxpath = HDPath(
            walletType: AccountType.credentialWalletType.value,
            addressIdx: ephIndex)
        .toString();
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
    credentialWalletAddress = credentialWallet.address;
    transactionPublicKey = transactionWallet.pubkeyHex;
    credentialPublicKey = credentialWallet.pubkeyHex;
  }

  Future<String?> feeGrant() async {
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
    msg.grantee = transactionWallet.address;
    msg.granter = sponsorWallet.address;
    msg.allowance = alan.Any(
      typeUrl: '/cosmos.feegrant.v1beta1.AllowedMsgAllowance',
      value: allowance.writeToBuffer(),
    );

    final response = await QadenaClientTx.broadcastTx(sponsorAcct, [msg]);

    print("feegrant msg: $msg");
    if (response == null) {
      print('Tx sent successfully');

      return null;
    }

    print('Tx errored: $response');
    return response;
  }

  Future<bool> walletExists() async {
    try {
      final wallet = await chain.qadenaQuery.queryClient
          .wallet(QueryGetWalletRequest(walletID: transactionWallet.address));
      print("wallet already exists: $wallet");
      return true;
    } catch (e) {
      print("wallet not found");
      return false;
    }
  }

  Future<String> getAuthorizedSignatory() async {
    try {
      final signatories =await chain.dsvsQuery.queryClient.authorizedSignatory(QueryGetAuthorizedSignatoryRequest(
        walletID: transactionWallet.address
      ));
      print("signatories: $signatories");
      if (signatories.authorizedSignatory.signatory.isEmpty) {
        return "";
      }
      // decrypt the last one

      final lastSignatory = signatories.authorizedSignatory.signatory.last;

      final authorizedSignatory = EncryptableAuthorizedSignatory();

      var unprotoAuthorizedSignatoryVShareBind = dsvsUnprotoizeVShareBindData(
          lastSignatory.authorizedSignatoryVShareBind);

      vShareBDecryptAndProtoUnmarshal(
          credentialWallet.privkeyHex,
          credentialWallet.pubkeyB64,
          unprotoAuthorizedSignatoryVShareBind,
      Uint8List.fromList(lastSignatory.encAuthorizedSignatoryVShare), 
      authorizedSignatory);

  print('signatory: $authorizedSignatory');

      return authorizedSignatory.walletID;
    } catch (e) {
      print("signatories not found");
      return "";
    }
  }

  Future<String?> registerWallet(String pioneerID, String serviceProviderID) async {
    final isEphemeral = ephIndex > 0;
    dynamic acceptCredentialTypes;
    dynamic requireSenderCredentialTypes;

    print('seed: ${seed.join(' ')}');
    print('txAddress: ${transactionWallet.address}');
    print('cxAddress: ${credentialWallet.address}');

    WalletResponse? realWalletTransaction; // this is the main wallet (index 0)

    if (isEphemeral) {
      final realWalletTransactionPath = HDPath(
              walletType: AccountType.transactionWalletType.value,
              addressIdx: 0)
          .toString();
      final realWalletTransactionAccount = alan.Wallet.derive(seed, networkInfo,
          derivationPath: realWalletTransactionPath);

      realWalletTransaction = toWallet(realWalletTransactionAccount);
    }

    final msgs = await msgCreateWallet(MsgCreateWalletArgs(
      chain: chain,
      cxwallet: credentialWallet,
      homePioneerID: pioneerID,
      txwallet: transactionWallet,
      acceptCredentialTypes: acceptCredentialTypes,
      acceptPassword: null,
      isEphemeral: isEphemeral,
      requireSenderCredentialTypes: requireSenderCredentialTypes,
      incentives: () async => await getIncentives(chain),
      serviceProviderID: serviceProviderID,
      mainWallet: realWalletTransaction,
    ));

    print('msgs: $msgs');

    final response = await QadenaClientTx.broadcastTx(txAcct, msgs, feeGranter: sponsorWallet.address);

    if (response == null) {
      print('Tx sent successfully');
      return null;
    }

    print('Tx errored: $response');
    return response;
  }

  

  Future<String?> registerAuthorizedSignatory() async {
    final isEphemeral = ephIndex > 0;
    WalletResponse? realWalletTransaction; // this is the main wallet (index 0)
    WalletResponse? realWalletCredential;
    alan.Wallet? realWalletTransactionAccount;
    if (!isEphemeral) {
      print("can only register authorized signatory for ephemeral wallets");
      return "NOT_EPHEMERAL";
    } else {
      final realWalletTransactionPath = HDPath(
              walletType: AccountType.transactionWalletType.value,
              addressIdx: 0)
          .toString();
      realWalletTransactionAccount = alan.Wallet.derive(seed, networkInfo,
          derivationPath: realWalletTransactionPath);

      realWalletTransaction = toWallet(realWalletTransactionAccount);

      final realWalletCredentialPath = HDPath(
              walletType: AccountType.credentialWalletType.value, addressIdx: 0)
          .toString();
      final realWalletCredentialAccount = alan.Wallet.derive(seed, networkInfo,
          derivationPath: realWalletCredentialPath);

      realWalletCredential = toWallet(realWalletCredentialAccount);
    }

    final msgs =
        await msgRegisterAuthorizedSignatory(MsgRegisterAuthorizedSignatoryArgs(
      chain: chain,
      txwallet: transactionWallet,
      realWalletTransaction: realWalletTransaction,
      realWalletCredential: realWalletCredential,
    ));

    final response = await QadenaClientTx.broadcastTx(realWalletTransactionAccount, msgs);

    if (response == null) {
      print('Tx sent successfully');
      return null;
    }

    print('Tx errored: $response');

    return response;
  }

  Future<String?> signDocument(
      String document, String hashHex, String newHashHex) async {
    final isEphemeral = ephIndex > 0;
    WalletResponse? realWalletTransaction; // this is the main wallet (index 0)
    WalletResponse? realWalletCredential;
    alan.Wallet? realWalletTransactionAccount;
    if (!isEphemeral) {
      print("can only sign a document from an ephemeral wallets");
      return "NOT_EPHEMERAL";
    } else {
      final realWalletTransactionPath = HDPath(
              walletType: AccountType.transactionWalletType.value,
              addressIdx: 0)
          .toString();
      realWalletTransactionAccount = alan.Wallet.derive(seed, networkInfo,
          derivationPath: realWalletTransactionPath);

      realWalletTransaction = toWallet(realWalletTransactionAccount);

      final realWalletCredentialPath = HDPath(
              walletType: AccountType.credentialWalletType.value, addressIdx: 0)
          .toString();
      final realWalletCredentialAccount = alan.Wallet.derive(seed, networkInfo,
          derivationPath: realWalletCredentialPath);

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
        newHashHex: newHashHex));

    print("msgs: $msgs");

    final response = await QadenaClientTx.broadcastTx(txAcct, msgs);

    if (response == null) {
      print('Tx sent successfully');
      return null;
    }
    print('Tx errored: $response');
    return response;
  }

  Future<String?> claimCredentials(BigInt claimAmount, BigInt claimBlindingFactor,
      {bool recoverKey = false}) async {
    final isEphemeral = ephIndex > 0;

    if (isEphemeral) {
      print("can only claim credentials from a real wallet");
      return "NOT_EPHEMERAL";
    }

    final msgs = await msgClaimCredentials(MsgClaimCredentialsArgs(
        chain: chain,
        txwallet: transactionWallet,
        cxwallet: credentialWallet,
        claimAmount: claimAmount,
        claimBlindingFactor: claimBlindingFactor,
        recoverKey: recoverKey));

    print("msgs: $msgs");

    final response = await QadenaClientTx.broadcastTx(txAcct, msgs);

    if (response == null) {
      print('Tx sent successfully');
      return null;
    }

    print('Tx errored: $response');

    return response;
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
