//
//  Generated code. Do not modify.
//  source: cosmos/evm/feemarket/v1/query.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'query.pb.dart' as $1;

export 'query.pb.dart';

@$pb.GrpcServiceName('cosmos.evm.feemarket.v1.Query')
class QueryClient extends $grpc.Client {
  static final _$params = $grpc.ClientMethod<$1.QueryParamsRequest, $1.QueryParamsResponse>(
      '/cosmos.evm.feemarket.v1.Query/Params',
      ($1.QueryParamsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryParamsResponse.fromBuffer(value));
  static final _$baseFee = $grpc.ClientMethod<$1.QueryBaseFeeRequest, $1.QueryBaseFeeResponse>(
      '/cosmos.evm.feemarket.v1.Query/BaseFee',
      ($1.QueryBaseFeeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryBaseFeeResponse.fromBuffer(value));
  static final _$blockGas = $grpc.ClientMethod<$1.QueryBlockGasRequest, $1.QueryBlockGasResponse>(
      '/cosmos.evm.feemarket.v1.Query/BlockGas',
      ($1.QueryBlockGasRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryBlockGasResponse.fromBuffer(value));

  QueryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.QueryParamsResponse> params($1.QueryParamsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$params, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryBaseFeeResponse> baseFee($1.QueryBaseFeeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$baseFee, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryBlockGasResponse> blockGas($1.QueryBlockGasRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$blockGas, request, options: options);
  }
}

@$pb.GrpcServiceName('cosmos.evm.feemarket.v1.Query')
abstract class QueryServiceBase extends $grpc.Service {
  $core.String get $name => 'cosmos.evm.feemarket.v1.Query';

  QueryServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.QueryParamsRequest, $1.QueryParamsResponse>(
        'Params',
        params_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryParamsRequest.fromBuffer(value),
        ($1.QueryParamsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryBaseFeeRequest, $1.QueryBaseFeeResponse>(
        'BaseFee',
        baseFee_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryBaseFeeRequest.fromBuffer(value),
        ($1.QueryBaseFeeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryBlockGasRequest, $1.QueryBlockGasResponse>(
        'BlockGas',
        blockGas_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryBlockGasRequest.fromBuffer(value),
        ($1.QueryBlockGasResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.QueryParamsResponse> params_Pre($grpc.ServiceCall call, $async.Future<$1.QueryParamsRequest> request) async {
    return params(call, await request);
  }

  $async.Future<$1.QueryBaseFeeResponse> baseFee_Pre($grpc.ServiceCall call, $async.Future<$1.QueryBaseFeeRequest> request) async {
    return baseFee(call, await request);
  }

  $async.Future<$1.QueryBlockGasResponse> blockGas_Pre($grpc.ServiceCall call, $async.Future<$1.QueryBlockGasRequest> request) async {
    return blockGas(call, await request);
  }

  $async.Future<$1.QueryParamsResponse> params($grpc.ServiceCall call, $1.QueryParamsRequest request);
  $async.Future<$1.QueryBaseFeeResponse> baseFee($grpc.ServiceCall call, $1.QueryBaseFeeRequest request);
  $async.Future<$1.QueryBlockGasResponse> blockGas($grpc.ServiceCall call, $1.QueryBlockGasRequest request);
}
