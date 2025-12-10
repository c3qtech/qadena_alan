import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:convert/convert.dart';
import 'package:grpc/grpc.dart';
import 'package:pointycastle/digests/sha256.dart';
import 'package:protobuf/protobuf.dart';
import 'package:qadena_alan/proto/qadena/nameservice/query.pb.dart';
import 'package:qadena_alan/proto/qadena/qadena/export.dart' as types;
import 'package:qadena_alan/proto/qadena/dsvs/export.dart' as dsvstypes;
import 'package:qadena_alan/qadena.dart';
import 'package:hex/hex.dart';
import 'package:pointycastle/ecc/api.dart';
import 'package:qadena_alan/qadena/core/client/query/export.dart' as qadena;

import 'package:tuple/tuple.dart';

class StringRef {
  String value;
  StringRef(this.value);
}


enum AccountType {
  transactionWalletType(0),
  credentialWalletType(1);

  final int value;
  const AccountType(this.value);

  static AccountType fromValue(int value) {
    return AccountType.values.firstWhere((e) => e.value == value);
  }
}

class RecoverKeyResponse {
  final String? seed;
  final String? errorMessage;

  RecoverKeyResponse({this.seed, this.errorMessage});
}

const String QadenaTokenDenom  = "qdn";
const String AQadenaTokenDenom = "aqdn";
const String USDFiatDenom      = "usd";
const String AttoUSDFiatDenom  = "atto-usd";

// Credential Types
const String PersonalInfoCredentialType = "personal-info";
const String FirstNamePersonalInfoCredentialType = "first-name-$PersonalInfoCredentialType";
const String MiddleNamePersonalInfoCredentialType = "middle-name-$PersonalInfoCredentialType";
const String LastNamePersonalInfoCredentialType = "last-name-$PersonalInfoCredentialType";
const String PhoneContactCredentialType = "phone-contact-info";
const String EmailContactCredentialType = "email-contact-info";

// Options
const String AcceptOption = "accept-";
const String RequireSenderOption = "require-sender-";

// Sender Options
const String RequirePasswordSenderOption = "require-password";
const String AcceptFirstNamePersonalInfoSenderOption = "${AcceptOption}${FirstNamePersonalInfoCredentialType}";
const String AcceptMiddleNamePersonalInfoSenderOption = "${AcceptOption}${MiddleNamePersonalInfoCredentialType}";
const String AcceptLastNamePersonalInfoSenderOption = "${AcceptOption}${LastNamePersonalInfoCredentialType}";
const String RequireSenderFirstNamePersonalInfoSenderOption = "${RequireSenderOption}${FirstNamePersonalInfoCredentialType}";
const String RequireSenderMiddleNamePersonalInfoSenderOption = "${RequireSenderOption}${MiddleNamePersonalInfoCredentialType}";
const String RequireSenderLastNamePersonalInfoSenderOption = "${RequireSenderOption}${LastNamePersonalInfoCredentialType}";

const String PioneerNodeType = "pioneer";
const String JarNodeType = "jar";
const String AnonymizerNodeType = "anonymizer";
const String SSNodeType = "ss";
const String TreasuryNodeType = "treasury";
const String RegulatorNodeType = "regulator";
const String ServiceProviderNodeType = "srv-prv";

// Node IDs
const String SSNodeID = "ss";
const String TreasuryNodeID = "treasury";

const String IdentityServiceProvider = "identity";
const String DSVSServiceProvider = "dsvs";
const String FinanceServiceProvider = "finance";

// PubKTypes
const String CredentialPubKType = "credential";
const String TransactionPubKType = "transaction";
const String EnclavePubKType = "enclave";

const bool Debug = true;
const bool DebugFull = false;

String nonce() {
  final random = Random();
  final nonceValue = random.nextInt(1000);
  return "nonce-$nonceValue";
}

String txid() {
  final random = Random();
  final txidValue = random.nextInt(1000);
  return "tx-$txidValue";
}

