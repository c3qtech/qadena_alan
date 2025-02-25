// Create a channel to communicate with the server
import 'package:grpc/grpc.dart';

import 'package:qadena_alan/proto/cosmos/auth/v1beta1/export.dart' as auth;
import 'package:qadena_alan/proto/cosmos/bank/v1beta1/export.dart' as bank;
import 'package:qadena_alan/qadena/core/client/query/auth_query.dart';
import 'package:qadena_alan/qadena/core/client/query/bank.dart';
import 'package:qadena_alan/proto/qadena/qadena/export.dart' as qadena;
import 'package:qadena_alan/proto/qadena/dsvs/export.dart' as dsvs;
import 'package:qadena_alan/qadena/core/client/tx/feegrant_tx.dart';
import 'package:qadena_alan/qadena/core/client/query/dsvs_query.dart';
import 'package:qadena_alan/qadena/core/client/query/qadena_query.dart';
import 'package:qadena_alan/proto/cosmos/feegrant/v1beta1/export.dart'
    as feegrant;
import 'package:qadena_alan/wallet/network_info.dart';
import 'package:qadena_alan/alan.dart';

class Chain {
  final NetworkInfo networkInfo;
  late final AuthQuery authQuery;
  late final BankQuery bankQuery;
  late final FeeGrantTx feegrantTx;
  late final QadenaQuery qadenaQuery;
  late final DSVSQuery dsvsQuery;

  Chain(this.networkInfo) {
    authQuery = AuthQuery(AuthQuerier.build(networkInfo.gRPCChannel));
    bankQuery = BankQuery(bank.QueryClient(networkInfo.gRPCChannel));
    feegrantTx = FeeGrantTx(feegrant.MsgClient(networkInfo.gRPCChannel));
    qadenaQuery = QadenaQuery(qadena.QueryClient(networkInfo.gRPCChannel));
    dsvsQuery = DSVSQuery(dsvs.QueryClient(networkInfo.gRPCChannel));
  }
}
