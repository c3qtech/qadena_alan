import 'dart:typed_data';

import 'package:grpc/grpc.dart';
import 'package:qadena_alan/qadena/core/client/query/export.dart';
import 'package:qadena_alan/qadena/ecpedersen.dart';
import 'package:qadena_alan/qadena/types/qadena_hd_wallet.dart';
import 'package:qadena_alan/utils/bip_39.dart';
import 'package:qadena_alan/wallet/network_info.dart';
import 'package:qadena_alan/wallet/wallet.dart';

import 'package:qadena_alan/proto/qadena/qadena/export.dart' as qadena;


final networkInfo = NetworkInfo.fromSingleHost(
  bech32Hrp: 'qadena',
  host: 'localhost',
  isEthSecP256K1Addr: false,
);

class LocalAccountResponse {
  final List<String> mnemonic;
  final String? password;
  final String txAddress;
  final String cxAddress;
  final Uint8List txPublicKeyHex;
  final Uint8List cxPublicKeyHex;

  LocalAccountResponse({
    required this.mnemonic,
    this.password,
    required this.txAddress,
    required this.cxAddress,
    required this.txPublicKeyHex,
    required this.cxPublicKeyHex,
  });
}

LocalAccountResponse createLocalAccount(
    [List<String>? mnemonic, String? password]) {
  try {
    var seedPhrase = mnemonic ?? Bip39.generateMnemonic(strength: 256);

    var txWallet = Wallet.derive(
      seedPhrase,
      networkInfo,
      derivationPath: "m/44'/744'/0'/0/0",
    );

    var cxWallet = Wallet.derive(
      seedPhrase,
      networkInfo,
      derivationPath: "m/44'/744'/1'/0/0",
    );

    return LocalAccountResponse(
      mnemonic: seedPhrase,
      password: password,
      txAddress: txWallet.bech32Address,
      cxAddress: cxWallet.bech32Address,
      txPublicKeyHex: txWallet.publicKey,
      cxPublicKeyHex: cxWallet.publicKey,
    );
  } catch (e) {
    print('Failed to create local wallet: $e');
    return LocalAccountResponse(
      mnemonic: [],
      txAddress: '',
      cxAddress: '',
      txPublicKeyHex: Uint8List(0),
      cxPublicKeyHex: Uint8List(0),
    );
  }
}

Future<QadenaHDWallet?> createWallet(String pioneerID, List<String>? mnemonic, int? ephIndex, String? serviceProviderID) async {
  try {
    initECPedersen();

    var seedPhrase = mnemonic ?? Bip39.generateMnemonic(strength: 256);
    ephIndex = ephIndex ?? 0;
    serviceProviderID = serviceProviderID ?? "";

    final chain = Chain(networkInfo);

    var wallet = QadenaHDWallet(chain, seedPhrase, ephIndex, pioneerID, serviceProviderID);

    if (await wallet.walletExists()) {
      return wallet;
    }

    final feeGrantSuccess = await wallet.feeGrant();
    print("done wih feegrant $feeGrantSuccess");

    if (feeGrantSuccess) {
      final registerWalletSuccess = await wallet.registerWallet();
      print("register wallet success: $registerWalletSuccess");
      if (registerWalletSuccess) {
        return wallet;
      }
    }
    return null;
  } catch (e) {
    print('Failed to create main wallet: $e');
    return null;
  }
}