BigInt hashString(String input) {
  return BigInt.parse(hex.encode(SHA256Digest().process(Uint8List.fromList(utf8.encode(input)))) , radix: 16);
}

String hashStringHex(String input) {
  return hex.encode(SHA256Digest().process(Uint8List.fromList(utf8.encode(input))));
}

BigInt hashUint8List(Uint8List input) {
  return BigInt.parse(hex.encode(SHA256Digest().process(input)) , radix: 16);
}

  /// Helper method to find a sub-wallet by credential
  Future<String> clientFindSubWallet(qadena.Chain chain, String credential, String credentialType) async {
    final nameBinding = await chain.nameServiceQuery.queryClient.nameBinding(
      QueryGetNameBindingRequest(credential: credential, credentialType: credentialType),
      options: CallOptions(timeout: Duration(seconds: 4)),
    );
    return nameBinding.nameBinding.address;
  }

  /// Helper method to get public key for a wallet
  Future<String> clientGetPublicKey(qadena.Chain chain, String walletID, String pubKType) async {
    final params = types.QueryGetPublicKeyRequest(
      pubKID: walletID,
      pubKType: pubKType,
    );
    final res = await chain.qadenaQuery.queryClient.publicKey(params);
    return res.publicKey.pubK;
  }


Future<Tuple3<String, String, String>> clientGetIntervalPublicKey(
    qadena.Chain chain, String intervalNodeID, String intervalNodeType) async {
  // Create a new query client
  final queryClient = chain.qadenaQuery.queryClient;

  if (Debug) {
    print("getIntervalPublicKey: $intervalNodeID, $intervalNodeType");
  }

  // Prepare the request parameters
  final params = types.QueryGetIntervalPublicKeyIDRequest(
    nodeID: intervalNodeID,
    nodeType: intervalNodeType,
  );

  // Call the query client method
  final res = await queryClient.intervalPublicKeyID(params);

  final publicKeyId = res.intervalPublicKeyID;

  if (Debug) {
    print("publicKeyId: $publicKeyId");
  }
  
  // Prepare the second request parameters
  final params2 = types.QueryGetPublicKeyRequest(
    pubKID: publicKeyId.pubKID,
    pubKType: TransactionPubKType,
  );

  // Call the query client method for public key
  final res2 = await queryClient.publicKey(params2);

  // Return the results
  return Tuple3(publicKeyId.pubKID, res2.publicKey.pubK, res.intervalPublicKeyID.serviceProviderType);
}

Future<String> clientGetJarForPioneer(qadena.Chain chain, String pioneerID) async {
  final queryClient = chain.qadenaQuery.queryClient;

  if (Debug) {
    print("getJarForPioneer: $pioneerID");
  }

  final params = types.QueryGetPioneerJarRequest(
    pioneerID: pioneerID,
  );

  final res = await queryClient.pioneerJar(params);

  return res.pioneerJar.jarID;
}

Future<List<VSharePubKInfo>> clientAppendRequiredChainCCPubK(
    qadena.Chain chain, List<VSharePubKInfo> ccPubK, String pioneerID, bool excludeSSIntervalPubK) async {
  if (excludeSSIntervalPubK && pioneerID.isEmpty) {
    print("Logic error");
    throw Exception("Logic error");
  }

  if (!excludeSSIntervalPubK) {
    final ss_pubKID_pubK_serviceProviderType = await clientGetIntervalPublicKey(chain, SSNodeID, SSNodeType);

    ccPubK.add(VSharePubKInfo(
      pubK: ss_pubKID_pubK_serviceProviderType.item2,
      nodeID: SSNodeID,
      nodeType: SSNodeType,
    ));

    if (Debug) {
      print("ss_pubKID_pubK_serviceProviderType: $ss_pubKID_pubK_serviceProviderType");
    }
  }

  if (pioneerID.isNotEmpty) {
    final jarID = await clientGetJarForPioneer(chain, pioneerID);

    if (Debug) {
      print("jarID: $jarID");
    }

    final jar_pubKID_pubK_serviceProviderType = await clientGetIntervalPublicKey(chain, jarID, JarNodeType);

    if (Debug) {
      print("jar_pubKID_pubK_serviceProviderType: $jar_pubKID_pubK_serviceProviderType");
    }

    ccPubK.add(VSharePubKInfo(
      pubK: jar_pubKID_pubK_serviceProviderType.item2,
      nodeID: jarID,
      nodeType: JarNodeType,
    ));
  }

  return ccPubK;
}

