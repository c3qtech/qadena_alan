import 'package:fixnum/src/int64.dart';
import 'dart:typed_data';

import 'package:qadena_alan/alan.dart';
import 'package:qadena_alan/proto/cosmos/crypto/secp256k1/export.dart' as secp256;
import 'package:qadena_alan/proto/cosmos/evm/crypto/v1/ethsecp256k1/export.dart' as ethsecp256;
import 'package:grpc/grpc_or_grpcweb.dart';
import 'package:http/http.dart' as http;
import 'package:protobuf/protobuf.dart';

/// Allows to create and sign a [Tx] object so that it can later
/// be sent to the chain.
class TxSigner {
  final AuthQuerier _authQuerier;
  final NodeQuerier _nodeQuerier;

  final bool isEthSecP256K1Addr;

  TxSigner({
    required AuthQuerier authQuerier,
    required NodeQuerier nodeQuerier,
    required this.isEthSecP256K1Addr,
  })  : _authQuerier = authQuerier,
        _nodeQuerier = nodeQuerier;


  /// Builds a new [TxSigner] from a given gRPC client channel and HTTP client.
  factory TxSigner.build(
    GrpcOrGrpcWebClientChannel clientChannel,
    http.Client httpClient,
    bool isEthSecP256K1Addr,
  ) {
    return TxSigner(
      authQuerier: AuthQuerier.build(clientChannel),
      nodeQuerier: NodeQuerier.build(clientChannel),
      isEthSecP256K1Addr: isEthSecP256K1Addr,
    );
  }

  /// Builds a new [TxSigner] from the given [NetworkInfo].
  factory TxSigner.fromNetworkInfo(NetworkInfo info) {
    final httpClient = http.Client();
    return TxSigner.build(info.gRPCChannel, httpClient, info.isEthSecP256K1Addr);
  }

  /// Creates a new [Tx] object containing the given [msgs] and signs it using
  /// the provided [wallet].
  /// Optional [TxConfig], memo, gas and fees can be supplied as well.
  Future<Tx> createAndSign(
    Wallet wallet,
    List<GeneratedMessage> msgs, {
    TxConfig? config,
    String? memo,
    Fee? fee,
    Int64? accountSequence,
    bool simulate = false
  }) async {
    // Set the config to the default value if not given
    config ??= DefaultTxConfig.create();
    var signMode = config.defaultSignMode();

    if (simulate) {
      signMode = SignMode.SIGN_MODE_UNSPECIFIED;
    }

    // Set the default fees
    fee ??= Fee()..gasLimit = 500000.toInt64();
    if (!fee.hasGasLimit()) {
      throw Exception('Invalid fees: invalid gas amount specified');
    }

    // Get the account data and node info from the network
    final account = await _authQuerier.getAccountData(wallet.bech32Address);
    if (account == null) {
      throw Exception(
        'Account ${wallet.bech32Address} does not exist on chain',
      );
    }

    accountSequence ??= account.sequence;

    // Get the node info data
    final nodeInfo = await _nodeQuerier.getNodeInfo();

    // Get the public key from the account, or generate it if the
    // chain does not have it yet
    var pubKey = account.pubKey;
    if (pubKey.value.isNotEmpty != true) {
      if (isEthSecP256K1Addr) {
        final ethSecp256Key = ethsecp256.PubKey.create()..key = wallet.publicKey;
        pubKey = Codec.serialize(ethSecp256Key);
      } else {
        final secp256Key = secp256.PubKey.create()..key = wallet.publicKey;
        pubKey = Codec.serialize(secp256Key);
      }
    }

    // For SIGN_MODE_DIRECT, calling SetSignatures calls setSignerInfos on
    // TxBuilder under the hood, and SignerInfos is needed to generated the
    // sign bytes. This is the reason for setting SetSignatures here, with a
    // nil signature.
    //
    // Note: this line is not needed for SIGN_MODE_LEGACY_AMINO, but putting it
    // also doesn't affect its generated sign bytes, so for code's simplicity
    // sake, we put it here.
    var sigData = SingleSignatureData(signMode: signMode, signature: null);

    // Set SignatureV2 with empty signatures, to set correct signer infos.
    var sig = SignatureV2(
      pubKey: pubKey,
      data: sigData,
      sequence: accountSequence,
    );

    // Create the transaction builder
    TxBuilder? tx;
    
    tx = config.newTxBuilder()
      ..setMsgs(msgs)
      ..setSignatures([sig])
      ..setMemo(memo)
      ..setFeeAmount(fee.amount)
      ..setFeePayer(fee.payer)
      ..setFeeGranter(fee.granter)
      ..setGasLimit(fee.gasLimit);

    if (!simulate) {
      // Generate the bytes to be signed.
      final handler = config.signModeHandler();
      final signerData = SignerData(
        chainId: nodeInfo.network,
        accountNumber: account.accountNumber,
        sequence: accountSequence,
      );
      final bytesToSign = handler.getSignBytes(signMode, signerData, tx.getTx());

      // Sign those bytes
      final sigBytes = wallet.sign(Uint8List.fromList(bytesToSign));

      // Construct the SignatureV2 struct
      sigData = SingleSignatureData(signMode: signMode, signature: sigBytes);
      sig = SignatureV2(
        pubKey: pubKey,
        data: sigData,
        sequence: accountSequence,
      );
    } else {
      sigData = SingleSignatureData(signMode: signMode, signature: []);
      sig = SignatureV2(
        pubKey: pubKey,
        data: sigData,
        sequence: accountSequence,
      );
    }

    tx.setSignatures([sig]);

    // Return the signed transaction
    return tx.getTx();
  }
}
