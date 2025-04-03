import 'dart:io';

import 'package:qadena_alan/alan.dart';
import 'package:qadena_alan/proto/cosmos/bank/v1beta1/export.dart' as bank;
import 'package:qadena_alan/qadena/core/client.dart';
import 'package:test/test.dart';

void main(List<String> args) async {
  final networkInfo = NetworkInfo.fromSingleHost(
      bech32Hrp: 'qadena',
      host: 'localhost',
      isEthSecP256K1Addr: false,
      isTesting: true);

  QadenaClient client = QadenaClient(networkInfo);

  // ensure 2 args
  if (args.length != 2) {
    print("Usage: dart create_account.dart <amount> <ephAmount>");
    return;
  }

  BigInt claimAmount = BigInt.from(int.parse(args[0]));
  BigInt claimBF = BigInt.from(int.parse(args[1]));
  

  final account = await client.createAccount("pioneer1", null, "secdsvssrvprv", claimAmount, claimBF);

  if (account.errorMessage != null) {
    print("Failed to create account: ${account.errorMessage}");
    exit(10);
  }

  print("seed phrase: ${account.mainWallet!.seed}");

  print("wallet: ${account.mainWallet!.transactionWalletAddress}");
  print("ephWallet: ${account.ephWallet!.transactionWalletAddress}");

  exit(0);
}