Future<List<VSharePubKInfo>> clientAppendOptionalServiceProvidersCCPubK(
    qadena.Chain chain, List<VSharePubKInfo> ccPubK, List<String> serviceProviderID, List<String> optionalServiceProviderType) async {
  for (var id in serviceProviderID) {
    final sp_pubKID_pubK_serviceProviderType = await clientGetIntervalPublicKey(chain, id, ServiceProviderNodeType);

    final pubK = sp_pubKID_pubK_serviceProviderType.item2;
    final serviceProviderType = sp_pubKID_pubK_serviceProviderType.item3;

    for (var type in optionalServiceProviderType) {
      if (serviceProviderType == type) {
        ccPubK.add(VSharePubKInfo(
          pubK: pubK,
          nodeID: id,
          nodeType: ServiceProviderNodeType,
        ));
      }
    }
  }

  return ccPubK;
}

Future<List<VSharePubKInfo>> clientAppendRequiredServiceProvidersCCPubK(
    qadena.Chain chain, List<VSharePubKInfo> ccPubK, List<String> serviceProviderID, List<String> requiredServiceProviderType) async {
  List<bool> foundRequiredServiceProviderType = List.filled(requiredServiceProviderType.length, false);

  for (var id in serviceProviderID) {
    final sp_pubKID_pubK_serviceProviderType = await clientGetIntervalPublicKey(chain, id, ServiceProviderNodeType);

    final pubK = sp_pubKID_pubK_serviceProviderType.item2;
    final serviceProviderType = sp_pubKID_pubK_serviceProviderType.item3;

    for (var j = 0; j < requiredServiceProviderType.length; j++) {
      if (serviceProviderType == requiredServiceProviderType[j]) {
        foundRequiredServiceProviderType[j] = true;
        ccPubK.add(VSharePubKInfo(
          pubK: pubK,
          nodeID: id,
          nodeType: ServiceProviderNodeType,
        ));
      }
    }
  }

  for (var i = 0; i < foundRequiredServiceProviderType.length; i++) {
    if (!foundRequiredServiceProviderType[i]) {
      throw Exception("Required service provider type ${requiredServiceProviderType[i]} not found");
    }
  }

  return ccPubK;
}

Uint8List? protoMarshalAndBEncrypt(
    String pubK, GeneratedMessage v) {
  // Serialize the protobuf message
  Uint8List vBytes = v.writeToBuffer();

  final cipherText = bEncrypt(pubK, vBytes);

  return cipherText;
}


