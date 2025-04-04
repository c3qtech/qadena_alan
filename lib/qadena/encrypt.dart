import 'dart:math';
import 'dart:convert';
import 'dart:typed_data';
import 'package:convert/convert.dart';
import 'package:pointycastle/export.dart';
import 'package:bip39/bip39.dart' as bip39;
import 'package:bip32/bip32.dart' as bip32;
import 'package:qadena_alan/qadena/common.dart' as common;

var rnd = getSecureRandom();
var domainParams = ECDomainParameters("secp256k1");
var qadenaCoinType = 744;

class PublicPrivateKey {
  final String publicKeyB64; // compressed b64
  final String publicKey; // compressed hex
  final String uncompressedPublicKey; // uncompressed hex
  final String privateKey; // uncompressed hex

  PublicPrivateKey(this.publicKeyB64, this.publicKey,
      this.uncompressedPublicKey, this.privateKey);

  String getPublicKey() {
//    return '${publicKeyB64}_pubk';
    return publicKeyB64;
  }

  String getPrivateKey() {
    return privateKey;
//    return '${privateKey}_privkhex:${publicKeyB64}_privk';
  }
}

class Pair<FIRST, SECOND> {
  FIRST first;
  SECOND second;

  Pair(this.first, this.second);
}

PublicPrivateKey createPublicPrivateKeypair(common.AccountType accountType,
    int ephAccountIndex, bool isEphemeral, String mnemonic) {
  // Convert mnemonic to seed
  Uint8List seed = bip39.mnemonicToSeed(mnemonic);

  if (common.Debug) {
    print("Seed: ${hex.encode(seed)}");
  }

  // Derive the BIP-32 root key from the seed
  final root = bip32.BIP32.fromSeed(seed);

  // Derive a specific child key (e.g., m/44'/0'/0'/0/0)
  final path = "m/44'/$qadenaCoinType'/${accountType.value}'/$ephAccountIndex/0";
  if (common.Debug) {
    print("path: $path");
  }
  final child = root.derivePath(path);
  if (common.Debug) {
    print("Child: ${child.toString()}");
  }

  // Get the private key (in bytes)
  Uint8List privateKey = child.privateKey!;

  // Derive the public key from the private key using elliptic curve cryptography (ECC)
  final publicKey = _privateKeyToPublicKey(privateKey);

  if (common.Debug) {
    // Display the keys in hex format
    print("Private Key: ${hex.encode(privateKey)}");
    print("Public Key (compressed): ${hex.encode(publicKey.second)}");
    print("base 64 (compressed): ${base64.encode(publicKey.second)}");
    print("Public Key (uncompressed): ${hex.encode(publicKey.first)}");
  }

  return PublicPrivateKey(
      base64.encode(publicKey.second),
      hex.encode(publicKey.second),
      hex.encode(publicKey.first),
      hex.encode(privateKey));
}

// Convert the private key to a public key using elliptic curve cryptography (secp256k1)
Pair<Uint8List, Uint8List> _privateKeyToPublicKey(Uint8List privateKey) {
  final ecDomain = ECDomainParameters('secp256k1');
  final bigIntPrivateKey = BigInt.parse(hex.encode(privateKey), radix: 16);

  final ecPoint = ecDomain.G * bigIntPrivateKey;
  final publicKey =
      ecPoint!.getEncoded(true); // true = compressed public key format
  final publicKeyUncompressed =
      ecPoint.getEncoded(false); // true = compressed public key format

  return Pair<Uint8List, Uint8List>(
      Uint8List.fromList(publicKeyUncompressed), Uint8List.fromList(publicKey));
}

