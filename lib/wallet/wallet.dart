import 'dart:typed_data';

import 'package:qadena_alan/alan.dart';
import 'package:qadena_alan/wallet/bech32_encoder.dart' as alan_bech32;
import 'package:blockchain_utils/blockchain_utils.dart';
import 'package:equatable/equatable.dart';
import 'package:hex/hex.dart';
import 'package:pointycastle/export.dart';
import 'package:web3dart/web3dart.dart' as web3crypto;

/// Represents a wallet which contains the hex private key, the hex public key
/// and the hex address.
/// In order to create one properly, the [Wallet.derive] method should always
/// be used.
/// The associated [networkInfo] will be used when computing the [bech32Address]
/// associated with the wallet.
///
///
///
///

/// Constants related to Ethereum addresses.
class EthSecP256K1AddrConst {
  /// The starting byte of an Ethereum address.
  static const int startByte = 24;

  /// The total length of an Ethereum address in hexadecimal characters.
  static const int addrLen = 40;
}

class Wallet extends Equatable {
  static const derivationPath = "m/44'/118'/0'/0/0";

  final Uint8List address;
  final Uint8List privateKey;
  final Uint8List publicKey;

  final NetworkInfo networkInfo;

  Wallet({
    required this.networkInfo,
    required this.address,
    required this.privateKey,
    required this.publicKey,
  });

  /// Derives the private key from the given [mnemonic] using the specified
  /// [networkInfo].
  factory Wallet.derive(
    List<String> mnemonic,
    NetworkInfo networkInfo, {
    String derivationPath = derivationPath,
  }) {
    // Validate the mnemonic
    if (!Bip39.validateMnemonic(mnemonic)) {
      throw Exception('Invalid mnemonic');
    }

    // Convert the mnemonic to a BIP32 instance
    final seed = Bip39.mnemonicToSeed(mnemonic);
    final root = Bip32.fromSeed(seed);

    // Get the node from the derivation path
    final derivedNode = root.derivePath(derivationPath);

    // Get the curve data
    final secp256k1 = ECCurve_secp256k1();
    final point = secp256k1.G;

    // Compute the curve point associated to the private key
    final bigInt = BigInt.parse(HEX.encode(derivedNode.privateKey!), radix: 16);
    final curvePoint = point * bigInt;


    Uint8List address;
    // Get the public key
    final publicKeyBytes = curvePoint!.getEncoded();

    if (networkInfo.isEthSecP256K1Addr) {
      // Get the public key
      final publicKeyBytesUncompressed = curvePoint!.getEncoded(false); 
      String kekkakHex = BytesUtils.toHexString(
          QuickCrypto.keccack256Hash(publicKeyBytesUncompressed.sublist(1)));
      String addr = kekkakHex.substring(EthSecP256K1AddrConst.startByte);

      address = Uint8List.fromList(hex.decode(addr));
    } else {
      // Get the address
      final sha256Digest = SHA256Digest().process(publicKeyBytes);
      address = RIPEMD160Digest().process(sha256Digest);
    }

    // Return the key bytes
    return Wallet(
      address: address,
      publicKey: publicKeyBytes,
      privateKey: derivedNode.privateKey!,
      networkInfo: networkInfo,
    );
  }

  /// Generated a new random [Wallet] using the specified [networkInfo]
  /// and the optional [derivationPath].
  factory Wallet.random(
    NetworkInfo networkInfo, {
    String derivationPath = derivationPath,
  }) {
    return Wallet.derive(
      Bip39.generateMnemonic(strength: 256),
      networkInfo,
      derivationPath: derivationPath,
    );
  }

  /// Creates a new [Wallet] instance based on the existent [wallet] for
  /// the given [networkInfo].
  factory Wallet.convert(
    Wallet wallet,
    NetworkInfo networkInfo,
  ) {
    return Wallet(
      networkInfo: networkInfo,
      address: wallet.address,
      privateKey: wallet.privateKey,
      publicKey: wallet.publicKey,
    );
  }

  /// Creates a new [Wallet] instance from the given [json] and [privateKey].
  factory Wallet.fromJson(
    Map<String, dynamic> json,
    Uint8List privateKey,
  ) {
    return Wallet(
      address: Uint8List.fromList(HEX.decode(json['hex_address'] as String)),
      publicKey: Uint8List.fromList(HEX.decode(json['public_key'] as String)),
      privateKey: privateKey,
      networkInfo: NetworkInfo.fromJson(
        json['network_info'] as Map<String, dynamic>,
      ),
    );
  }

