import 'dart:typed_data';

import 'package:pointycastle/ecc/api.dart';
import 'package:protobuf/protobuf.dart';
import 'package:qadena_alan/proto/qadena/qadena/export.dart';
import 'package:qadena_alan/proto/qadena/nameservice/export.dart' as nstypes;
import 'package:qadena_alan/qadena.dart';
import 'package:qadena_alan/qadena/core/client/query/export.dart';
import 'package:qadena_alan/qadena/types/qadena_hd_wallet.dart';
import 'package:qadena_alan/qadena/common.dart' as common;
import 'package:grpc/grpc.dart';

/// Arguments for msgBindCredential function
class MsgBindCredentialArgs {
  final Chain chain;
  final WalletResponse ephtxwallet;
  final WalletResponse cxwallet;
  final String credentialType;

  MsgBindCredentialArgs({
    required this.chain,
    required this.ephtxwallet,
    required this.cxwallet,
    required this.credentialType,
  });
}

/// Protoize a PedersenCommit to nameservice BPedersenCommit
nstypes.BPedersenCommit nsProtoizeBPedersenCommit(PedersenCommit pc) {
  var ret = nstypes.BPedersenCommit.create();
  ret.c = nsProtoizeBECPoint(pc.C!);
  return ret;
}

/// Protoize an ECPoint to nameservice BECPoint
nstypes.BECPoint nsProtoizeBECPoint(ECPoint point) {
  var bytes = point.getEncoded(true); // get encoded compressed bytes
  var ret = nstypes.BECPoint.create();
  ret.compressed = bytes;
  return ret;
}

/// Creates a MsgBindCredential message based on the Go implementation.
/// 
/// This function:
/// 1. Gets the credential from the chain using credentialID (derived from cxwallet)
/// 2. Decrypts the credential info to get the PIN
/// 3. Creates a Pedersen commitment proof
/// 4. Returns a MsgBindCredential message
Future<GeneratedMessage> msgBindCredential(MsgBindCredentialArgs args) async {
  final srcWalletID = args.ephtxwallet.address;
  final credentialID = args.cxwallet.address;
  final credentialPubKey = args.cxwallet.pubkeyB64;
  final credentialPrivKeyHex = args.cxwallet.privkeyHex;

  // Construct the credential private key string (similar to Go's credPrivKey)
  final credPrivKey = '${credentialPrivKeyHex}_privkhex:${credentialPubKey}_privk';

  if (common.Debug) {
    print('srcWalletID: $srcWalletID');
    print('credentialID: $credentialID');
    print('credentialType: ${args.credentialType}');
  }

  // Get the credential from the chain
  final credentialResponse = await args.chain.qadenaQuery.queryClient.credential(
    QueryGetCredentialRequest(
      credentialID: credentialID,
      credentialType: args.credentialType,
    ),
    options: CallOptions(timeout: Duration(seconds: 4)),
  );

  final credential = credentialResponse.credential;

  if (common.Debug) {
    print('credential: $credential');
  }

  BigInt pinInt;
  Uint8List credBytes;
  String credString;

  // Decrypt credential based on type
  switch (args.credentialType) {
    case common.EmailContactCredentialType:
    case common.PhoneContactCredentialType:
      var p = EncryptableSingleContactInfo.create();
      var unprotoVShareBind = common.unprotoizeVShareBindData(credential.credentialInfoVShareBind);
      
      if (!common.vShareBDecryptAndProtoUnmarshal(
          credPrivKey,
          credentialPubKey,
          unprotoVShareBind,
          Uint8List.fromList(credential.encCredentialInfoVShare),
          p)) {
        throw Exception('Failed to decrypt credential info');
      }

      if (common.Debug) {
        print('${args.credentialType}: $p');
      }

      // Parse PIN as BigInt
      try {
        pinInt = BigInt.parse(p.pIN, radix: 10);
      } catch (e) {
        throw Exception('PIN not numerical: ${p.pIN}');
      }

      credBytes = p.details.writeToBuffer();
      credString = p.details.contact;
      break;

    default:
      throw Exception('Unrecognized credential-type: ${args.credentialType}');
  }

  if (common.Debug) {
    print('credBytes: $credBytes');
    print('credString: $credString');
  }

  // Hash the credential bytes
  final hashInt = hashUint8List(credBytes);

  if (common.Debug) {
    print('hash of credBytes: $hashInt');
  }

  // Create Pedersen commitments
  final pinPC = PedersenCommit(hashInt, pinInt);
  final pc = PedersenCommit(hashInt, BigInt.zero);
  var proofPC = subPedersenCommitNoMinCheck(pc, pinPC);

  if (common.Debug) {
    print('pc: $pc');
    print('pinPC: $pinPC');
    print('proofPC: $proofPC');
  }

  if (validateSubPedersenCommit(pc, pinPC, proofPC)) {
    if (common.Debug) {
      print('validated proofPC');
    }
  }

  // Clear A and X values (similar to Go's DebugAmounts check)
  // In production, we don't want to expose these values
  proofPC = PedersenCommit.fromCommitment(proofPC!.C!);

  // Protoize the proof Pedersen commit for nameservice
  final protoProofPC = nsProtoizeBPedersenCommit(proofPC);

  // Create the MsgBindCredential message
  final msg = nstypes.MsgBindCredential.create();
  msg.creator = srcWalletID;
  msg.credentialType = args.credentialType;
  msg.credentialInfo = credString;
  msg.credentialPedersenCommit = protoProofPC;

  if (common.Debug) {
    print('msg: $msg');
  }

  return msg;
}