Uint8List _eciesEncrypt(var rawPubKeyCompOrUncomp, var plaintext) {
  // 1. Create ephemeral key pair
  var ephKeyPair = (KeyGenerator("EC")
        ..init(
            ParametersWithRandom(ECKeyGeneratorParameters(domainParams), rnd)))
      .generateKeyPair();

  // 2. Import public key of receiver
  var ecPoint =
      domainParams.curve.decodePoint(hex.decode(rawPubKeyCompOrUncomp));
  var publicKey = ECPublicKey(ecPoint, domainParams);

  // 3. Get full point to ECDH shared secret, derive AES key via HKDF
  var sharedSecretECPointUncomp =
      (publicKey.Q! * (ephKeyPair.privateKey as ECPrivateKey).d)!
          .getEncoded(false);
  var ephPublicKeyUncomp =
      (ephKeyPair.publicKey as ECPublicKey).Q!.getEncoded(false);
  var aesKey = _hkdf(ephPublicKeyUncomp, sharedSecretECPointUncomp);

  // 4. Encrypt via AES-256, GCM
  var nonce = rnd.nextBytes(16);
  var ciphertextTag = (GCMBlockCipher(AESEngine())
        ..init(true,
            AEADParameters(KeyParameter(aesKey), 128, nonce, Uint8List(0))))
      .process(plaintext);

  // 5. Concatenate (ephemeral public key|nonce|tag|ciphertext), Base64 encode and return
  return Uint8List.fromList(ephPublicKeyUncomp +
      nonce +
      ciphertextTag.sublist(ciphertextTag.length - 16) +
      ciphertextTag.sublist(0, ciphertextTag.length - 16));
}

SecureRandom getSecureRandom() {
  List<int> seed = List<int>.generate(32, (_) => Random.secure().nextInt(256));
  return FortunaRandom()..seed(KeyParameter(Uint8List.fromList(seed)));
}

Uint8List _hkdf(var ephPublicKeyUnc, var sharedSecretEcPointUnc) {
  var master = Uint8List.fromList(ephPublicKeyUnc + sharedSecretEcPointUnc);
  var aesKey = Uint8List(32);
  (HKDFKeyDerivator(SHA256Digest())..init(HkdfParameters(master, 32, null)))
      .deriveKey(null, 0, aesKey, 0);
  return aesKey;
}

Uint8List _eciesDecrypt(var rawPrivKeyHex, var encryptedData) {
  // 1. Import private key
  var privateKey =
      ECPrivateKey(BigInt.parse(rawPrivKeyHex, radix: 16), domainParams);

  // 2. Separate ephemeral public key and nonce|tag|ciphertext, import ephemeral public key
  var ephPublicKey = ECPublicKey(
      domainParams.curve.decodePoint(encryptedData.sublist(0, 65)),
      domainParams);
  var nonceTagCiphertext = encryptedData.sublist(65);

  // 3. Get full point to ECDH shared secret, derive AES key via HKDF
  var sharedSecretECPointUncomp =
      (ephPublicKey.Q! * privateKey.d)!.getEncoded(false);
  var ephPublicKeyUncomp = ephPublicKey.Q!.getEncoded(false);
  var aesKey = _hkdf(ephPublicKeyUncomp, sharedSecretECPointUncomp);

  // 4. Decrypt via AES-256, GCM
  var nonce = nonceTagCiphertext.sublist(0, 16);
  var ciphertextTag = nonceTagCiphertext.sublist(16 + 16) +
      nonceTagCiphertext.sublist(16, 16 + 16);
  var plaintext = (GCMBlockCipher(AESEngine())
        ..init(false,
            AEADParameters(KeyParameter(aesKey), 128, nonce, Uint8List(0))))
      .process(Uint8List.fromList(ciphertextTag));

  // 5. UTF-8 decode and return
  return plaintext;
}

// pub is base64 encoded public key
String encrypt(String pub, String plainText) {
  pub = pub.replaceAll('_pubk', '');
  if (common.Debug) {
    print('pub: $pub');
    print('plainText: $plainText, length: ${plainText.length}');
  }

  Uint8List pubkbytes;
  try {
    pubkbytes = base64.decode(pub);
  } catch (e) {
    return '';
  }

  String pubkbyteshex = hex.encode(pubkbytes);

  Uint8List cipherText;
  try {
    cipherText =
        _eciesEncrypt(pubkbyteshex, Uint8List.fromList(plainText.codeUnits));
  } catch (e) {
    return '';
  }

  String cipherTextHex = hex.encode(cipherText);
  if (common.Debug) {
    print('plaintext encrypted hex: $cipherTextHex');
  }

  return cipherTextHex;
}

