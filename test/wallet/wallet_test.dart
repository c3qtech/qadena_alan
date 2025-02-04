import 'dart:collection';
import 'dart:convert';
import 'dart:typed_data';

import 'package:qadena_alan/alan.dart';
import 'package:hex/hex.dart';
import 'package:test/test.dart';

void main() {
  final networkInfo = NetworkInfo.fromSingleHost(bech32Hrp: 'qadena', host: '', isEthSecP256K1Addr: true);

  final testVectors = {
    'qadena15fyr7wpx8j8ckm2gxfygqn48hfkq90zukxt70r':
        'inherit rebel absorb diamond leopard lens approve deny balcony toast merry text metal pair diamond lumber gravity song liberty pumpkin goddess nature slush basic',
    
  };

  group('derive', () {
    test('throws exception with invalid mnemonic', () {
      expect(() => Wallet.derive([], networkInfo, derivationPath: "m/44'/60'/0'/0/0"), throwsException);
    });

    test('works properly with valid mnemonic', () {
      testVectors.forEach((address, mnemonicString) {
        final mnemonic = mnemonicString.split(' ');
        final wallet = Wallet.derive(mnemonic, networkInfo, derivationPath: "m/44'/60'/0'/0/0");
        expect(wallet.bech32Address, address);
      });
    });
  });

  test('random generates different wallets', () {
    final info =
        NetworkInfo.fromSingleHost(bech32Hrp: 'qadena', host: 'example.com');
    final wallets = List.generate(20, (index) => Wallet.random(info));

    final map = HashMap.fromIterable(
      wallets,
      key: (entry) => (entry as Wallet).bech32Address,
      value: (entry) => entry,
    );
    expect(map.entries, hasLength(wallets.length));
  });

  test('convert works properly', () {
    final mnemonicFull = "inherit rebel absorb diamond leopard lens approve deny balcony toast merry text metal pair diamond lumber gravity song liberty pumpkin goddess nature slush basic";
    final mnemonic = mnemonicFull.split(' ');

    final cosmosAddr = 'cosmos15fyr7wpx8j8ckm2gxfygqn48hfkq90zuc9qwqt';
    final cosmosInfo =
        NetworkInfo.fromSingleHost(bech32Hrp: 'cosmos', host: 'example.com', isEthSecP256K1Addr: true);

    final wallet = Wallet.derive(mnemonic, cosmosInfo, derivationPath: "m/44'/60'/0'/0/0");
    expect(wallet.bech32Address, cosmosAddr);

    final desmosAddr = 'desmos15fyr7wpx8j8ckm2gxfygqn48hfkq90zuvad7hn';
    final desmosInfo =
        NetworkInfo.fromSingleHost(bech32Hrp: 'desmos', host: 'example.com', isEthSecP256K1Addr: true);

    final converted = Wallet.convert(wallet, desmosInfo);
    expect(converted.bech32Address, desmosAddr);

    final qadenaAddr = 'qadena15fyr7wpx8j8ckm2gxfygqn48hfkq90zukxt70r';
    final qadenaInfo =
        NetworkInfo.fromSingleHost(bech32Hrp: 'qadena', host: 'example.com', isEthSecP256K1Addr: true);

    final converted2 = Wallet.convert(wallet, qadenaInfo);
    expect(converted2.bech32Address, qadenaAddr);

  });

  test('import wallet', () {
    final privateKey =
        'f0ca60ab2091f1a54a70f8fcf7b14af923e865e8aaaf9894a79cd7aa906d922d';
    final trueAddress = 'cosmos19c506umkrd4ptva9r3gjy7afmjnr4mlgalfmu0';
    final cosmosInfo =
        NetworkInfo.fromSingleHost(bech32Hrp: 'cosmos', host: 'example.com');

    final wallet =
        Wallet.import(cosmosInfo, Uint8List.fromList(HEX.decode(privateKey)));
    expect(wallet.bech32Address, trueAddress);

    
  });

  test('import wallet ethsecp256k1', () {
    final privateKey =
        '4a5b724f07afd940bd70712ee352bd2b6462d0fe43ad4ef3083fdc04a66961d7';
    final trueAddress = 'qadena15fyr7wpx8j8ckm2gxfygqn48hfkq90zukxt70r';
    final cosmosInfo =
        NetworkInfo.fromSingleHost(bech32Hrp: 'qadena', host: 'example.com', isEthSecP256K1Addr: true);

    final wallet =
        Wallet.import(cosmosInfo, Uint8List.fromList(HEX.decode(privateKey)));
    expect(wallet.bech32Address, trueAddress);
  });


  test('toJson and fromJson work properly', () {
    final mnemonic =
        'final random flame cinnamon grunt hazard easily mutual resist pond solution define knife female tongue crime atom jaguar alert library best forum lesson rigid'
            .split(' ');
    final wallet = Wallet.derive(mnemonic, networkInfo);

    final jsonWallet = wallet.toJson();

    final privateKey = wallet.privateKey;
    final retrievedWallet = Wallet.fromJson(jsonWallet, privateKey);

    expect(wallet, retrievedWallet);
  });

  test('sign generates deterministic signatures', () {
    final info = NetworkInfo.fromSingleHost(bech32Hrp: 'did:com:', host: '');
    final mnemonic = [
      'will',
      'hard',
      'topic',
      'spray',
      'beyond',
      'ostrich',
      'moral',
      'morning',
      'gas',
      'loyal',
      'couch',
      'horn',
      'boss',
      'across',
      'age',
      'post',
      'october',
      'blur',
      'piece',
      'wheel',
      'film',
      'notable',
      'word',
      'man'
    ];
    final wallet = Wallet.derive(mnemonic, info);

    final data = 'Test';
    final sig1 = HEX.encode(wallet.sign(Uint8List.fromList(utf8.encode(data))));
    final sig2 = HEX.encode(wallet.sign(Uint8List.fromList(utf8.encode(data))));
    expect(true, sig1 == sig2);
  });

  test('derive with different derivation path works properly', () {
    final info = NetworkInfo.fromSingleHost(bech32Hrp: 'desmos', host: '');
    final mnemonic = [
      'roast',
      'stomach',
      'welcome',
      'please',
      'gauge',
      'funny',
      'coconut',
      'baby',
      'bird',
      'announce',
      'bind',
      'jacket',
      'title',
      'vibrant',
      'tomorrow',
      'indoor',
      'bitter',
      'initial',
      'ill',
      'analyst',
      'thought',
      'strike',
      'answer',
      'cotton',
    ];
    final wallet = Wallet.derive(
      mnemonic,
      info,
      derivationPath: "m/44'/852'/0'/0/0",
    );
    expect(
      wallet.bech32Address,
      'desmos1pcvzsr8kfe4lcpm5n60rjrgq0s5qtjh3stjj6p',
    );
  });
}
