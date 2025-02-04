import 'dart:convert';
import 'dart:typed_data';

import 'package:convert/convert.dart';
import 'package:qadena_alan/qadena.dart';
import 'package:pointycastle/ecc/api.dart';
import 'package:test/test.dart';
import 'package:pointycastle/export.dart';
import 'package:collection/collection.dart';

import 'common_test.dart';

class S {
  int a;
  int b;
  String c;

  S(this.a, this.b, this.c);

  void fromJson(Map<String, dynamic> json) {
    a = json['a'] as int;
    b = json['b'] as int;
    c = json['c'] as String;
  }

  Map<String, dynamic> toJson() {
    return {
      'a': a,
      'b': b,
      'c': c,
    };
  }
}

void main() {
  domainParams = ECDomainParameters("secp256k1");
  ecPedersen = newECPrimeGroupKeyV2(vecLength);

  test('createPublicPrivateKeypair', () {
    var keys = generateTestKeys(1);

    final pp = keys[0];

    final expectedPublicKey =
        "Au8yf6X1i93GusxJC/4rk122w9arSx9KJE4iwQaV+2e+";

    final expectedPrivateKey =
        "8adf4f27eb36cf02b9a57c4951b15bff064cc61c0310f2afeb2e52b7aafb57d5";

    expect(pp.publicKey == expectedPublicKey, isTrue,
        reason: 'publicKeyB64 = ${pp.publicKey}; want $expectedPublicKey');
    expect(pp.privateKey == expectedPrivateKey, isTrue,
        reason: 'privateKey = ${pp.privateKey}; want "$expectedPrivateKey"');
  });

  test('TestBEncryptBDecrypt', () {
    var keys = generateTestKeys(1);

    final pp = keys[0];

    // convert "hello world" to Uint8List
    var helloWorld = Uint8List.fromList("hello world".codeUnits);

    var encrypted = bEncrypt(pp.publicKey, helloWorld);
    // print hex
    print(hex.encode(encrypted));

    var decrypted = bDecrypt(pp.privateKey, encrypted);

    // print has string

    print(String.fromCharCodes(decrypted));

    var listEquality = ListEquality();
    expect(listEquality.equals(decrypted, helloWorld), isTrue,
        reason: 'decrypted = $decrypted; want $helloWorld');
  });

  test('TestBDecrypt', () {
    var keys = generateTestKeys(1);

    final pp = keys[0];

    var encrypted = hex.decode(
        "04ce48e9e6766e8cce24d7d8569903f4d3a02647e6545ba292c50b516bd384f4bf34ddf5b2198adb60046247eaf316195043088ece10b5cdbf3fc1062a33906c85de04bed6297de149f41fa47215837ea70ae5681d3da42c041fe707a8b70139d6ccef3263c128f3c2873367");
    var decrypted = bDecrypt(pp.privateKey, Uint8List.fromList(encrypted));

    // print has string

    print(String.fromCharCodes(decrypted));

    expect(String.fromCharCodes(decrypted) == "hello world", isTrue,
        reason: 'decrypted = $decrypted; want "hello world"');
  });

  test('TestEncryptDecrypt', () {
    var keys = generateTestKeys(1);

    final pp = keys[0];

    var helloWorld = "hello world";

    var encrypted = encrypt(pp.publicKey, helloWorld);

    // print hex
    print(encrypted);

    var decrypted = decrypt(pp.privateKey, encrypted);

    expect(helloWorld == decrypted, isTrue,
        reason: 'decrypted = $decrypted; want $helloWorld');
  });

  test('TestMarshalAndEncryptDecrypt', () {
    var keys = generateTestKeys(1);

    final pp = keys[0];

    var s = S(1, 2, "hello world");

    var encrypted = marshalAndEncrypt(pp.publicKey, s);

    // print hex
    print("encrypted: $encrypted");

    S decrypted = S(0, 0, "");

    var decryptedJson =
        decryptAndUnmarshal(pp.privateKey, encrypted, decrypted);

    print("decrypted: ${decrypted.a}, ${decrypted.b}, ${decrypted.c}");

    expect(
        decrypted.a == s.a && decrypted.b == s.b && decrypted.c == s.c, isTrue,
        reason:
            'decrypted = ${decrypted.a}, ${decrypted.b}, ${decrypted.c} ; want ${s.a}, ${s.b}, ${s.c}');
  });
}