// fdbfae7f8efb96594ef14828a0c7179876294cba0dc00fdd614a0ae6b9f62430_privkhex:AvAiC2Rqn9oIIeB3H6cPISnez8D3Y+KB8Jo8f40hSg4d_privk

String decrypt(String priv, String encrypted) {

  String privkhex;

  if (priv.endsWith('_privk')) {

    // Strip the pubkid from the beginning
    List<String> split = priv.split('_privkhex:');

    if (split.length != 2) {
      if (common.Debug) {
        print('invalid priv key: $priv');
      }
      return '';
    }


    privkhex = split[0];
  } else {
    privkhex = priv;
  }

  if (common.Debug) {
    print('privkhex: $privkhex');
    print('encryptedhex: $encrypted');
  }

  Uint8List plaintext;
  try {
    plaintext = _eciesDecrypt(privkhex, hex.decode(encrypted));
  } catch (e) {
    print(e);
    return '';
  }

  print('ciphertext decrypted: ${String.fromCharCodes(plaintext)}');

  return String.fromCharCodes(plaintext);
}

Uint8List bEncrypt(String pub, Uint8List plainText) {
  pub = pub.replaceAll('_pubk', '');
  if (common.Debug) {
    print('pub: $pub');
    print('plainText: $plainText, length: ${plainText.length}');
  }

  Uint8List pubkbytes;
  try {
    pubkbytes = base64.decode(pub);
  } catch (e) {
    return Uint8List(0);
  }

  String pubkbyteshex = hex.encode(pubkbytes);

  Uint8List cipherText;
  try {
    cipherText = _eciesEncrypt(pubkbyteshex, plainText);
  } catch (e) {
    return Uint8List(0);
  }

  // Uncomment the following lines if you want to print the encrypted hex
  // String cipherTextHex = hex.encode(cipherText);
  // print('plaintext encrypted hex: $cipherTextHex');

  return cipherText;
}

Uint8List bDecrypt(String priv, Uint8List encrypted) {
  var privkhex = priv;

  if (priv.endsWith('_privk')) {
    // Strip the pubkid from the beginning
    List<String> split = priv.split('_privkhex:');

    if (split.length != 2) {
      if (common.Debug) {
        print('invalid priv key: $priv');
      }
      return Uint8List(0);
    }

    priv = split[0];

    privkhex = split[0];
  }

  if (common.Debug) {
    print('privkhex: $privkhex');
    print('encryptedhex: ${hex.encode(encrypted)}');
  }

  Uint8List plaintext;
  try {
    plaintext = _eciesDecrypt(privkhex, encrypted);
  } catch (e) {
    print(e);
    return Uint8List(0);
  }

  if (common.Debug) {
    print('ciphertext decrypted hex: ${hex.encode(plaintext)}');
  }

  return plaintext;
}

Uint8List marshalAndBEncrypt(String pubk, String v) {
  return bEncrypt(pubk, utf8.encode(v));
}

String bDecryptAndUnmarshal(String priv, Uint8List encrypted) {
  Uint8List j = bDecrypt(priv, encrypted);

  return String.fromCharCodes(j);
}

String marshalAndEncrypt(String pubk, dynamic v) {
  // Convert the object to a JSON string
  String jsonString = jsonEncode(v);

  return encrypt(pubk, jsonString);
}

String decryptAndUnmarshal(String priv, String encrypted, dynamic v) {
  String j = decrypt(priv, encrypted);

  if (common.Debug) {
    print('decrypted: $j');
  }

  try {
    var m = jsonDecode(j);
    v.fromJson(m);
  } catch (e) {
    if (common.Debug) {
      print("couldn't unmarshal: $e");
    }
  }

  if (common.Debug) {
    print('unmarshalled: $j');
  }

  return j;
}
