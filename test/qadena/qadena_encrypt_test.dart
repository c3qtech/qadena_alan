import 'package:test/test.dart';
import 'package:qadena_alan/alan.dart';
import 'package:qadena_alan/qadena.dart';
import 'dart:typed_data';
import 'package:hex/hex.dart';
import 'dart:convert';

void main() {
  group('Qadena Encryption Tests', () {
    final networkInfo = NetworkInfo.fromSingleHost(
      bech32Hrp: 'qadena',
      host: 'localhost',
      isEthSecP256K1Addr: false,
    );

    test('Create wallet and encrypt/decrypt message', () {
      // Create a test wallet
      final mnemonicFull =
          "inherit rebel absorb diamond leopard lens approve deny balcony toast merry text metal pair diamond lumber gravity song liberty pumpkin goddess nature slush basic";
      final mnemonic = mnemonicFull.split(' ');

      // Create keypair for encryption using the same derivation path as alan.dart
      final keypair = createPublicPrivateKeypair(
          AccountType.transactionWalletType, 0, false, mnemonicFull);
      
      // Test data
      final plainText = "Hello Qadena!";
      
      // Encrypt the message using base64 encoded public key
      final encrypted = encrypt(keypair.publicKeyB64, plainText);
      expect(encrypted, isNotNull);
      expect(encrypted, isNot(equals(plainText)));

      // Format private key for decryption
      final formattedPrivKey = "${keypair.privateKey}_privkhex:${keypair.privateKey}_privk";
      
      // Decrypt the message
      final decrypted = decrypt(formattedPrivKey, encrypted);
      expect(decrypted, equals(plainText));
    });

    test('Binary encryption/decryption', () {
      final mnemonicFull =
          "inherit rebel absorb diamond leopard lens approve deny balcony toast merry text metal pair diamond lumber gravity song liberty pumpkin goddess nature slush basic";
      
      // Create keypair for encryption using the same derivation path
      final keypair = createPublicPrivateKeypair(
          AccountType.transactionWalletType, 0, false, mnemonicFull);
      
      // Test with binary data
      final testData = Uint8List.fromList([1, 2, 3, 4, 5]);
      
      // Format private key for decryption
      final formattedPrivKey = "${keypair.privateKey}_privkhex:${keypair.privateKey}_privk";
      
      // Convert compressed public key from base64 to hex for binary encryption
      final pubKeyHex = HEX.encode(base64.decode(keypair.publicKeyB64));
      
      // Encrypt binary data using hex encoded public key
      final encrypted = bEncrypt(keypair.publicKeyB64, testData);
      expect(encrypted, isNotNull);
      expect(encrypted.length, greaterThan(0));
      
      // Decrypt binary data
      final decrypted = bDecrypt(formattedPrivKey, encrypted);
      expect(decrypted, equals(testData));
    });
  });
}