Uint8List? protoMarshalAndVShareBEncrypt(
    List<VSharePubKInfo> ccPubK, GeneratedMessage v, VShareBindData bindData) {
  // Serialize the protobuf message
  Uint8List vBytes = v.writeToBuffer();

  // Generate shared secrets
  List<VSharedSecret> sharedSecrets = List.generate(2, (i) {
    VSharedSecret secret = generateVSharedSecret();
    // Print shared secret
    if (DebugFull) {
      print("S1: $i, ${secret.s1}");
      print("S2: $i, ${secret.s2}");
    }
    return secret;
  });

  // Combine shared secret bytes
  Uint8List sharedSecretBytes = Uint8List.fromList(
    sharedSecrets[0].s1.getEncoded(true).sublist(1) +
        sharedSecrets[1].s1.getEncoded(true).sublist(1),
  );

  // Ensure the combined length is 64
  if (sharedSecretBytes.length != 64) {
    return null;
  }

  if (DebugFull) {
    print("sharedSecretBytes: ${hex.encode(sharedSecretBytes)}");
  }

  final sharedSecretHash = SHA256Digest().process(sharedSecretBytes);

  if (DebugFull) {
    print("sharedSecretHash: ${hex.encode(sharedSecretHash)}");
  }

  // Encrypt the serialized protobuf message
  Uint8List cipherText = sharedSecretEncrypt(sharedSecretHash, vBytes);

  if (DebugFull) {
    print("ciphertext encrypted hex: ${hex.encode(cipherText)}");
  }

  // Populate bindData
  for (int i = 0; i < 2; i++) {
    VShareBindDataInternal bindDataInternal =
        newVShareBindData(cipherText, sharedSecrets[i], ccPubK);

    bindData.data!.add(bindDataInternal);
  }

  return cipherText;
}

bool vShareBDecryptAndProtoUnmarshal(String priv, String pubK,
    VShareBindData bindData, Uint8List encrypted, GeneratedMessage v) {
  if (priv == "") {
    return false;
  }

  var privkhex = priv;

  if (priv.endsWith('_privk')) {
    // Strip the pubkid from the beginning
    List<String> split = priv.split('_privkhex:');

    if (split.length != 2) {
      if (Debug) {
        print('invalid priv key: $priv');
      }
      return false;
    }

    priv = split[0];

    privkhex = split[0];
  }

  final privk = ECPrivateKey(
      BigInt.parse(privkhex, radix: 16), ECDomainParameters('secp256k1'));

  pubK = pubK.replaceAll('_pubk', '');
  final pubkbytes = base64.decode(pubK);
  final y = ecPointFromBytes(pubkbytes);

  final encryptedSharedSecrets = List<VSharedSecret>.generate(
      bindData.data!.length,
      (_) =>
          VSharedSecret(ecPedersen!.zeroECPoint(), ecPedersen!.zeroECPoint()));

  for (var i = 0; i < bindData.data!.length; i++) {
    if (y == bindData.data![i].y.ecPoint) {
      encryptedSharedSecrets[i] = bindData.data![i].r;
    } else {
      for (var j = 0; j < bindData.data![i].cc.length; j++) {
        if (y == bindData.data![i].cc[j].ecPoint) {
          encryptedSharedSecrets[i] = bindData.data![i].r_[j];
          break;
        }
      }
    }
    if (encryptedSharedSecrets[i].s1 == ecPedersen!.zeroECPoint() ||
        encryptedSharedSecrets[i].s2 == ecPedersen!.zeroECPoint()) {
      return false;
    }
  }

  final sharedSecrets = List<VSharedSecret>.generate(
      bindData.data!.length,
      (_) =>
          VSharedSecret(ecPedersen!.zeroECPoint(), ecPedersen!.zeroECPoint()));

  for (var i = 0; i < bindData.data!.length; i++) {
    final cx = safeMultECPointBigInt(bindData.data![i].c, privk.d!);
    sharedSecrets[i] = VSharedSecret((encryptedSharedSecrets[i].s1 - cx!)!,
        (encryptedSharedSecrets[i].s2 - cx)!);
  }

  final sharedSecretBytes = Uint8List.fromList([
    ...sharedSecrets[0].s1.getEncoded(true).sublist(1),
    ...sharedSecrets[1].s1.getEncoded(true).sublist(1)
  ]);

  final sharedSecretHash = SHA256Digest().process(sharedSecretBytes);

  final plainText = sharedSecretDecrypt(sharedSecretHash, encrypted);
  if (plainText == null) {
    return false;
  }

  v.mergeFromBuffer(plainText);

  return true;
}

