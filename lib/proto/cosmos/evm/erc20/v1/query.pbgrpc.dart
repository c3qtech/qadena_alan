//
//  Generated code. Do not modify.
//  source: cosmos/evm/erc20/v1/query.proto
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

@$pb.GrpcServiceName('cosmos.evm.erc20.v1.Query')
class QueryClient extends $grpc.Client {
  static final _$tokenPairs = $grpc.ClientMethod<$1.QueryTokenPairsRequest, $1.QueryTokenPairsResponse>(
      '/cosmos.evm.erc20.v1.Query/TokenPairs',
      ($1.QueryTokenPairsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryTokenPairsResponse.fromBuffer(value));
  static final _$tokenPair = $grpc.ClientMethod<$1.QueryTokenPairRequest, $1.QueryTokenPairResponse>(
      '/cosmos.evm.erc20.v1.Query/TokenPair',
      ($1.QueryTokenPairRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryTokenPairResponse.fromBuffer(value));
  static final _$params = $grpc.ClientMethod<$1.QueryParamsRequest, $1.QueryParamsResponse>(
      '/cosmos.evm.erc20.v1.Query/Params',
      ($1.QueryParamsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryParamsResponse.fromBuffer(value));

  QueryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.QueryTokenPairsResponse> tokenPairs($1.QueryTokenPairsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$tokenPairs, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryTokenPairResponse> tokenPair($1.QueryTokenPairRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$tokenPair, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryParamsResponse> params($1.QueryParamsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$params, request, options: options);
  }
}

@$pb.GrpcServiceName('cosmos.evm.erc20.v1.Query')
abstract class QueryServiceBase extends $grpc.Service {
  $core.String get $name => 'cosmos.evm.erc20.v1.Query';

  QueryServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.QueryTokenPairsRequest, $1.QueryTokenPairsResponse>(
        'TokenPairs',
        tokenPairs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryTokenPairsRequest.fromBuffer(value),
        ($1.QueryTokenPairsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryTokenPairRequest, $1.QueryTokenPairResponse>(
        'TokenPair',
        tokenPair_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryTokenPairRequest.fromBuffer(value),
        ($1.QueryTokenPairResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryParamsRequest, $1.QueryParamsResponse>(
        'Params',
        params_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryParamsRequest.fromBuffer(value),
        ($1.QueryParamsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.QueryTokenPairsResponse> tokenPairs_Pre($grpc.ServiceCall call, $async.Future<$1.QueryTokenPairsRequest> request) async {
    return tokenPairs(call, await request);
  }

  $async.Future<$1.QueryTokenPairResponse> tokenPair_Pre($grpc.ServiceCall call, $async.Future<$1.QueryTokenPairRequest> request) async {
    return tokenPair(call, await request);
  }

  $async.Future<$1.QueryParamsResponse> params_Pre($grpc.ServiceCall call, $async.Future<$1.QueryParamsRequest> request) async {
    return params(call, await request);
  }

  $async.Future<$1.QueryTokenPairsResponse> tokenPairs($grpc.ServiceCall call, $1.QueryTokenPairsRequest request);
  $async.Future<$1.QueryTokenPairResponse> tokenPair($grpc.ServiceCall call, $1.QueryTokenPairRequest request);
  $async.Future<$1.QueryParamsResponse> params($grpc.ServiceCall call, $1.QueryParamsRequest request);
}
