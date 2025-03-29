import 'package:qadena_alan/alan.dart';
import 'package:qadena_alan/proto/cosmos/tx/v1beta1/export.dart' as tx;
import 'package:grpc/grpc_or_grpcweb.dart';

/// Allows to easily send a [StdTx] using the data contained inside the
/// specified [Wallet].
class TxSender {
  final tx.ServiceClient _client;

  TxSender({required tx.ServiceClient client}) : _client = client;

  /// Builds a new [TxSender] given a [ClientChannel].
  factory TxSender.build(GrpcOrGrpcWebClientChannel channel) {
    return TxSender(client: tx.ServiceClient(channel));
  }

  /// Builds a new [TxSender] from the given [NetworkInfo].
  factory TxSender.fromNetworkInfo(NetworkInfo info) {
    return TxSender.build(info.gRPCChannel);
  }

  /// Broadcasts the given [tx] using the info contained
  /// inside the given [wallet].
  /// Returns the hash of the transaction once it has been send, or throws an
  /// exception if an error is risen during the sending.
  Future<TxResponse> broadcastTx(
    Tx tx, {
    TxConfig? config,
    BroadcastMode mode = BroadcastMode.BROADCAST_MODE_SYNC,
  }) async {
    config ??= DefaultTxConfig.create();
    final encoder = config.txEncoder();

    final request = BroadcastTxRequest()
      ..mode = mode
      ..txBytes = encoder(tx);

    final response = await _client.broadcastTx(request);
    return response.txResponse;
  }

  Future<SimulateResponse> simulate(
    Tx tx, {
    TxConfig? config,
  }) async {
    config ??= DefaultTxConfig.create();
    final encoder = config.txEncoder();

    final request = SimulateRequest()..txBytes = encoder(tx);

    final response = await _client.simulate(request);
    return response;
  }

  Future<TxResponse> checkTx(TxResponse txResponse) async {
    final request = GetTxRequest()..hash = txResponse.txhash;
    final response = await _client.getTx(request);
//    print("checkTx: ${response}");
    return response.txResponse;
  }

  Future<TxResponse> checkTxByHash(String txhash) async {
    final request = GetTxRequest()..hash = txhash;
    final response = await _client.getTx(request);
//    print("checkTx: ${response}");
    return response.txResponse;
  }


}