  /// Creates a new [Wallet] instance from [privateKey].
  factory Wallet.import(
    NetworkInfo networkInfo,
    Uint8List privateKey,
  ) {
    final secp256k1 = ECCurve_secp256k1();
    final point = secp256k1.G;
    // Compute the curve point associated to the private key
    final bigInt = BigInt.parse(HEX.encode(privateKey), radix: 16);
    final curvePoint = point * bigInt;

    // Get the public key
    final publicKeyBytes = curvePoint!.getEncoded();

    Uint8List address;

    if (networkInfo.isEthSecP256K1Addr) {
      // Get the public key
      final publicKeyBytesUncompressed = curvePoint!.getEncoded(false); 
      String kekkakHex = BytesUtils.toHexString(
          QuickCrypto.keccack256Hash(publicKeyBytesUncompressed.sublist(1)));
      String addr = kekkakHex.substring(EthSecP256K1AddrConst.startByte);
      address = Uint8List.fromList(hex.decode(addr));
    } else {
      // Get the address
      final sha256Digest = SHA256Digest().process(publicKeyBytes);
      address = RIPEMD160Digest().process(sha256Digest);
    }

    return Wallet(
      address: address,
      publicKey: publicKeyBytes,
      privateKey: privateKey,
      networkInfo: networkInfo,
    );
  }

  /// Returns the associated [address] as a Bech32 string.
  String get bech32Address {
    return alan_bech32.Bech32Encoder.encode(networkInfo.bech32Hrp, address);
  }

  /// Returns the associated [privateKey] as an [ECPrivateKey] instance.
  ECPrivateKey get _ecPrivateKey {
    final privateKeyInt = BigInt.parse(HEX.encode(privateKey), radix: 16);
    return ECPrivateKey(privateKeyInt, ECCurve_secp256k1());
  }

  /// Returns the associated [publicKey] as an [ECPublicKey] instance.
  ECPublicKey get ecPublicKey {
    final secp256k1 = ECCurve_secp256k1();
    final point = secp256k1.G;
    final curvePoint = point * _ecPrivateKey.d;
    return ECPublicKey(curvePoint, ECCurve_secp256k1());
  }

  /// Normalizes the given [signature] using the provided [curveParams].
  /// This is used to create signatures that are always in the lower-S form, to
  /// make sure that they cannot be tamped with the alternative S value.
  /// More info can be found here: https://tinyurl.com/2yfurry7
  ECSignature _normalizeECSignature(
    ECSignature signature,
    ECDomainParameters curveParams,
  ) {
    var normalizedS = signature.s;
    if (normalizedS.compareTo(curveParams.n >> 1) > 0) {
      normalizedS = curveParams.n - normalizedS;
    }
    return ECSignature(signature.r, normalizedS);
  }

  /// Hashes the given [data] with SHA-256, and then sign the hash using the
  /// private key associated with this wallet, returning the signature
  /// encoded as a 64 bytes array.
  Uint8List sign(Uint8List data) {

    if (networkInfo.isEthSecP256K1Addr) {
      final hash = QuickCrypto.keccack256Hash(data);
      // convert to Uint8List
      final hashBytes = Uint8List.fromList(hash);
      final ethSig = web3crypto.sign(hashBytes, Uint8List.fromList(privateKey));
      final ethRBytes = _bigIntTo32Bytes(ethSig.r);
      final ethSBytes = _bigIntTo32Bytes(ethSig.s);
      var sigBytes = Uint8List(65);
      copy(ethRBytes, 0, 32, sigBytes);
      copy(ethSBytes, 32, 64, sigBytes);
      sigBytes[64] = ethSig.v - 27;
      return sigBytes;
    } else {

      final hash = SHA256Digest().process(data);
      final ecdsaSigner = ECDSASigner(null, HMac(SHA256Digest(), 64))
        ..init(true, PrivateKeyParameter(_ecPrivateKey));

      final ecSignature = ecdsaSigner.generateSignature(hash) as ECSignature;
      final normalized = _normalizeECSignature(ecSignature, ECCurve_secp256k1());
      final rBytes = normalized.r.toUin8List();
      final sBytes = normalized.s.toUin8List();
      var sigBytes = Uint8List(64);
      copy(rBytes, 32 - rBytes.length, 32, sigBytes);
      copy(sBytes, 64 - sBytes.length, 64, sigBytes);
      return sigBytes;
    }
  }

  Uint8List _bigIntTo32Bytes(BigInt value) {
    final hexStr = value.toRadixString(16).padLeft(64, '0');
    return Uint8List.fromList(HEX.decode(hexStr));
  }

  /// Converts the current [Wallet] instance into a JSON object.
  /// Note that the private key is not serialized for safety reasons.
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'hex_address': HEX.encode(address),
      'bech32_address': bech32Address,
      'public_key': HEX.encode(publicKey),
      'network_info': networkInfo.toJson(),
    };
  }

  @override
  List<Object> get props {
    return [
      networkInfo,
      address,
      privateKey,
      publicKey,
    ];
  }

  @override
  String toString() {
    return '{ '
        'networkInfo: $networkInfo, '
        'address: $address, '
        'publicKey: $publicKey '
        '}';
  }
}
