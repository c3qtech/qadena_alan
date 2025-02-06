import 'package:qadena_alan/alan.dart';
import 'package:qadena_alan/proto/cosmos/bank/v1beta1/export.dart' as bank;
import 'package:qadena_alan/proto/cosmos/tx/v1beta1/export.dart' as tx;
import 'package:fixnum/fixnum.dart' as fixnum;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:qadena_alan/qadena/core/client.dart';
import 'package:test/test.dart';

import '../common.dart';

import 'package:qadena_alan/proto/qadena/qadena/export.dart' as qadena;


void main() {
  late tx.ServiceClient client;
  late TxSender sender;
    bool testLocalChain = true;


  test('createWallet anonymous', () async {
    final wallet = await createWallet("pioneer1", null, 0, "secdsvssrvprv");
    final ephWallet = await createWallet("pioneer1", wallet!.seed, 1, null);
    print("wallet: $wallet");
    print("ephWallet: $ephWallet");
    expect(ephWallet, isNotNull);
    expect(wallet, isNotNull);
  });

  test('registerAuthorizedSignatory', () async {
  final annmnemonic =
        "inherit rebel absorb diamond leopard lens approve deny balcony toast merry text metal pair diamond lumber gravity song liberty pumpkin goddess nature slush basic";
      final wallet = await createWallet("pioneer1", annmnemonic.split(' '), 0, "secdsvssrvprv");
    final ephWallet = await createWallet("pioneer1", wallet!.seed, 1, null);
    print("wallet: $wallet");
    print("ephWallet: $ephWallet");
    final result = await ephWallet!.registerAuthorizedSignatory();
    print("registerAuthorizedSignatory result: $result");
    expect(result, isTrue);
  });
    
  test('signDocument', () async {
    final almnemonic="palace friend deposit baby crunch flag airport mistake enlist island auction phrase double truck coffee salad hidden story orange couch useful feature electric crush";
    final wallet = await createWallet("pioneer1", almnemonic.split(' '), 0, "secdsvssrvprv");
    final ephWallet = await createWallet("pioneer1", wallet!.seed, 1, null);
    print("wallet: $wallet");
    print("ephWallet: $ephWallet");
    final result = await ephWallet!.signDocument("document1", "3df79d34abbca99308e79cb94461c1893582604d68329a41fd4bec1885e6adb4", "87ec08842cc20d52583d15569de024409f9cc8531de47034c9779eb63bbc6900");
    print("signDocument result: $result");
  });

  test('claimCredentials', () async {
    final wallet = await createWallet("pioneer1", null, 0, "secdsvssrvprv");
    print("wallet: $wallet");
    final result = await wallet!.claimCredentials(BigInt.from(10234), BigInt.from(5678));
    print("claimCredentials result: $result");
  });

  

  test('Signed transaction is broadcast properly', () async {
    if (!testLocalChain) return;

    final almnemonic =
        "palace friend deposit baby crunch flag airport mistake enlist island auction phrase double truck coffee salad hidden story orange couch useful feature electric crush";
    final annmnemonic =
        "inherit rebel absorb diamond leopard lens approve deny balcony toast merry text metal pair diamond lumber gravity song liberty pumpkin goddess nature slush basic";
    final sponsormnemonic =
        "guilt decline utility scale crash envelope snap table dress coach tray use detect success lemon fatigue surround project warfare victory mean midnight address before";

    final networkInfo = NetworkInfo.fromSingleHost(
      bech32Hrp: 'qadena',
      host: 'localhost',
      isEthSecP256K1Addr: false,
    );

    final almnemonicSplit = almnemonic.split(' ');
    final annmnemonicSplit = annmnemonic.split(' ');

    var alwallet = Wallet.derive(almnemonicSplit, networkInfo,
        derivationPath: "m/44'/744'/0'/0/0");

    var annwallet = Wallet.derive(annmnemonicSplit, networkInfo,
        derivationPath: "m/44'/744'/0'/0/0");

    final sponsorwallet = Wallet.derive(sponsormnemonic.split(' '), networkInfo,
        derivationPath: "m/44'/744'/0'/0/0");

    alwallet = sponsorwallet;


    // Create the transaction and send it
    final message = bank.MsgSend.create();
    message.fromAddress = alwallet.bech32Address;
    message.toAddress = annwallet.bech32Address;
    message.amount.add(Coin.create()
      ..denom = 'aqdn'
      ..amount = '1234');


    final signer = TxSigner.fromNetworkInfo(networkInfo);
    final tx = await signer.createAndSign(alwallet, [message]);


    // 4. Broadcast the transaction
    final txSender = TxSender.fromNetworkInfo(networkInfo);
    final response = await txSender.broadcastTx(tx);

    // Check the result
    if (response.isSuccessful) {
      print('Tx sent successfully. Response: $response');
    } else {
      print('Tx errored: $response');
    }
  });
}
