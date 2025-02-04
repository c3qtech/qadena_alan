import 'dart:convert';
import 'dart:typed_data';

import 'package:qadena_alan/alan.dart';
import 'package:qadena_alan/proto/cosmos/base/tendermint/v1beta1/export.dart'
    as tendermint;
import 'package:qadena_alan/proto/cosmos/base/tendermint/v1beta1/query.pb.dart';
import 'package:qadena_alan/proto/tendermint/p2p/types.pb.dart';
import 'package:qadena_alan/qadena.dart';
import 'package:qadena_alan/qadena/common.dart';
import 'package:convert/convert.dart';
import 'package:grpc/grpc.dart';
import 'package:test/test.dart';
import 'package:qadena_alan/proto/cosmos/bank/v1beta1/export.dart' as bank;
import 'package:hex/hex.dart';

import 'package:qadena_alan/qadena/encrypt.dart';


import 'package:qadena_alan/proto/qadena/qadena/export.dart' as qadena;

void main() {
  bool testLocalChain = true;
  initECPedersen();
  late tendermint.ServiceClient client;
//  late NodeQuerier querier;
//  late Bank
  final networkInfo = NetworkInfo.fromSingleHost(
    bech32Hrp: 'qadena',
    host: 'localhost',
    isEthSecP256K1Addr: false,
  );

  setUp(() {
    client = tendermint.ServiceClient(networkInfo.gRPCChannel);
    //querier = NodeQuerier(client: client);
  });

  test('addresss format ethsecp256k1', () {
    final networkInfo = NetworkInfo.fromSingleHost(
      bech32Hrp: 'qadena',
      host: 'localhost',
      isEthSecP256K1Addr: true,
    );
    final mnemonicFull =
        "inherit rebel absorb diamond leopard lens approve deny balcony toast merry text metal pair diamond lumber gravity song liberty pumpkin goddess nature slush basic";
    final mnemonic = mnemonicFull.split(' ');

    final wallet = Wallet.derive(mnemonic, networkInfo,
        derivationPath: "m/44'/744'/0'/0/0");
    final hexaddress = HEX.encode(wallet.address);
    print("address $hexaddress");
  });

  test('addresss format secp256k1', () {
    final networkInfo2 = NetworkInfo.fromSingleHost(
      bech32Hrp: 'qadena',
      host: 'localhost',
      isEthSecP256K1Addr: false,
    );
    final mnemonicFull =
        "inherit rebel absorb diamond leopard lens approve deny balcony toast merry text metal pair diamond lumber gravity song liberty pumpkin goddess nature slush basic";
    final mnemonic = mnemonicFull.split(' ');

    final wallet = Wallet.derive(mnemonic, networkInfo2,
        derivationPath: "m/44'/744'/0'/0/0");
    final hexaddress = HEX.encode(wallet.address);
    print("address $hexaddress");

    final bech32address = wallet.bech32Address;

    print("bech32 address: $bech32address");
  });

  group('test protoizer', () {
    test('test bigint protoizer', () async {
      BigInt x = BigInt.from(123);
      final bint = protoizeBInt(x);
      BigInt y = unprotoizeBInt(bint);
      print("x: $x");
      print("y: $y");
      // check if x and y are equal
      expect(x, equals(y));
    });

    test('test bigint protoizer negative', () async {
      BigInt x = BigInt.from(-123);
      final bint = protoizeBInt(x);
      BigInt y = unprotoizeBInt(bint);
      print("x: $x");
      print("y: $y");
      // check if x and y are equal
      expect(x, equals(y));
    });
  });

  group('testQuery', () {

    if (!testLocalChain) return;

    test('query chain', () async {
      final req = tendermint.GetNodeInfoRequest();
      ResponseFuture<GetNodeInfoResponse> res = client.getNodeInfo(req);
      GetNodeInfoResponse nodeInfo = await res;
      print("nodeInfo : $nodeInfo");

      final glbr = tendermint.GetLatestBlockRequest();
      final glbrRes = await client.getLatestBlock(glbr);
      print("glbrRes : $glbrRes");
      print("chainID: ${glbrRes.block.header.chainId}");

      final bank.QueryClient bankClient =
          bank.QueryClient(networkInfo.gRPCChannel);

      final mnemonicFull =
          "inherit rebel absorb diamond leopard lens approve deny balcony toast merry text metal pair diamond lumber gravity song liberty pumpkin goddess nature slush basic";
      final mnemonic = mnemonicFull.split(' ');

      final wallet = Wallet.derive(mnemonic, networkInfo,
          derivationPath: "m/44'/744'/0'/0/0");

      final privKHex = HEX.encode(wallet.privateKey);
      print("privKHex: $privKHex");
      final pubK = base64.encode(wallet.publicKey);
      print("pubK: $pubK");

      final queryBank = bank.QueryAllBalancesRequest.create()
        ..address = wallet.bech32Address;
      final allBalances = await bankClient.allBalances(queryBank);
      print("allBalances : $allBalances");

      // test query treasury
      final qadenaQueryClient = qadena.QueryClient(networkInfo.gRPCChannel);
      final treasury = await qadenaQueryClient.treasury(qadena.QueryTreasuryRequest());
      print("treasury : $treasury");

      final qadenaWallet = await qadenaQueryClient.wallet(qadena.QueryGetWalletRequest.create()..walletID = wallet.bech32Address);
      print("wallet : $qadenaWallet");

      // print out the keys of qadenaWallet.wallet.walletAmount
      for (var denom in qadenaWallet.wallet.walletAmount.keys) {
        print("denom: $denom");
      }

      final unprotoizedVShareBindData = unprotoizeVShareBindData(qadenaWallet.wallet.createWalletVShareBind);

      print("unprotoizedVShareBindData: $unprotoizedVShareBindData");

      var enc = Uint8List.fromList(qadenaWallet.wallet.encCreateWalletVShare);

      if (vShareBVerifyAll(unprotoizedVShareBindData, enc)) {
        print("vShareBVerifyAll: true");
        qadena.EncryptableCreateWallet ewv = qadena.EncryptableCreateWallet.create();

        if (vShareBDecryptAndProtoUnmarshal(privKHex, pubK, unprotoizedVShareBindData, enc, ewv)) {
          print("vShareBDecryptAndProtoUnmarshal: true");
          print("ewv: $ewv");
        } else {
          print("vShareBDecryptAndProtoUnmarshal: false");
        }

      } else {
        print("vShareBVerifyAll: false");
      }



      // Then in the test, after getting the wallet:
      // decrypt wallet's walletAmount
      for (var denom in qadenaWallet.wallet.walletAmount.keys) {
        // Decrypt the wallet amount
        if (qadenaWallet.wallet.walletAmount[denom]!.encWalletAmountVShare.isNotEmpty) {
          qadena.EncryptableWalletAmount ewa = qadena.EncryptableWalletAmount.create();

          final success = bDecryptAndProtoUnmarshal(privKHex, Uint8List.fromList(qadenaWallet.wallet.walletAmount[denom]!.encWalletAmountVShare), ewa);

          if (!success) {
            print("failed to decrypt walletAmount");
            continue;
          }

          print("walletAmount: $ewa");

          final unprotoizedEncryptablePedersenCommit = unprotoizeEncryptablePedersenCommit(ewa.pedersenCommit);

          //print("decryptedAmount pedersenCommit.a: ${unprotoizedEncryptablePedersenCommit.A}");
          //print("decryptedAmount pedersenCommit.x: ${unprotoizedEncryptablePedersenCommit.X}");
          print("ewa.pedersenCommit: ${unprotoizedEncryptablePedersenCommit}");
        }
      }

    });
  });
}
