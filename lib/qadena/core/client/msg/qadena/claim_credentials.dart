import 'dart:convert';
import 'dart:typed_data';

import 'package:blockchain_utils/hex/hex.dart';
import 'package:pointycastle/digests/sha256.dart';
import 'package:protobuf/protobuf.dart';
import 'package:qadena_alan/proto/qadena/qadena/export.dart';
import 'package:qadena_alan/qadena.dart';
import 'package:qadena_alan/qadena/core/client/query/export.dart';
import 'package:qadena_alan/qadena/types/qadena_hd_wallet.dart';
import 'package:qadena_alan/qadena/vshare.dart' as vshare;
import 'package:qadena_alan/qadena/core/client/msg/qadena/common.dart';

class StringHolder {
  String value;

  StringHolder(this.value);
}


class MsgClaimCredentialsArgs {
  final Chain chain;
  final WalletResponse txwallet;
  final WalletResponse cxwallet;
  final BigInt claimAmount;
  final BigInt claimBlindingFactor;
  final bool recoverKey;
  final WalletAmountRef? mainWalletQadenaWalletAmount;
  final List<String>? mainWalletServiceProviderID;

  MsgClaimCredentialsArgs({
    required this.chain,
    required this.txwallet,
    required this.cxwallet,
    required this.claimAmount,
    required this.claimBlindingFactor,
    required this.recoverKey,
    this.mainWalletQadenaWalletAmount,
    this.mainWalletServiceProviderID,
  });
}

Future<GeneratedMessage> createClaimContactInfoMessage (
  Chain chain,
  PedersenCommit findCredentialPC,
  String credWalletID,
  String credPubKey,
  String credType,
  GeneratedMessage contactDetails,
  String oldPin,
  String credentialHash,
  String srcWalletID,
  List<String> srcServiceProviderID,
  EncryptableWalletAmount ewa,
  bool recoverKey
) async {

  Uint8List all = contactDetails.writeToBuffer();

  final oldPinInt = BigInt.parse(oldPin, radix: 10);

  final credentialPC = PedersenCommit(hashUint8List(all), oldPinInt);

  final newPin = generateRandomBlindingFactor();

  List<VSharePubKInfo> ccPubK = [
    VSharePubKInfo(pubK: credPubKey, nodeID: "", nodeType: ""),
  ];

  ccPubK = await clientAppendRequiredChainCCPubK(chain, ccPubK, "", false);

  ccPubK = await clientAppendOptionalServiceProvidersCCPubK(chain, ccPubK, srcServiceProviderID, [FinanceServiceProvider]);

  for (var i = 0; i < ccPubK.length; i++) {
    print('ccPubK[$i]: ${ccPubK[i]}');
  }

  var credentialInfoVShareBind = vshare.VShareBindData.fromEmpty();
  Uint8List? encCredentialInfoVShare;

  if (credType == PersonalInfoCredentialType) {
    var p = EncryptablePersonalInfo.create();
    var details = EncryptablePersonalInfoDetails.create();
    details.mergeFromBuffer(all);
    p.details = details;
    p.pIN = newPin.toString();
    encCredentialInfoVShare = protoMarshalAndVShareBEncrypt(ccPubK, p, credentialInfoVShareBind);
  } else {
    var p = EncryptableSingleContactInfo.create();
    var details = EncryptableSingleContactInfoDetails.create();
    details.mergeFromBuffer(all);
    p.details = details;
    p.pIN = newPin.toString();
    encCredentialInfoVShare = protoMarshalAndVShareBEncrypt(ccPubK, p, credentialInfoVShareBind);
  }

  var walletIDVShareBind = vshare.VShareBindData.fromEmpty();
  var credentialHashVShareBind = vshare.VShareBindData.fromEmpty();

  final encWalletIDVShare = protoMarshalAndVShareBEncrypt(ccPubK, EncryptableString.create()..value = srcWalletID, walletIDVShareBind);

  print('walletIDVShareBind: ${walletIDVShareBind}');

  final encCredentialHashVShare = protoMarshalAndVShareBEncrypt(ccPubK, EncryptableString.create()..value = credentialHash, credentialHashVShareBind);

  print('credentialHashVShareBind: ${credentialHashVShareBind}');

  final newCredentialPC = PedersenCommit(hashUint8List(all), newPin);

  final walletPC = unprotoizeEncryptablePedersenCommit(ewa.pedersenCommit);
  final claimPC = addPedersenCommitNoMaxCheck(walletPC, newCredentialPC);

  final zeroPC = subPedersenCommitNoMinCheck(credentialPC, newCredentialPC);

  if (!validateSubPedersenCommit(credentialPC, newCredentialPC, zeroPC)) {
    print('Failed to validate zeroPC - credentialPC - newCredentialPC = 0');
  }

  if (validateAddPedersenCommit(walletPC, newCredentialPC, claimPC)) {
    print('validated claimPC');
  }

  final encryptableClaimCredentialExtraParms = EncryptableClaimCredentialExtraParms.create();
  encryptableClaimCredentialExtraParms.encCredentialInfoVShare = List<int>.from(encCredentialInfoVShare!);
  encryptableClaimCredentialExtraParms.credentialInfoVShareBind = protoizeVShareBindData(credentialInfoVShareBind);
  encryptableClaimCredentialExtraParms.walletID = srcWalletID;
  encryptableClaimCredentialExtraParms.encWalletIDVShare = List<int>.from(encWalletIDVShare!);
  encryptableClaimCredentialExtraParms.walletIDVShareBind = protoizeVShareBindData(walletIDVShareBind);
  encryptableClaimCredentialExtraParms.encCredentialHashVShare = List<int>.from(encCredentialHashVShare!);
  encryptableClaimCredentialExtraParms.credentialHashVShareBind = protoizeVShareBindData(credentialHashVShareBind);
  encryptableClaimCredentialExtraParms.findCredentialPC = protoizeBPedersenCommit(findCredentialPC);
  encryptableClaimCredentialExtraParms.claimPC = protoizeBPedersenCommit(claimPC!);
  encryptableClaimCredentialExtraParms.zeroPC = protoizeEncryptablePedersenCommit(zeroPC!);
  encryptableClaimCredentialExtraParms.newCredentialPC = protoizeBPedersenCommit(newCredentialPC);

  final claimCredentialExtraParmsVShareBind = vshare.VShareBindData.fromEmpty();

  final encClaimCredentialExtraParmsVShare = protoMarshalAndVShareBEncrypt(ccPubK, encryptableClaimCredentialExtraParms, claimCredentialExtraParmsVShareBind);

  final msg = MsgClaimCredential.create();

  msg.creator = srcWalletID;
  msg.credentialID = credWalletID;
  msg.credentialType = credType;
  msg.recoverKey = recoverKey;
  msg.encClaimCredentialExtraParmsVShare = List<int>.from(encClaimCredentialExtraParmsVShare!);
  msg.claimCredentialExtraParmsVShareBind = protoizeVShareBindData(claimCredentialExtraParmsVShareBind);

  return msg;
}

