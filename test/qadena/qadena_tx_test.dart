import 'package:qadena_alan/proto/cosmos/bank/v1beta1/export.dart' as bank;
import 'package:qadena_alan/qadena/core/client.dart';
import 'package:qadena_alan/qadena/types/qadena_hd_wallet.dart';
import 'package:test/test.dart';
import 'package:qadena_alan/alan.dart' as alan;


void main() {
  bool testLocalChain = true;

  final networkInfo = alan.NetworkInfo.fromSingleHost(
      bech32Hrp: 'qadena',
      host: 'localhost',
      isEthSecP256K1Addr: false,
      isTesting: true);

  QadenaClient client = QadenaClient(networkInfo);

  final hardCodedSponsorAcct = alan.Wallet.derive(
      "guilt decline utility scale crash envelope snap table dress coach tray use detect success lemon fatigue surround project warfare victory mean midnight address before"
          .split(' '),
      networkInfo,
      derivationPath: "m/44'/744'/0'/0/0");


  test('create account (create wallets, claim credentials, register authorized signatory)', () async {

    final account = await client.createAccount("pioneer1", null, "secdsvssrvprv", BigInt.from(1115), BigInt.from(1111), hardCodedSponsorAcct);

    expect(account.errorMessage, isNull);

    print("wallet: ${account.mainWallet!.transactionWalletAddress}");
    print("ephWallet: ${account.ephWallet!.transactionWalletAddress}");
    expect(account.ephWallet, isNotNull);
    expect(account.mainWallet, isNotNull);
  });

  test('createLocalAccount', () async {
    final localWallet = client.createLocalAccount();
    print("localWallet: $localWallet");
    print("localWallet: ${localWallet.txAddress}");
    expect(localWallet, isNotNull);
  });

  test('createWallet anonymous', () async {
    final wallet =
        await client.createWallet("pioneer1", null, 0, "secdsvssrvprv", hardCodedSponsorAcct.bech32Address); 
    final ephWallet =
        await client.createWallet("pioneer1", wallet!.seed, 1, null, hardCodedSponsorAcct.bech32Address);
    print("wallet: $wallet");
    print("ephWallet: $ephWallet");
    expect(ephWallet, isNotNull);
    expect(wallet, isNotNull);
  });

  test('registerAuthorizedSignatory', () async {
    final annmnemonic =
        "inherit rebel absorb diamond leopard lens approve deny balcony toast merry text metal pair diamond lumber gravity song liberty pumpkin goddess nature slush basic";
    final wallet = await client.createWallet(
        "pioneer1", annmnemonic.split(' '), 0, "secdsvssrvprv", hardCodedSponsorAcct.bech32Address);
    final ephWallet =
        await client.createWallet("pioneer1", wallet!.seed, 2, null, hardCodedSponsorAcct.bech32Address);
    print("wallet: $wallet");
    print("ephWallet: $ephWallet");
    final result = await ephWallet!.registerAuthorizedSignatory();
    print("registerAuthorizedSignatory result: $result");
    expect(result, isTrue);
  });

  test('registerAuthorizedSignatory 2', () async {
    final annmnemonic =
        "inherit rebel absorb diamond leopard lens approve deny balcony toast merry text metal pair diamond lumber gravity song liberty pumpkin goddess nature slush basic";
    final wallet = QadenaHDWallet(client.chain, client.networkInfo, annmnemonic.split(' '), 2);
    final result = await wallet.registerAuthorizedSignatory();
    print("registerAuthorizedSignatory result: $result");
    expect(result, isNull);
  });

  test('getAuthorizedSignatory', () async {
    final almnemonic =
        "palace friend deposit baby crunch flag airport mistake enlist island auction phrase double truck coffee salad hidden story orange couch useful feature electric crush";
    final wallet = await client.createWallet(
        "pioneer1", almnemonic.split(' '), 0, "secdsvssrvprv", hardCodedSponsorAcct.bech32Address);
    final ephWallet =
        await client.createWallet("pioneer1", wallet!.seed, 1, null, hardCodedSponsorAcct.bech32Address);
    print("wallet: $wallet");
    print("ephWallet: $ephWallet");

    final result = await wallet!.getAuthorizedSignatory();
    print("getAuthorizedSignatory result: $result");
  });

  test('signDocument', () async {
    final almnemonic =
        "palace friend deposit baby crunch flag airport mistake enlist island auction phrase double truck coffee salad hidden story orange couch useful feature electric crush";
    final ephWallet = QadenaHDWallet(client.chain, client.networkInfo, almnemonic.split(' '), 2);
    final result = await ephWallet!.signDocument(
      "document1",
      "87ec08842cc20d52583d15569de024409f9cc8531de47034c9779eb63bbc6900",
      "3df79d34abbca99308e79cb94461c1893582604d68329a41fd4bec1885e6adb4",
    );
    print("signDocument result: $result");
  });


  test('signDocument 2', () async {
    final almnemonic =
        "palace friend deposit baby crunch flag airport mistake enlist island auction phrase double truck coffee salad hidden story orange couch useful feature electric crush";
    final wallet = await client.createWallet(
        "pioneer1", almnemonic.split(' '), 0, "secdsvssrvprv", hardCodedSponsorAcct.bech32Address);
    final ephWallet =
        await client.createWallet("pioneer1", wallet!.seed, 1, null, hardCodedSponsorAcct.bech32Address);
    print("wallet: $wallet");
    print("ephWallet: $ephWallet");
    final result = await ephWallet!.signDocument(
      "document1",
      "87ec08842cc20d52583d15569de024409f9cc8531de47034c9779eb63bbc6900",
      "3df79d34abbca99308e79cb94461c1893582604d68329a41fd4bec1885e6adb4",
    );
    print("signDocument result: $result");
  });
  test('claimCredentials', () async {
    final wallet =
        await client.createWallet("pioneer1", null, 0, "secdsvssrvprv", hardCodedSponsorAcct.bech32Address);
    print("wallet: $wallet");
    final result =
        await wallet!.claimCredentials(BigInt.from(10234), BigInt.from(5678));
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

    final networkInfo = alan.NetworkInfo.fromSingleHost(
      bech32Hrp: 'qadena',
      host: 'localhost',
      isEthSecP256K1Addr: false,
    );

    final almnemonicSplit = almnemonic.split(' ');
    final annmnemonicSplit = annmnemonic.split(' ');

    var alwallet = alan.Wallet.derive(almnemonicSplit, networkInfo,
        derivationPath: "m/44'/744'/0'/0/0");

    var annwallet = alan.Wallet.derive(annmnemonicSplit, networkInfo,
        derivationPath: "m/44'/744'/0'/0/0");

    final sponsorwallet = alan.Wallet.derive(sponsormnemonic.split(' '), networkInfo,
        derivationPath: "m/44'/744'/0'/0/0");

    alwallet = sponsorwallet;

    // Create the transaction and send it
    final message = bank.MsgSend.create();
    message.fromAddress = alwallet.bech32Address;
    message.toAddress = annwallet.bech32Address;
    message.amount.add(alan.Coin.create()
      ..denom = 'aqdn'
      ..amount = '1234');

    final signer = alan.TxSigner.fromNetworkInfo(networkInfo);
    final tx = await signer.createAndSign(alwallet, [message]);

    // 4. Broadcast the transaction
    final txSender = alan.TxSender.fromNetworkInfo(networkInfo);
    final response = await txSender.broadcastTx(tx);

    // Check the result
    if (response.isSuccessful) {
      print('Tx sent successfully. Response: $response');
    } else {
      print('Tx errored: $response');
    }
  });
}
