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
import 'package:qadena_alan/qadena/common.dart' as common;
import 'package:qadena_alan/qadena/core/client/msg/qadena/common.dart';
import 'package:grpc/grpc.dart';


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
  final WalletResponse? mainWallet;
  final WalletAmountRef? mainWalletQadenaWalletAmount;

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
    required this.mainWallet,
    this.mainWalletQadenaWalletAmount,
  });
}

Future<List<GeneratedMessage>> msgCreateWallet(
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

  if (common.DebugFull) {
    print("tmsg: $tmsg");
    print("cmsg: $cmsg");
  }

  final txID = common.txid();
  final nonce = common.nonce();

  // isEphemeral
  final isEphemeral = args.isEphemeral;

  final dstEWalletID = EncryptableCreateWalletEWalletID.create();
  dstEWalletID.nonce = nonce;
  dstEWalletID.walletID = fromAddr;

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

  var mainWalletQadenaWalletAmount = args.mainWalletQadenaWalletAmount;

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

    if (mainWalletQadenaWalletAmount == null || mainWalletQadenaWalletAmount.value == null) {
      final linkToWallet =
        await args.chain.qadenaQuery.queryClient.wallet(
          QueryGetWalletRequest(walletID: args.mainWallet!.address),
          options: CallOptions(timeout: Duration(seconds: 4)),
        );

      if (linkToWallet.wallet.walletAmount.containsKey(QadenaTokenDenom)) {
        mainWalletQadenaWalletAmount!.value = linkToWallet.wallet.walletAmount[QadenaTokenDenom];
      } else {
        throw Exception('Wallet amount not found');
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
              args.mainWallet!.privkeyHex,
              args.mainWallet!.pubkeyB64,
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
        if (common.DebugFull) {
          print("verified: $verified");
        }
      }


    }

    // var wa c.WalletAmount
    var ewa = EncryptableWalletAmount.create();
    var unprotoWalletAmountVShareBind = unprotoizeVShareBindData(
        mainWalletQadenaWalletAmount.value!.walletAmountVShareBind);

    if (common.DebugFull) {
      print("privkeyHex: ${args.mainWallet!.privkeyHex}");
      print("pubkeyB64: ${args.mainWallet!.pubkeyB64}");
      print("unprotoWalletAmountVShareBind: $unprotoWalletAmountVShareBind");
    }

    final success = vShareBDecryptAndProtoUnmarshal(
        args.mainWallet!.privkeyHex,
        args.mainWallet!.pubkeyB64,
        unprotoWalletAmountVShareBind,
        Uint8List.fromList(
            mainWalletQadenaWalletAmount.value!.encWalletAmountVShare),
        ewa);
    if (!success) {
      throw Exception('Failed to decrypt wallet amount');
    }
    if (common.DebugFull) {
      print("decrypted wallet amount: $ewa");
    }

    final hashPC = PedersenCommit(hashString(fromAddr), BigInt.parse('0'));

    // final cwExtraParms EncryptableC
    final cwExtraParms = EncryptableCreateWalletEWalletIDExtraParms.create();
    cwExtraParms.proofPC = protoizeBPedersenCommit(
        addPedersenCommitNoMaxCheck(
            unprotoizeEncryptablePedersenCommit(ewa.pedersenCommit),
            hashPC)!);
    dstEWalletID.extraParms = cwExtraParms;

    

    //serviceProviderIDs = linkToWallet.wallet.serviceProviderID;

    dstEWalletID.walletID = args.mainWallet!.address;

    if ((args.acceptPassword ?? '').trim().isNotEmpty) {
      senderOptions.add(RequirePasswordSenderOption);
      acceptPasswordPC = PedersenCommit(hashString(args.acceptPassword), hashString(fromAddr));
      protoAcceptPasswordPC = protoizeBPedersenCommit(acceptPasswordPC);
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
  vShareCreateWallet.dstEWalletID = dstEWalletID;

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

  if (mainWalletQadenaWalletAmount != null) {
    WalletAmount walletAmount = WalletAmount.create();
    walletAmount.walletAmountPedersenCommit = protoizeBPedersenCommit(walletAmountPC);
    walletAmount.encWalletAmountVShare = encWalletAmountVShare as List<int>;
    walletAmount.walletAmountVShareBind = protoizeVShareBindData(encWalletAmountVShareBind);
    mainWalletQadenaWalletAmount.value = walletAmount;
  }

  return [tmsg, cmsg, msgCW];
}