Future<void> queryFindCredential(
    Chain chain,
    WalletResponse cxWallet,
    PedersenCommit findCredentialPC,
    String credentialType,
    GeneratedMessage p,
    StringHolder credentialID) async {

  final credPubKey = cxWallet.pubkeyB64;

  var proofPC = PedersenCommit.fromValue(findCredentialPC.A!);
  var checkPC = subPedersenCommitNoMinCheck(findCredentialPC, proofPC);

  print('proofPC: ${proofPC}');
  print('checkPC: ${checkPC}');

  if (!validateSubPedersenCommit(findCredentialPC, proofPC, checkPC)) {
    print('Failed to validate checkPC - credentialPC - proofPC = 0');
  }

  final ss_pubKID_pubK_serviceProviderType = await clientGetIntervalPublicKey(chain, SSNodeID, SSNodeType);

  final encUserCredentialPubKIntervalSSPubK = marshalAndBEncrypt(ss_pubKID_pubK_serviceProviderType.item2, credPubKey);
  final encProofPCIntervalSSPubK = protoMarshalAndBEncrypt(ss_pubKID_pubK_serviceProviderType.item2, protoizeBPedersenCommit(proofPC));
  final encCheckPCIntervalSSPubK = protoMarshalAndBEncrypt(ss_pubKID_pubK_serviceProviderType.item2, protoizeEncryptablePedersenCommit(checkPC!));

  QueryFindCredentialRequest request = QueryFindCredentialRequest(
    credentialPC: findCredentialPC.C!.getEncoded(true),
    credentialType: credentialType,
    sSIntervalPubKID: ss_pubKID_pubK_serviceProviderType.item1,
    encUserCredentialPubKSSIntervalPubK: encUserCredentialPubKIntervalSSPubK,
    encProofPCSSIntervalPubK: encProofPCIntervalSSPubK,
    encCheckPCSSIntervalPubK: encCheckPCIntervalSSPubK,
  );

  var res = await chain.qadenaQuery.queryClient.findCredential(request);

  print('res: $res');

  bDecryptAndProtoUnmarshal(
      cxWallet.privkeyHex,
      Uint8List.fromList(res.encPersonalInfoUserCredentialPubK), 
      p);

  print('p: $p');

  final credID = bDecryptAndUnmarshal(
      cxWallet.privkeyHex,
      Uint8List.fromList(res.encCredentialIDUserCredentialPubK));

  print('credID: $credID');

  credentialID.value = credID;
}

