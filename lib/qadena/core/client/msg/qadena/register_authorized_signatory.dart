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
import 'package:qadena_alan/proto/qadena/dsvs/export.dart' as dsvs;
import 'package:qadena_alan/qadena/common.dart' as common;
import 'package:grpc/grpc.dart';

class MsgRegisterAuthorizedSignatoryArgs {
  final Chain chain;
  final WalletResponse txwallet;
  final WalletResponse? realWalletTransaction;
  final WalletResponse? realWalletCredential;
  final List<String>? mainWalletServiceProviderID;

  MsgRegisterAuthorizedSignatoryArgs({
    required this.chain,
    required this.txwallet,

    required this.realWalletTransaction,
    required this.realWalletCredential,
    this.mainWalletServiceProviderID,
  });
}

BigInt hash(String input) {
  return BigInt.parse(hex.encode(SHA256Digest().process(Uint8List.fromList(utf8.encode(input)))) , radix: 16);
}

Future<List<GeneratedMessage>> msgRegisterAuthorizedSignatory(
    MsgRegisterAuthorizedSignatoryArgs args) async {
 
  // Resolve argEphWalletID
  final ephWalletID = args.txwallet.address;

  // EncryptableAuthorizedSignatory
  final authorizedSignatory = EncryptableAuthorizedSignatory()
    ..nonce = common.nonce()
    ..walletID = ephWalletID;

  List<String> srcServiceProviderID = [];

  if (args.mainWalletServiceProviderID != null) {
    srcServiceProviderID = args.mainWalletServiceProviderID!;
  } else {
    QueryGetWalletResponse? srcWallet;
    final realWalletAddress = args.realWalletTransaction!.address;
    try {
      srcWallet = await args.chain.qadenaQuery.queryClient.wallet(
        QueryGetWalletRequest(walletID: realWalletAddress),
        options: CallOptions(timeout: Duration(seconds: 4)),
      );
      srcServiceProviderID = srcWallet.wallet.serviceProviderID;
    } catch (e) {
      if (common.Debug) {
        print("wallet not found $args");
      }
      return [];
    }
  }

  List<VSharePubKInfo> ccPubK = [
    VSharePubKInfo(pubK:  args.realWalletCredential!.pubkeyB64, nodeID: "", nodeType: ""),
  ];

  ccPubK = await clientAppendRequiredChainCCPubK(args.chain, ccPubK, "", false);
  ccPubK = await clientAppendRequiredServiceProvidersCCPubK(args.chain, ccPubK, srcServiceProviderID, [DSVSServiceProvider]);

  vshare.VShareBindData bind =
      vshare.VShareBindData.fromEmpty();
  final encryptedDocument = protoMarshalAndVShareBEncrypt(ccPubK, authorizedSignatory, bind);
  if (common.Debug) {
    print("encryptedDocument: $encryptedDocument");
  }

  if (!vShareBVerifyAll(bind, encryptedDocument!)) {
    throw Exception("Failed to verify bind");
  }

  final protoizedVShareBind = dsvsProtoizeVShareBindData(bind);

  final vShareAuthorizedSignatory = dsvs.VShareAuthorizedSignatory()
    ..encAuthorizedSignatoryVShare = encryptedDocument
    ..authorizedSignatoryVShareBind = protoizedVShareBind;

  // Register authorized signatory
  final msgRAS = dsvs.MsgRegisterAuthorizedSignatory()
    ..creator = args.realWalletTransaction!.address
    ..vShareAuthorizedSignatory = vShareAuthorizedSignatory;

  return [msgRAS];
}
