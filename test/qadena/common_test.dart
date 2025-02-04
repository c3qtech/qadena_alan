import 'dart:typed_data';

import 'package:convert/convert.dart';
import 'package:qadena_alan/qadena.dart';
import 'package:pointycastle/ecc/api.dart';
import 'package:test/test.dart';
import 'package:pointycastle/export.dart';
import 'package:collection/collection.dart';

class KeyPair {
  String publicKey;
  String privateKey;

  KeyPair(this.publicKey, this.privateKey);
}

const testAccountMnemonics = [
  "inherit rebel absorb diamond leopard lens approve deny balcony toast merry text metal pair diamond lumber gravity song liberty pumpkin goddess nature slush basic",
  "palace friend deposit baby crunch flag airport mistake enlist island auction phrase double truck coffee salad hidden story orange couch useful feature electric crush",
  "join total tent make bone program uncle pitch prize body night snake chest mass switch glad opera security evidence catch maid behave gloom ahead",
  "wealth scatter potato bacon glass any present reopen box patrol divide erase tube matter half maze sugar tackle trial duty river eight fragile arctic",
];

// get testAccountMnemonic by index
String getTestAccountMnemonic(int index) {
  return testAccountMnemonics[index];
}

List<KeyPair> generateTestKeys(int count) {
  List<KeyPair> keyPairs = [];

  for (int i = 0; i < count; i++) {
    String mnemonic = testAccountMnemonics[i];
    var pp = createPublicPrivateKeypair(
        AccountType.transactionWalletType, 0, false, mnemonic);

    String publicKey = pp.getPublicKey();
    String privateKey = pp.getPrivateKey();

    keyPairs.add(KeyPair(publicKey, privateKey));
  }

  return keyPairs;
}

void main() {
  domainParams = ECDomainParameters("secp256k1");
  ecPedersen = newECPrimeGroupKeyV2(vecLength);

  test('createAddress', () {
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
}
