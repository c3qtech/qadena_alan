import 'dart:convert';
import 'dart:typed_data';
import 'dart:math';
import 'package:pointycastle/export.dart';
import 'package:convert/convert.dart';
import 'ecpedersen.dart';
import 'encrypt.dart';
import 'common.dart' as common;

var testVShareEncryption = false;

class VSharedSecret {
  ECPoint s1;
  ECPoint s2;

  VSharedSecret(this.s1, this.s2);
}

class VSharePubKInfo {
  String pubK;
  String nodeID;
  String nodeType;

  VSharePubKInfo({required this.pubK, required this.nodeID, required this.nodeType});
  String toString() {
    return 'pubK: $pubK, nodeID: $nodeID, nodeType: $nodeType';
  }
}

class BulkVShare {
  String pubK;
  List<String> ccPubK;
  List<VSharedSecret> vSharedSecrets;
  Uint8List sharedSecretHash;
  Digest hash;

  BulkVShare(this.pubK, this.ccPubK, this.vSharedSecrets, this.sharedSecretHash,
      this.hash);
}

class VShareBindData {
  List<VShareBindDataInternal>? data;

  VShareBindData(this.data);

  VShareBindData.fromEmpty() {
    data = [];
  }

  @override
  String toString() {
    return 'data: $data';
  }
}

class VShareBindDataInternal {
  BigInt w;
  BigInt z;
  ECPoint c;
  ECPointInfo y;
  List<ECPointInfo> cc;
  VSharedSecret r;
  List<VSharedSecret> r_;

  VShareBindDataInternal(
      this.w, this.z, this.c, this.y, this.cc, this.r, this.r_);

  @override
  String toString() {
    return 'w: $w\nz: $z\nc: $c\ny: $y\ncc: $cc\nr: $r\nr_: $r_';
  }
}

ECPoint ecPointFromBytes(Uint8List bytes) {
  ECPoint point = ecPedersen!.curve.decodePoint(bytes)!;
  return point;
}

// like a random number
Uint8List generateSharedSecret() {
  var ephKeyPair = (KeyGenerator("EC")
        ..init(
            ParametersWithRandom(ECKeyGeneratorParameters(domainParams), rnd)))
      .generateKeyPair();

  ECPrivateKey privateKey = ephKeyPair.privateKey as ECPrivateKey;

  if (testVShareEncryption) {
    return hex.decode(
            "5321d8cd34c5b255977f2af43dc69011f6fffb6cde44a487912b31bde6a7aabf")
        as Uint8List;
  }

  Uint8List privateKeyBytes = bigIntToByteArray(privateKey.d!);

  return privateKeyBytes;
}

VSharedSecret generateVSharedSecret() {
  // init array of 2 shared secrets
  List<ECPoint> ecPoints =
      List<ECPoint>.filled(2, newECPoint(BigInt.zero, BigInt.zero));

  if (testVShareEncryption) {
    final s1 = newECPoint(
        BigInt.parse(
            "97368617487603714092414532914124097846147079533749946779008061592908669241131"),
        BigInt.parse(
            "38012604707558131976206218819154704038994600591102383397891123254401931774169"));
    final s2 = newECPoint(
        BigInt.parse(
            "10933688225293634337800930413737356245078722676670001755825505019306063008595"),
        BigInt.parse(
            "29026341325685103236884838969810081548457453006295014773090950353179945034432"));
    return VSharedSecret(s1, s2);
  }

  // generate 2 shared secrets
  for (var i = 0; i < 2; i++) {
    var ephKeyPair = (KeyGenerator("EC")
          ..init(ParametersWithRandom(
              ECKeyGeneratorParameters(domainParams), rnd)))
        .generateKeyPair();

    ECPublicKey publicKey = ephKeyPair.publicKey as ECPublicKey;

    if (common.DebugFull) {
      print('$i publicKey: ${publicKey.Q}');
    }

    // create ECPoint
    ecPoints[i] = publicKey.Q!;
  }

  return VSharedSecret(ecPoints[0], ecPoints[1]);
}

Uint8List sharedSecretEncrypt(Uint8List sharedSecret, Uint8List msg) {
  // Create a buffer to hold the ciphertext
  BytesBuilder ct = BytesBuilder();

  // Generate a random nonce
  var nonce = Uint8List(16);
  final random = Random.secure();
  for (int i = 0; i < nonce.length; i++) {
    nonce[i] = random.nextInt(256);
  }

  if (testVShareEncryption) {
    nonce = hex.decode("8bb59c1d6e8a3f47e3eec29d901f897a") as Uint8List;
  }

  ct.add(nonce);

  // Initialize the AES GCM cipher
  final cipher = GCMBlockCipher(AESEngine())
    ..init(true,
        AEADParameters(KeyParameter(sharedSecret), 128, nonce, Uint8List(0)));

  // Encrypt the message
  Uint8List ciphertext = cipher.process(msg);

  // Extract the tag from the ciphertext
  final tag = ciphertext.sublist(ciphertext.length - 16);
  ct.add(tag);

  // Remove the tag from the ciphertext
  ciphertext = ciphertext.sublist(0, ciphertext.length - 16);
  ct.add(ciphertext);

  return ct.toBytes();
}