bool bDecryptAndProtoUnmarshal(
    String priv, Uint8List encrypted, GeneratedMessage v) {
  if (priv == "") {
    return false;
  }

  Uint8List j = bDecrypt(priv, encrypted);

  if (j.isEmpty) {
    return false;
  }

  v.mergeFromBuffer(j);

  return true;
}

types.VShareBindData protoizeVShareBindData(VShareBindData bindData) {
  types.VShareBindData protoBindData = types.VShareBindData.create();

  for (int i = 0; i < bindData.data!.length; i++) {
    protoBindData.data.add(protoizeVShareBindDataInternal(bindData.data![i]));
  }

  return protoBindData;
}


dsvstypes.VShareBindData dsvsProtoizeVShareBindData(VShareBindData bindData) {
  dsvstypes.VShareBindData protoBindData = dsvstypes.VShareBindData.create();

  for (int i = 0; i < bindData.data!.length; i++) {
    protoBindData.data.add(dsvsProtoizeVShareBindDataInternal(bindData.data![i]));
  }

  return protoBindData;
}

VShareBindData dsvsUnprotoizeVShareBindData(dsvstypes.VShareBindData protoBindData) {
  List<VShareBindDataInternal> bd = [];
  var ret = VShareBindData(bd);
 
  for (int i = 0; i < protoBindData.data.length; i++) {
    bd.add(dsvsUnprotoizeVShareBindDataInternal(protoBindData.data[i]));
  }

  return ret;
}



VShareBindData unprotoizeVShareBindData(types.VShareBindData protoBindData) {
  List<VShareBindDataInternal> bd = [];
  var ret = VShareBindData(bd);

  for (int i = 0; i < protoBindData.data.length; i++) {
    bd.add(unprotoizeVShareBindDataInternal(protoBindData.data[i]));
  }

  return ret;
}

types.VShareBindDataInternal protoizeVShareBindDataInternal(
    VShareBindDataInternal bindData) {
  var protoBindData = types.VShareBindDataInternal.create();
  protoBindData.w = protoizeBInt(bindData.w);
  protoBindData.z = protoizeBInt(bindData.z);
  protoBindData.c = protoizeBECPoint(bindData.c);
  protoBindData.y = protoizeBECPointInfo(bindData.y);
  for (int i = 0; i < bindData.cc.length; i++) {
    protoBindData.cc.add(protoizeBECPointInfo(bindData.cc[i]));
  }
  protoBindData.r = protoizeBVSharedSecret(bindData.r);
  for (int i = 0; i < bindData.r_.length; i++) {
    protoBindData.rr.add(protoizeBVSharedSecret(bindData.r_[i]));
  }
  return protoBindData;
}

dsvstypes.VShareBindDataInternal dsvsProtoizeVShareBindDataInternal(
    VShareBindDataInternal bindData) {
  var protoBindData = dsvstypes.VShareBindDataInternal.create();
  protoBindData.w = dsvsProtoizeBInt(bindData.w);
  protoBindData.z = dsvsProtoizeBInt(bindData.z);
  protoBindData.c = dsvsProtoizeBECPoint(bindData.c);
  protoBindData.y = dsvsProtoizeBECPointInfo(bindData.y);
  for (int i = 0; i < bindData.cc.length; i++) {
    protoBindData.cc.add(dsvsProtoizeBECPointInfo(bindData.cc[i]));
  }
  protoBindData.r = dsvsProtoizeBVSharedSecret(bindData.r);
  for (int i = 0; i < bindData.r_.length; i++) {
    protoBindData.rr.add(dsvsProtoizeBVSharedSecret(bindData.r_[i]));
  }
  return protoBindData;
}

