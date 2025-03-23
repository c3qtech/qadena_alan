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
import 'package:qadena_alan/proto/qadena/dsvs/export.dart' as dsvs;
import 'package:qadena_alan/qadena/common.dart' as c;

class MsgSignDocumentArgs {
  final Chain chain;
  final WalletResponse txwallet;
  final WalletResponse cxwallet;
  final WalletResponse realWalletTransaction;
  final WalletResponse realWalletCredential;
  final String document;
  final String hashHex;
  final String newHashHex;

  MsgSignDocumentArgs({
    required this.chain,
    required this.txwallet,
    required this.cxwallet,
    required this.realWalletTransaction,
    required this.realWalletCredential,
    required this.document,
    required this.hashHex,
    required this.newHashHex

  });
}

BigInt hash(String input) {
  return BigInt.parse(hex.encode(SHA256Digest().process(Uint8List.fromList(utf8.encode(input)))) , radix: 16);
}

Future<List<GeneratedMessage>> msgSignDocument(
    MsgSignDocumentArgs args) async {
 
  // Resolve argEphWalletID
  final ephWalletID = args.txwallet.address;

  QueryGetWalletResponse? srcWallet;
  final realWalletAddress = args.realWalletTransaction!.address;
  try {
   srcWallet = await args.chain.qadenaQuery.queryClient.wallet(QueryGetWalletRequest(
      walletID: realWalletAddress
    ));
  } catch (e) {
    print("wallet not found $args");
    return [];
  }

  final emailCredential = await args.chain.qadenaQuery.queryClient
    .credential(QueryGetCredentialRequest(
    credentialID: srcWallet.wallet.credentialID,
    credentialType: EmailContactCredentialType));

  final unprotoVShareBindEmail = unprotoizeVShareBindData(
        emailCredential.credential.credentialInfoVShareBind);

  var emailContact = EncryptableSingleContactInfo.create();
  vShareBDecryptAndProtoUnmarshal(
        args.realWalletCredential!.privkeyHex,
        args.realWalletCredential!.pubkeyB64,
        unprotoVShareBindEmail,
        Uint8List.fromList(emailCredential.credential.encCredentialInfoVShare),
        emailContact);
  print("email: $emailContact");

  final phoneCredential = await args.chain.qadenaQuery.queryClient
    .credential(QueryGetCredentialRequest(
    credentialID: srcWallet.wallet.credentialID,
    credentialType: PhoneContactCredentialType));

  final unprotoVShareBindPhone = unprotoizeVShareBindData(
        phoneCredential.credential.credentialInfoVShareBind);

  var phoneContact = EncryptableSingleContactInfo.create();
  vShareBDecryptAndProtoUnmarshal(
        args.realWalletCredential!.privkeyHex,
        args.realWalletCredential!.pubkeyB64,
        unprotoVShareBindPhone,
        Uint8List.fromList(phoneCredential.credential.encCredentialInfoVShare),
        phoneContact);
  print("phone: $phoneContact");

  List<VSharePubKInfo> ccPubK = [
    VSharePubKInfo(pubK:  args.cxwallet.pubkeyB64, nodeID: "", nodeType: ""),
  ];

  ccPubK = await clientAppendRequiredChainCCPubK(args.chain, ccPubK, "", false);
  ccPubK = await clientAppendRequiredServiceProvidersCCPubK(args.chain, ccPubK, srcWallet.wallet.serviceProviderID, [DSVSServiceProvider]);

  // EncryptableSignator
  final encryptableSignatory = EncryptableSignatory()
    ..nonce = c.nonce()
    ..email = emailContact.details.contact
    ..phoneNumber = phoneContact.details.contact;

  vshare.VShareBindData bind =
      vshare.VShareBindData.fromEmpty();
  final encryptedSignatory = protoMarshalAndVShareBEncrypt(ccPubK, encryptableSignatory, bind);
  print("encryptedSignatory: $encryptedSignatory");

    if (!vShareBVerifyAll(bind, encryptedSignatory!)) {
    throw Exception("Failed to verify bind");
  }

  final protoizedVShareBind = dsvsProtoizeVShareBindData(bind);

  final vShareSignatory = dsvs.VShareSignatory()
    ..encSignatoryVShare = encryptedSignatory
    ..signatoryVShareBind = protoizedVShareBind;

  print("signing address: ${args.txwallet.address}");

  // sign document
  final msgSD = dsvs.MsgSignDocument()
    ..creator = args.txwallet.address
    ..completedSignatory = vShareSignatory
    ..currentHash = hex.decode(args.hashHex)
    ..hash = hex.decode(args.newHashHex);

  return [msgSD];
}