Uint8List? sharedSecretDecrypt(Uint8List ss, Uint8List msg) {
  // Ensure the message length is valid
  if (msg.length <= (16 + 16)) {
    print("Invalid length of message");
    return null;
  }

  // Extract nonce and tag
  Uint8List nonce = msg.sublist(0, 16);
  Uint8List tag = msg.sublist(16, 32);

  // Combine ciphertext and tag
  Uint8List ciphertext = Uint8List.fromList(msg.sublist(32) + tag);

  try {
    // Create AES block cipher
    final aes = AESFastEngine();
    final keyParam = KeyParameter(ss);
    final gcmBlockCipher = GCMBlockCipher(aes);
    final gcmParams = AEADParameters(keyParam, 128, nonce, Uint8List(0));
    
    gcmBlockCipher.init(false, gcmParams); // false for decryption

    // Decrypt
    return gcmBlockCipher.process(ciphertext);
  } catch (e) {
    print("Decryption failed: $e");
    return null;
  }
}

VShareBindDataInternal newVShareBindData(
    Uint8List encrypted, VSharedSecret s, List<VSharePubKInfo> ccPubK) {
  final k = generateSharedSecret();
  final j = generateSharedSecret();

  var dstPubK = ccPubK[0];
  ccPubK = ccPubK.sublist(1);

  dstPubK.pubK = dstPubK.pubK.replaceAll('_pubk', '');
  final pubkbytes = base64.decode(dstPubK.pubK);
  final tmpy = ecPointFromBytes(pubkbytes);

  if (common.DebugFull) {
    print('tmpy is $tmpy');
  }

  if (common.DebugFull) {
    print('BaseG is ${ecPedersen!.BaseG()}');
  }

  var y = ECPointInfo(tmpy, dstPubK.nodeID, dstPubK.nodeType);

  final c = safeMultECPointBigInt(
      ecPedersen!.BaseG(), BigInt.parse(hex.encode(k), radix: 16));

  if (common.DebugFull) {
    print('c is $c');
  }

  final d = safeMultECPointBigInt(
      ecPedersen!.BaseG(), BigInt.parse(hex.encode(j), radix: 16));

  if (common.DebugFull) {
    print('d is $d');
  }

  final r_ = List<VSharedSecret>.filled(
      ccPubK.length,
      VSharedSecret(newECPoint(BigInt.zero, BigInt.zero),
          newECPoint(BigInt.zero, BigInt.zero)));
  var f_ =
      List<ECPoint>.filled(ccPubK.length, newECPoint(BigInt.zero, BigInt.zero));
  var cc_ =
      List<ECPointInfo>.generate(ccPubK.length, (index) => ECPointInfo(newECPoint(BigInt.zero, BigInt.zero), '', ''));

  // Create R entry for the transferee
  final yToTheK =
      safeMultECPointBigInt(y.ecPoint, BigInt.parse(hex.encode(k), radix: 16));
  VSharedSecret r = VSharedSecret((yToTheK! + s.s1)!, (yToTheK! + s.s2)!);

  if (common.DebugFull) {
    print('r.s1: ${r.s1}');
    print('r.s2: ${r.s2}');
  }

  // Create R_ entries for the cc'd
  for (var i = 0; i < ccPubK.length; i++) {
    final v = ccPubK[i].pubK.replaceAll('_pubk', '');
    final pubkbytes = base64.decode(v);
    cc_[i].ecPoint = ecPointFromBytes(pubkbytes);
    cc_[i].nodeID = ccPubK[i].nodeID;
    cc_[i].nodeType = ccPubK[i].nodeType;

    final y_ = cc_[i];

    final yToTheK_ = y_.ecPoint * BigInt.parse(hex.encode(k), radix: 16);
    r_[i] = VSharedSecret((yToTheK_! + s.s1)!, (yToTheK_! + s.s2)!);

    final yOverY_ = y_.ecPoint - y.ecPoint;
    final yOverYToTheJ_ =
        safeMultECPointBigInt(yOverY_!, BigInt.parse(hex.encode(j), radix: 16));
    f_[i] = yOverYToTheJ_!;
  }

  if (common.DebugFull) {
    for (var i = 0; i < ccPubK.length; i++) {
      print('r_[i].s1: ${r_[i].s1}');
      print('r_[i].s2: ${r_[i].s2}');
    }

    for (var i = 0; i < ccPubK.length; i++) {
      print('f_[i]: ${f_[i]}');
    }

    for (var i = 0; i < ccPubK.length; i++) {
      print('cc_[i]: ${cc_[i]}');
    }
  }

  // Create the concatenated byte array
  BytesBuilder bytesBuilder = BytesBuilder();
  bytesBuilder.add(encrypted);
  bytesBuilder.add(c!.getEncoded(true));
  bytesBuilder.add(r.s1.getEncoded(true));
  bytesBuilder.add(r.s2.getEncoded(true));
  for (var r in r_) {
    bytesBuilder.add(r.s1.getEncoded(true));
    bytesBuilder.add(r.s2.getEncoded(true));
  }
  bytesBuilder.add(d!.getEncoded(true));
  for (var f in f_) {
    bytesBuilder.add(f.getEncoded(true));
  }

  Uint8List sBytes = bytesBuilder.toBytes();

  // Create w by hashing the concatenated byte array
  final hasher = SHA256Digest();
  final wBytes = hasher.process(sBytes);
  if (common.DebugFull) {
    print('wBytes: ${hex.encode(wBytes)}');
  }
  final w = BigInt.parse(hex.encode(wBytes), radix: 16);
  if (common.DebugFull) {
    print('w: $w');
  }

  // Create z = w * k + j (mod q)
  final z = (w * BigInt.parse(hex.encode(k), radix: 16) +
          BigInt.parse(hex.encode(j), radix: 16)) %
      ecPedersen!.n;

  if (common.DebugFull) {
    print('z: $z');
  }
  // Create the VShareBindDataInternal object
  final ret = VShareBindDataInternal(w, z, c, y, cc_, r, r_);

  return ret;
}

