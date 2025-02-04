import 'dart:convert';
import 'dart:typed_data';

import 'package:blockchain_utils/hex/hex.dart';
import 'package:pointycastle/digests/sha256.dart';
import 'package:protobuf/protobuf.dart';
import 'package:qadena_alan/proto/qadena/qadena/export.dart';
import 'package:qadena_alan/qadena.dart';
import 'package:qadena_alan/qadena/core/client/query/export.dart';
import 'package:qadena_alan/qadena/core/client/query/qadena_query.dart';
import 'package:qadena_alan/qadena/types/qadena_hd_wallet.dart';
import 'package:qadena_alan/qadena/vshare.dart' as vshare;
import 'package:qadena_alan/qadena/common.dart' as c;

class MsgCreateWalletArgs {
  final Chain chain;
  final WalletResponse cxwallet;
  final String homePioneerID;
  final WalletResponse txwallet;
  final List<String>? acceptCredentialTypes;
  final dynamic? acceptPassword;
  final bool isEphemeral;
  final List<String>? requireSenderCredentialTypes;
  final Future<Map<String, Incentive>> Function() incentives;
  final String serviceProviderID;
  final WalletResponse? realWallet;

  MsgCreateWalletArgs({
    required this.chain,
    required this.cxwallet,
    required this.homePioneerID,
    required this.txwallet,
    this.acceptCredentialTypes,
    this.acceptPassword,
    required this.isEphemeral,
    this.requireSenderCredentialTypes,
    required this.incentives,
    required this.serviceProviderID,
    required this.realWallet,
  });
}

BigInt hash(String input) {
  return BigInt.parse(hex.encode(SHA256Digest().process(Uint8List.fromList(utf8.encode(input)))) , radix: 16);
}

