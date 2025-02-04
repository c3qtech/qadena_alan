import 'dart:typed_data';

import 'package:convert/convert.dart';

import 'package:pointycastle/ecc/api.dart';
import 'package:qadena_alan/qadena.dart';
import 'package:test/test.dart';
import 'package:pointycastle/export.dart';
import 'package:collection/collection.dart';

import 'package:qadena_alan/proto/qadena/qadena/export.dart' as qadena;


import 'common_test.dart';

class EncryptableSingleContactInfoDetails {
  String contact;

  EncryptableSingleContactInfoDetails({required this.contact});
}

void main() {
  ecPedersen = newECPrimeGroupKeyV2(vecLength);

  test('generateShareSecret', () {
    Uint8List sharedSecret = generateSharedSecret();

    // print out shared secret
    print('sharedSecret: $sharedSecret');
  });

  test('generateSharedSecret2Consecutive', () {
    Uint8List sharedSecret1 = generateSharedSecret();
    Uint8List sharedSecret2 = generateSharedSecret();

    // expect sharedSecret1 != sharedSecret2
    expect(sharedSecret1, isNot(sharedSecret2),
        reason:
            'sharedSecret1 = $sharedSecret1; sharedSecret2 = $sharedSecret2');
  });

  test('generateVShareSecret', () {
    VSharedSecret secret = generateVSharedSecret();
    // expect isValidPoint
    expect(isValidPoint(secret.s1), isTrue, reason: 's1 is not a valid point');
    expect(isValidPoint(secret.s2), isTrue, reason: 's2 is not a valid point');
  });

  test('generateVShareSecret2Consecutive', () {
    VSharedSecret secret1 = generateVSharedSecret();
    VSharedSecret secret2 = generateVSharedSecret();

    // expect secret1 != secret2
    expect(secret1.s1, isNot(secret2.s1),
        reason: 'secret1.s1 = ${secret1.s1}; secret2.s1 = ${secret2.s1}');
    expect(secret1.s2, isNot(secret2.s2),
        reason: 'secret1.s2 = ${secret1.s2}; secret2.s2 = ${secret2.s2}');
  });





  test('testVShareEncryptDecrypt', () {
    testVShareEncryption = false;
    // Generate keys
    var keys = generateTestKeys(4);

    // Nodes who will be cc'd for the dstEWalletID
    List<VSharePubKInfo> ccPubK = [
      VSharePubKInfo(pubK: keys[0].publicKey, nodeID: "", nodeType:""),
      VSharePubKInfo(pubK: keys[1].publicKey, nodeID: "", nodeType:""),
      VSharePubKInfo(pubK: keys[2].publicKey, nodeID: "jar1", nodeType:JarNodeType),
      VSharePubKInfo(pubK: keys[3].publicKey, nodeID: SSNodeID, nodeType:SSNodeType)
    ];

    var ewv = qadena.EncryptableCreateWallet.create();
    ewv.dstEWalletID = qadena.EncryptableCreateWalletEWalletID.create();
    ewv.dstEWalletID.nonce = "nonce-123";
    ewv.dstEWalletID.walletID = "wallet-id-123";

    var bindData = VShareBindData.fromEmpty();

    var cipherText = protoMarshalAndVShareBEncrypt(ccPubK, ewv, bindData);

    final verified = vShareBVerifyAll(bindData, cipherText!);

    print("verified: $verified");
    
    expect(verified, isTrue, reason: 'verified = $verified');

    var ewv2 = qadena.EncryptableCreateWallet.create();
    var decrypted = vShareBDecryptAndProtoUnmarshal(keys[0].privateKey, keys[0].publicKey, bindData, cipherText!, ewv2);

    // expect decrypted
    expect(decrypted, isTrue, reason: 'decrypted = $decrypted');

    if (decrypted) {
      print("ewv2: $ewv2");
      expect(ewv2.dstEWalletID!.nonce, equals("nonce-123"));
      expect(ewv2.dstEWalletID!.walletID, equals("wallet-id-123"));  
    }

  });

test('testProtoUnproto', () {
    testVShareEncryption = false;
    // Generate keys
    var keys = generateTestKeys(4);

    // Nodes who will be cc'd for the dstEWalletID
    List<VSharePubKInfo> ccPubK = [
      VSharePubKInfo(pubK: keys[0].publicKey, nodeID: "", nodeType:""),
      VSharePubKInfo(pubK: keys[1].publicKey, nodeID: "", nodeType:""),
      VSharePubKInfo(pubK: keys[2].publicKey, nodeID: "jar1", nodeType:JarNodeType),
      VSharePubKInfo(pubK: keys[3].publicKey, nodeID: SSNodeID, nodeType:SSNodeType)
    ];

    var ewv = qadena.EncryptableCreateWallet.create();
    ewv.dstEWalletID = qadena.EncryptableCreateWalletEWalletID.create();
    ewv.dstEWalletID.nonce = "nonce-123";
    ewv.dstEWalletID.walletID = "wallet-id-123";

    var bindData = VShareBindData.fromEmpty();

    var cipherText = protoMarshalAndVShareBEncrypt(ccPubK, ewv, bindData);

    final verified = vShareBVerifyAll(bindData, cipherText!);

    print("verified: $verified");

    expect(verified, isTrue, reason: 'verified = $verified');

    // protoize bindData
    var protoBindData = protoizeVShareBindData(bindData);

    // unprotoize bindData
    var unprotoBindData = unprotoizeVShareBindData(protoBindData);

    // expect unprotoBindData == bindData
//    expect(unprotoBindData, equals(bindData));

    // verify unprotoBindData
    final verified2 = vShareBVerifyAll(unprotoBindData, cipherText);

    print("verified2: $verified2");

    expect(verified2, isTrue, reason: 'verified2 = $verified2');


  });


  test('testVShareEncrypt', () {
    testVShareEncryption = false;
    VSharedSecret secret1 = generateVSharedSecret();
    VSharedSecret secret2 = generateVSharedSecret();

    // Concatenate the byte arrays from sharedSecrets[0].s1 and sharedSecrets[1].s1, skipping the first byte
    Uint8List sharedSecretBytes = Uint8List.fromList(
        secret1.s1.getEncoded(true).sublist(1) +
            secret2.s1.getEncoded(true).sublist(1));

    // Panic if sharedSecretBytes length is not 64
    if (sharedSecretBytes.length != 64) {
      throw Exception("sharedSecretBytes length is not 64");
    }

    // Print sharedSecretBytes
    print("sharedSecretBytes: ${hex.encode(sharedSecretBytes)}");

    // Compute the SHA-256 hash of sharedSecretBytes
    final sharedSecretHash = SHA256Digest().process(sharedSecretBytes);

    print("sharedSecretHash: ${hex.encode(sharedSecretHash)}");

    final v_b =
        hex.decode("0a1a68656c6c6f20776f726c64207468697320697320612074657374")
            as Uint8List;

    // Print v_b
    print("v_b: $v_b}");

    // Encrypt the data using the shared secret hash
    Uint8List cipherText = sharedSecretEncrypt(sharedSecretHash, v_b);

    // expect secret1 != secret2
    expect(secret1.s1, isNot(secret2.s1),
        reason: 'secret1.s1 = ${secret1.s1}; secret2.s1 = ${secret2.s1}');
    expect(secret1.s2, isNot(secret2.s2),
        reason: 'secret1.s2 = ${secret1.s2}; secret2.s2 = ${secret2.s2}');

    final v_b2 = sharedSecretDecrypt(sharedSecretHash, cipherText);
    print("v_b2: $v_b2");

    // expect v_b == v_b2
    expect(v_b, equals(v_b2));

  });

  test('newVShareBindData', () {
    testVShareEncryption = false;
    // Generate keys
    var keys = generateTestKeys(4);

    // Nodes who will be cc'd for the dstEWalletID
    List<VSharePubKInfo> ccPubK = [
      VSharePubKInfo(pubK: keys[0].publicKey, nodeID: "", nodeType: ""),
      VSharePubKInfo(pubK: keys[1].publicKey, nodeID: "", nodeType: ""),
      VSharePubKInfo(pubK: keys[2].publicKey, nodeID: "jar1", nodeType: JarNodeType),
      VSharePubKInfo(pubK: keys[3].publicKey, nodeID: SSNodeID, nodeType: SSNodeType)
    ];

    String plainText = "hello world this is a test";
    EncryptableSingleContactInfoDetails sci =
        EncryptableSingleContactInfoDetails(contact: plainText);

    final cipherText = hex.decode(
            "8bb59c1d6e8a3f47e3eec29d901f897afafc7c4c7dd7f86176f93c605b4466a12b7bae0d7816be5fb1ca7dd2d4490ff6b840ab8923186d595fd80c90")
        as Uint8List;
    final vSharedSecret = generateVSharedSecret();
    var bindDataInternal =
        newVShareBindData(cipherText, vSharedSecret, ccPubK);

    print("bindDataInternal: $bindDataInternal");

    final verified = vShareBVerify(bindDataInternal, cipherText);

    print("verified: $verified");

    expect(verified, isTrue, reason: 'verified = $verified');
  });
}