bool vShareBVerify(VShareBindDataInternal data, Uint8List encrypted) {
  Uint8List e = encrypted;

  // Cw
  ECPoint cw = safeMultECPointBigInt(data.c, data.w)!;
  // Gz
  ECPoint gz = safeMultECPointBigInt(ecPedersen!.BaseG(), data.z)!;
  // D
  ECPoint d = (gz - cw)!;

  // make an array for the "letters" (F, I, ...) of those receiving a "carbon copy"
  var f_ = List<ECPoint>.filled(
      data.cc.length, newECPoint(BigInt.zero, BigInt.zero));

  // compute the "letters" for each "carbon copy" recipient
  for (int i = 0; i < data.cc.length; i++) {
    ECPoint yOverY = (data.cc[i].ecPoint - data.y.ecPoint)!;
    ECPoint yOverYToTheZ = safeMultECPointBigInt(yOverY, data.z)!;

    ECPoint rOverR = (data.r_[i].s1 - data.r.s1)!;
    ECPoint rOverRMToTheW = safeMultECPointBigInt(rOverR, data.w)!;
    f_[i] = (yOverYToTheZ - rOverRMToTheW)!;

    // print F
    if (common.DebugFull) {
      print("S1 F_[$i] ${f_[i]}");
    }

    // double-check the other F
    rOverR = (data.r_[i].s2 - data.r.s2)!;
    rOverRMToTheW = safeMultECPointBigInt(rOverR, data.w)!;
    ECPoint otherF = (yOverYToTheZ - rOverRMToTheW)!;

    if (common.DebugFull) {
      print("S2 F_[$i] $otherF");
    }

    if (f_[i] != otherF) {
      if (common.DebugFull) {
        print("F_[$i] != OtherF");
      }
      return false;
    }
  }

  // create an empty array and its slice of nothing; don't use this underlying array since it has zero capacity
  BytesBuilder bytesBuilder = BytesBuilder();
  bytesBuilder.add(e);
  bytesBuilder.add(data.c.getEncoded(true));
  bytesBuilder.add(data.r.s1.getEncoded(true));
  bytesBuilder.add(data.r.s2.getEncoded(true));
  for (var v in data.r_) {
    bytesBuilder.add(v.s1.getEncoded(true));
    bytesBuilder.add(v.s2.getEncoded(true));
  }
  bytesBuilder.add(d.getEncoded(true));
  for (var v in f_) {
    bytesBuilder.add(v.getEncoded(true));
  }

  Uint8List s = bytesBuilder.toBytes();

  // create w by hashing E, C, D, R_<recipient>, F, I and the like if > 2 recipients
  final hasher = SHA256Digest();
  final wBytes = hasher.process(s);
  BigInt wPrime = BigInt.parse(hex.encode(wBytes), radix: 16);
  wPrime = wPrime % ecPedersen!.n;

  if (common.DebugFull) {
    print('wPrime: $wPrime');
    print('data.w: ${data.w}');
  }

  return wPrime == data.w;
}

bool vShareBVerifyAll(VShareBindData data, Uint8List encrypted) {
  if (data.data == null) {
    return false;
  }

  // if length of data.data is not 2, fail
  if (data.data!.length != 2) {
    return false;
  }

  for (var bindData in data.data!) {
    if (!vShareBVerify(bindData, encrypted)) {
      return false;
    }
  }
  return true;
}