Future<List<GeneratedMessage>> msgCreateAccount(
    MsgCreateWalletArgs args) async {
  // check if there are incentives
  final incentives = await args.incentives();

  // transaction wallet
  final fromAddr = args.txwallet.address;
  final fromPubk = args.txwallet.pubkeyB64;
  var tmsg = MsgAddPublicKey.create();
  tmsg.creator = fromAddr;
  tmsg.pubKType = 'transaction';
  tmsg.pubK = fromPubk;

  // credential wallet
  final fromPubKCredential = args.cxwallet.pubkeyB64;
  var cmsg = MsgAddPublicKey.create();
  cmsg.creator = fromAddr;
  cmsg.pubKType = 'credential';
  cmsg.pubK = fromPubKCredential;

  print("tmsg: $tmsg");
  print("cmsg: $cmsg");

  final txID = c.txid();
  final nonce = c.nonce();

  // isEphemeral
  final isEphemeral = args.isEphemeral;

  final dstEWalletIDr = EncryptableCreateWalletEWalletID.create();
  dstEWalletIDr.nonce = nonce;
  dstEWalletIDr.walletID = fromAddr;

  PedersenCommit walletAmountPC;
  PedersenCommit transparentWalletAmountPC;
  PedersenCommit acceptPasswordPC;
  BPedersenCommit? protoAcceptPasswordPC;
  Uint8List? encAcceptValidatedCredentialsVShare;
  vshare.VShareBindData acceptValidatedCredentialsVShareBind =
      vshare.VShareBindData.fromEmpty();
  final senderOptions = <String>[];

  List<String> serviceProviderIDs = [];
  if (args.serviceProviderID.isNotEmpty) {
    // append to serviceProviderID
    serviceProviderIDs.add(args.serviceProviderID);
  }

  if (isEphemeral) {
    
    // set up all the wallet amounts
    walletAmountPC = PedersenCommit(
        BigInt.parse(
            incentives['createEphemeralWallet']?.amount.toString() ?? '0'),
        randomNumber256());
    transparentWalletAmountPC = PedersenCommit(
        BigInt.parse(
            incentives['createEphemeralWalletTransparent']?.amount.toString() ??
                '0'),
        randomNumber256());

    // WE NEED TO PROVE THAT THE ONE WHO CREATED THE EPH WALLET HAS A KEY TO THE REAL WALLET!
    final linkToWallet =
        await args.chain.qadenaQuery.queryClient.wallet(QueryGetWalletRequest(
      walletID: args.realWallet!.address
    ));

    serviceProviderIDs = linkToWallet.wallet.serviceProviderID;

    dstEWalletIDr.walletID = args.realWallet!.address;

    if (linkToWallet.wallet.walletAmount.containsKey(QadenaTokenDenom)) {
      // var wa c.WalletAmount
      var ewa = EncryptableWalletAmount.create();
      var unprotoWalletAmountVShareBind = unprotoizeVShareBindData(
          linkToWallet.wallet.walletAmount[QadenaTokenDenom]!.walletAmountVShareBind);

      vShareBDecryptAndProtoUnmarshal(
          args.realWallet!.privkeyHex,
          args.realWallet!.pubkeyB64,
          unprotoWalletAmountVShareBind,
          Uint8List.fromList(
              linkToWallet.wallet.walletAmount[QadenaTokenDenom]!
                  .encWalletAmountVShare),
          ewa);
      print("decrypted wallet amount: $ewa");

      final hashPC = PedersenCommit(hash(fromAddr), BigInt.parse('0'));

      // final cwExtraParms EncryptableC
      final cwExtraParms = EncryptableCreateWalletEWalletIDExtraParms.create();
      cwExtraParms.proofPC = protoizeBPedersenCommit(
          addPedersenCommitNoMaxCheck(
              unprotoizeEncryptablePedersenCommit(ewa.pedersenCommit),
              hashPC)!);
      dstEWalletIDr.extraParms = cwExtraParms;
    }

    if ((args.acceptPassword ?? '').trim().isNotEmpty) {
      senderOptions.add(RequirePasswordSenderOption);
      acceptPasswordPC = PedersenCommit(hash(args.acceptPassword), hash(fromAddr));
      protoAcceptPasswordPC = protoizeBPedersenCommit(acceptPasswordPC);
    }

    // require sender to put in this wallet's credential
    final acts = args.acceptCredentialTypes ?? [];
    if (acts.isNotEmpty) {
      final validatedCredentials = EncryptableValidatedCredential.create();
      for (var type in acts) {
        final credential = await args.chain.qadenaQuery.queryClient
            .credential(QueryGetCredentialRequest(
          credentialID: linkToWallet.wallet.credentialID,
          credentialType: type,
        ));

        if (senderOptions.isNotEmpty) {
          senderOptions.add(',$AcceptOption-$type');
        } else {
          senderOptions.add('$AcceptOption-$type');
        }

        final unprotoVShareBind = unprotoizeVShareBindData(
            credential.credential.credentialInfoVShareBind);

        var p = EncryptableSingleContactInfo.create();
        vShareBDecryptAndProtoUnmarshal(
            args.realWallet!.privkeyHex,
            args.realWallet!.pubkeyB64,
            unprotoVShareBind,
            Uint8List.fromList(credential.credential.encCredentialInfoVShare),
            p);

        validatedCredentials.credentialType = type;
        validatedCredentials.pIN = p.pIN;
        validatedCredentials.credentialPC =
            credential.credential.credentialPedersenCommit;
      }

      List<VSharePubKInfo> validatedCredentialsCCPubK = [
        VSharePubKInfo(
            pubK: fromPubk, nodeID: "", nodeType: "")
      ];

      validatedCredentialsCCPubK = await clientAppendRequiredChainCCPubK(
          args.chain, validatedCredentialsCCPubK, "", false);

      validatedCredentialsCCPubK = await clientAppendOptionalServiceProvidersCCPubK(
          args.chain, validatedCredentialsCCPubK, serviceProviderIDs, [FinanceServiceProvider]);

      acceptValidatedCredentialsVShareBind = vshare.VShareBindData.fromEmpty();
      encAcceptValidatedCredentialsVShare = protoMarshalAndVShareBEncrypt(
          validatedCredentialsCCPubK,
          validatedCredentials,
          acceptValidatedCredentialsVShareBind);
      final verified = vShareBVerifyAll(acceptValidatedCredentialsVShareBind,
          encAcceptValidatedCredentialsVShare!);
      print("verified: $verified");
    }

    // require sender to put in their credential
    final rscts = args.requireSenderCredentialTypes ?? [];
    if (rscts.isNotEmpty) {
      for (var type in rscts) {
        if (senderOptions.isNotEmpty) {
          senderOptions.add(',$RequireSenderOption-$type');
        } else {
          senderOptions.add('$RequireSenderOption-$type');
        }
      }
    }
  } else {
    final walletAmount =
        BigInt.parse(incentives['createWallet']?.amount.toString() ?? '0');
    final transparentWalletAmount = BigInt.parse(
        incentives['createWalletTransparent']?.amount.toString() ?? '0');
    walletAmountPC = PedersenCommit(walletAmount, randomNumber256());
    transparentWalletAmountPC =
        PedersenCommit(transparentWalletAmount, randomNumber256());
  }


  final ewa = EncryptableWalletAmount.create();
  ewa.nonce = nonce;
  ewa.transactionID = txID;
  ewa.pedersenCommit = protoizeEncryptablePedersenCommit(walletAmountPC);

  var vShareCreateWallet = EncryptableCreateWallet.create();
  vShareCreateWallet.dstEWalletID = dstEWalletIDr;

  List<VSharePubKInfo> walletAmountCCPubK = [VSharePubKInfo(pubK: fromPubk, nodeID: "", nodeType:"")];

  walletAmountCCPubK = await clientAppendOptionalServiceProvidersCCPubK(
      args.chain, walletAmountCCPubK, serviceProviderIDs, [FinanceServiceProvider]);

  var encWalletAmountVShareBind = vshare.VShareBindData.fromEmpty();
  var encWalletAmountVShare = protoMarshalAndVShareBEncrypt(
      walletAmountCCPubK, ewa, encWalletAmountVShareBind);

  List<VSharePubKInfo> createWalletCCPubK = [VSharePubKInfo(pubK: fromPubk, nodeID: "", nodeType:"")];

  createWalletCCPubK = await clientAppendRequiredChainCCPubK(
      args.chain, createWalletCCPubK, args.homePioneerID, false);

  createWalletCCPubK = await clientAppendOptionalServiceProvidersCCPubK(
      args.chain, createWalletCCPubK, serviceProviderIDs, [FinanceServiceProvider]);

  // marshal and encrypt the create wallet vshare
  var createWalletVShareBind = vshare.VShareBindData.fromEmpty();
  var encCreateWalletVShare = protoMarshalAndVShareBEncrypt(
      createWalletCCPubK, vShareCreateWallet, createWalletVShareBind);

  var protoTransparentWalletAmountPC =
      protoizeEncryptablePedersenCommit(transparentWalletAmountPC);

  var protoWalletAmountPedersenCommit =
      protoizeEncryptablePedersenCommit(walletAmountPC);

  var protoCreateWalletVShareBind =
      protoizeVShareBindData(createWalletVShareBind);

  var msgCW = MsgCreateWallet.create();

  msgCW.creator = fromAddr;
  msgCW.homePioneerID = args.homePioneerID;
  // msgCW.serviceProviderID = serviceProviderIDs; // there is no setter for this
  msgCW.encCreateWalletVShare = encCreateWalletVShare as List<int>;
  msgCW.createWalletVShareBind = protoCreateWalletVShareBind;
  msgCW.acceptPasswordPC = protoAcceptPasswordPC ?? BPedersenCommit();
  msgCW.encAcceptValidatedCredentialsVShare =
      encAcceptValidatedCredentialsVShare ?? [];
  msgCW.acceptValidatedCredentialsVShareBind =
      protoizeVShareBindData(acceptValidatedCredentialsVShareBind);
  msgCW.walletAmountPedersenCommit = protoWalletAmountPedersenCommit;
  msgCW.encWalletAmountVShare = encWalletAmountVShare as List<int>;
  msgCW.walletAmountVShareBind =
      protoizeVShareBindData(encWalletAmountVShareBind);
  msgCW.transparentWalletAmountPC = protoTransparentWalletAmountPC;
  msgCW.acceptCredentialType = senderOptions.join(',');
  msgCW.serviceProviderID.addAll(serviceProviderIDs);

  return [tmsg, cmsg, msgCW];
}