VShareBindDataInternal dsvsUnprotoizeVShareBindDataInternal(
    dsvstypes.VShareBindDataInternal protoBindData) {
  List<VSharedSecret> r_ = [];
  List<ECPointInfo> cc = [];

  for (int i = 0; i < protoBindData.rr.length; i++) {
    r_.add(dsvsUnprotoizeBVSharedSecret(protoBindData.rr[i]));
  }

  for (int i = 0; i < protoBindData.cc.length; i++) {
    cc.add(dsvsUnprotoizeBECPointInfo(protoBindData.cc[i]));
  }

  var ret = VShareBindDataInternal(
      dsvsUnprotoizeBInt(protoBindData.w),
      dsvsUnprotoizeBInt(protoBindData.z),
      ecPointFromBytes(Uint8List.fromList(protoBindData.c.compressed)),
      dsvsUnprotoizeBECPointInfo(protoBindData.y),
      cc,
      dsvsUnprotoizeBVSharedSecret(protoBindData.r),
      r_);

  return ret;
}



VShareBindDataInternal unprotoizeVShareBindDataInternal(
    types.VShareBindDataInternal protoBindData) {
  List<VSharedSecret> r_ = [];
  List<ECPointInfo> cc = [];

  for (int i = 0; i < protoBindData.rr.length; i++) {
    r_.add(unprotoizeBVSharedSecret(protoBindData.rr[i]));
  }

  for (int i = 0; i < protoBindData.cc.length; i++) {
    cc.add(unprotoizeBECPointInfo(protoBindData.cc[i]));
  }

  var ret = VShareBindDataInternal(
      unprotoizeBInt(protoBindData.w),
      unprotoizeBInt(protoBindData.z),
      ecPointFromBytes(Uint8List.fromList(protoBindData.c.compressed)),
      unprotoizeBECPointInfo(protoBindData.y),
      cc,
      unprotoizeBVSharedSecret(protoBindData.r),
      r_);

  return ret;
}

types.BVSharedSecret protoizeBVSharedSecret(VSharedSecret vss) {
  var protoVSS = types.BVSharedSecret.create();
  protoVSS.s1 = protoizeBECPoint(vss.s1);
  protoVSS.s2 = protoizeBECPoint(vss.s2);
  return protoVSS;
}

dsvstypes.BVSharedSecret dsvsProtoizeBVSharedSecret(VSharedSecret vss) {
  var protoVSS = dsvstypes.BVSharedSecret.create();
  protoVSS.s1 = dsvsProtoizeBECPoint(vss.s1);
  protoVSS.s2 = dsvsProtoizeBECPoint(vss.s2);
  return protoVSS;
}

VSharedSecret dsvsUnprotoizeBVSharedSecret(dsvstypes.BVSharedSecret vss) {
  var ret = VSharedSecret(dsvsUnprotoizeBECPoint(vss.s1),
      ecPointFromBytes(Uint8List.fromList(vss.s2.compressed)));
  return ret;
}

VSharedSecret unprotoizeBVSharedSecret(types.BVSharedSecret vss) {
  var ret = VSharedSecret(unprotoizeBECPoint(vss.s1),
      ecPointFromBytes(Uint8List.fromList(vss.s2.compressed)));
  return ret;
}

BigInt dsvsUnprotoizeBInt(dsvstypes.BInt bi) {
  // create hex of bi.i starting at index 1
  final sub = bi.i.sublist(1);
  final hex = HEX.encode(sub);

  final b = BigInt.parse(hex, radix: 16);
  if (bi.i[0] == 1) {
    return -b;
  }
  return b;
}

BigInt unprotoizeBInt(types.BInt bi) {
  // create hex of bi.i starting at index 1
  final sub = bi.i.sublist(1);
  final hex = HEX.encode(sub);

  final b = BigInt.parse(hex, radix: 16);
  if (bi.i[0] == 1) {
    return -b;
  }
  return b;
}

types.BInt protoizeBInt(BigInt b) {
  var bi = types.BInt.create();
  // make a growable list of bytes
  List<int> growableList = [];
  if (b < BigInt.zero) {
    growableList.add(1);
  } else {
    growableList.add(0);
  }

  final hex = b.abs().toRadixString(16);
  growableList.addAll(HEX.decode(hex));
  bi.i = growableList;
  return bi;
}