Future<List<GeneratedMessage>> msgClaimCredentials(
    MsgClaimCredentialsArgs args) async {

  final srcWalletID = args.txwallet.address;

  final credentialPubKey = args.cxwallet.pubkeyB64;
  final credentialID = args.cxwallet.address;

  final findCredentialPC = PedersenCommit(args.claimAmount, args.claimBlindingFactor);

  print("findCredentialPC: $findCredentialPC");

  final credentialTypes = [
    PersonalInfoCredentialType,
    EmailContactCredentialType,
    PhoneContactCredentialType
  ];

  final encryptables = [
    EncryptablePersonalInfo.create(),
    EncryptableSingleContactInfo.create(),
    EncryptableSingleContactInfo.create(),
  ];

  final credentialIDs = [
    StringHolder(""),
    StringHolder(""),
    StringHolder(""),
  ];

  if (!args.recoverKey) {
    credentialTypes.add(LastNamePersonalInfoCredentialType);
    credentialTypes.add(MiddleNamePersonalInfoCredentialType);
    credentialTypes.add(FirstNamePersonalInfoCredentialType);

    encryptables.add(EncryptableSingleContactInfo.create());
    encryptables.add(EncryptableSingleContactInfo.create());
    encryptables.add(EncryptableSingleContactInfo.create());

    credentialIDs.add(StringHolder(""));
    credentialIDs.add(StringHolder(""));
    credentialIDs.add(StringHolder(""));
  }

  List<String> srcServiceProviderID = [];
  var mainWalletQadenaWalletAmount = args.mainWalletQadenaWalletAmount;

  if (args.mainWalletQadenaWalletAmount == null && args.mainWalletServiceProviderID == null) {
    final srcWallet =
        await args.chain.qadenaQuery.queryClient.wallet(QueryGetWalletRequest(
      walletID: srcWalletID
    ));

    mainWalletQadenaWalletAmount!.value = srcWallet.wallet.walletAmount[QadenaTokenDenom];
    srcServiceProviderID = args.mainWalletServiceProviderID!;
  } else {
    srcServiceProviderID = args.mainWalletServiceProviderID!;
  }

  var ewa = EncryptableWalletAmount.create();
  var unprotoWalletAmountVShareBind = unprotoizeVShareBindData(
      mainWalletQadenaWalletAmount!.value!.walletAmountVShareBind);

  vShareBDecryptAndProtoUnmarshal(
      args.txwallet!.privkeyHex,
      args.txwallet!.pubkeyB64,
      unprotoWalletAmountVShareBind,
      Uint8List.fromList(
          mainWalletQadenaWalletAmount!.value!.encWalletAmountVShare),
      ewa);
  print("decrypted wallet amount: $ewa");


  List<GeneratedMessage> msgs = [];

  for (int i = 0; i < credentialTypes.length; i++) {
    await queryFindCredential(args.chain, args.cxwallet, findCredentialPC, credentialTypes[i], encryptables[i], credentialIDs[i]);
    print("${credentialTypes[i]}: ${credentialIDs[i].value}");
    print("${encryptables[i]}");
    final credential = await args.chain.qadenaQuery.queryClient
        .credential(QueryGetCredentialRequest(
      credentialID: credentialIDs[i].value,
      credentialType: credentialTypes[i],
    ));
    print("credential: $credential");

    if (credentialTypes[i] == PersonalInfoCredentialType) {
      EncryptablePersonalInfo p = encryptables[i] as EncryptablePersonalInfo;

      final credentialHashS = "${p.details.lastName},${p.details.middleName},${p.details.firstName}|${p.details.birthdate}|${p.details.gender}";
      final credentialHash = hashStringHex(credentialHashS);

      final msg = await createClaimContactInfoMessage(
        args.chain,
        findCredentialPC,
        credentialID,
        credentialPubKey,
        credentialTypes[i],
        p.details,
        p.pIN,
        credentialHash,
        srcWalletID,
        srcServiceProviderID,
        ewa,
        false
      );
      msgs.add(msg);
    } else {
      EncryptableSingleContactInfo pSCI = encryptables[i] as EncryptableSingleContactInfo;
      final msg = await createClaimContactInfoMessage(
        args.chain,
        findCredentialPC,
        credentialID,
        credentialPubKey,
        credentialTypes[i],
        pSCI.details,
        pSCI.pIN,
        "",
        srcWalletID,
        srcServiceProviderID,
        ewa,
        false
      );

      msgs.add(msg);
    }
  }
  return msgs;
}