dsvstypes.BInt dsvsProtoizeBInt(BigInt b) {
  var bi = dsvstypes.BInt.create();
  // make a growable list of bytes
  List<int> growableList = [];
  if (b < BigInt.zero) {
    growableList.add(1);
  } else {
    growableList.add(0);
  }

  final hex = b.abs().toRadixString(16);
  growableList.addAll(HEX.decode(hex));
  bi.i = growableList;
  return bi;
}


types.BECPoint protoizeBECPoint(ECPoint point) {
  var bytes = point.getEncoded(true); // get encoded compressed bytes
  var ret = types.BECPoint.create();
  ret.compressed = bytes;
  return ret;
}

dsvstypes.BECPoint dsvsProtoizeBECPoint(ECPoint point) {
  var bytes = point.getEncoded(true); // get encoded compressed bytes
  var ret = dsvstypes.BECPoint.create();
  ret.compressed = bytes;
  return ret;
}

ECPoint dsvsUnprotoizeBECPoint(dsvstypes.BECPoint point) {
  return ecPointFromBytes(Uint8List.fromList(point.compressed));
}

ECPoint unprotoizeBECPoint(types.BECPoint point) {
  return ecPointFromBytes(Uint8List.fromList(point.compressed));
}

types.BPedersenCommit protoizeBPedersenCommit(PedersenCommit pc) {
  var ret = types.BPedersenCommit.create();
  ret.c = protoizeBECPoint(pc.C!);
  return ret;
}

PedersenCommit unprotoizeBPedersenCommit(types.BPedersenCommit protoPC) {
  final ret = PedersenCommit.fromCommitment(unprotoizeBECPoint(protoPC.c));
  return ret;
}

types.EncryptablePedersenCommit protoizeEncryptablePedersenCommit(
    PedersenCommit pc) {
  var ret = types.EncryptablePedersenCommit.create();
  ret.a = protoizeBInt(pc.A!);
  ret.x = protoizeBInt(pc.X!);
  return ret;
}

PedersenCommit unprotoizeEncryptablePedersenCommit(
    types.EncryptablePedersenCommit protoPC) {
  final ret =
      PedersenCommit(unprotoizeBInt(protoPC.a), unprotoizeBInt(protoPC.x));
  return ret;
}

ECPointInfo dsvsUnprotoizeBECPointInfo(dsvstypes.BECPointInfo becPointInfo) {
  var ecPointInfo = ECPointInfo(dsvsUnprotoizeBECPoint(becPointInfo.eCPoint),
      becPointInfo.nodeType, becPointInfo.nodeID);
  return ecPointInfo;
}

ECPointInfo unprotoizeBECPointInfo(types.BECPointInfo becPointInfo) {
  var ecPointInfo = ECPointInfo(unprotoizeBECPoint(becPointInfo.eCPoint),
      becPointInfo.nodeType, becPointInfo.nodeID);
  return ecPointInfo;
}

types.BECPointInfo protoizeBECPointInfo(ECPointInfo ecPointInfo) {
  var becPointInfo = types.BECPointInfo.create();
  becPointInfo.eCPoint = protoizeBECPoint(ecPointInfo.ecPoint);
  becPointInfo.nodeType = ecPointInfo.nodeType;
  becPointInfo.nodeID = ecPointInfo.nodeID;
  return becPointInfo;
}

dsvstypes.BECPointInfo dsvsProtoizeBECPointInfo(ECPointInfo ecPointInfo) {
  var becPointInfo = dsvstypes.BECPointInfo.create();
  becPointInfo.eCPoint = dsvsProtoizeBECPoint(ecPointInfo.ecPoint);
  becPointInfo.nodeType = ecPointInfo.nodeType;
  becPointInfo.nodeID = ecPointInfo.nodeID;
  return becPointInfo;
}

