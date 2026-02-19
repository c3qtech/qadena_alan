//
//  Generated code. Do not modify.
//  source: cosmos/protocolpool/v1/query.proto
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

@$pb.GrpcServiceName('cosmos.protocolpool.v1.Query')
class QueryClient extends $grpc.Client {
  static final _$communityPool = $grpc.ClientMethod<$1.QueryCommunityPoolRequest, $1.QueryCommunityPoolResponse>(
      '/cosmos.protocolpool.v1.Query/CommunityPool',
      ($1.QueryCommunityPoolRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryCommunityPoolResponse.fromBuffer(value));
  static final _$continuousFund = $grpc.ClientMethod<$1.QueryContinuousFundRequest, $1.QueryContinuousFundResponse>(
      '/cosmos.protocolpool.v1.Query/ContinuousFund',
      ($1.QueryContinuousFundRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryContinuousFundResponse.fromBuffer(value));
  static final _$continuousFunds = $grpc.ClientMethod<$1.QueryContinuousFundsRequest, $1.QueryContinuousFundsResponse>(
      '/cosmos.protocolpool.v1.Query/ContinuousFunds',
      ($1.QueryContinuousFundsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryContinuousFundsResponse.fromBuffer(value));
  static final _$params = $grpc.ClientMethod<$1.QueryParamsRequest, $1.QueryParamsResponse>(
      '/cosmos.protocolpool.v1.Query/Params',
      ($1.QueryParamsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryParamsResponse.fromBuffer(value));

  QueryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.QueryCommunityPoolResponse> communityPool($1.QueryCommunityPoolRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$communityPool, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryContinuousFundResponse> continuousFund($1.QueryContinuousFundRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$continuousFund, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryContinuousFundsResponse> continuousFunds($1.QueryContinuousFundsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$continuousFunds, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryParamsResponse> params($1.QueryParamsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$params, request, options: options);
  }
}

@$pb.GrpcServiceName('cosmos.protocolpool.v1.Query')
abstract class QueryServiceBase extends $grpc.Service {
  $core.String get $name => 'cosmos.protocolpool.v1.Query';

  QueryServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.QueryCommunityPoolRequest, $1.QueryCommunityPoolResponse>(
        'CommunityPool',
        communityPool_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryCommunityPoolRequest.fromBuffer(value),
        ($1.QueryCommunityPoolResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryContinuousFundRequest, $1.QueryContinuousFundResponse>(
        'ContinuousFund',
        continuousFund_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryContinuousFundRequest.fromBuffer(value),
        ($1.QueryContinuousFundResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryContinuousFundsRequest, $1.QueryContinuousFundsResponse>(
        'ContinuousFunds',
        continuousFunds_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryContinuousFundsRequest.fromBuffer(value),
        ($1.QueryContinuousFundsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryParamsRequest, $1.QueryParamsResponse>(
        'Params',
        params_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryParamsRequest.fromBuffer(value),
        ($1.QueryParamsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.QueryCommunityPoolResponse> communityPool_Pre($grpc.ServiceCall call, $async.Future<$1.QueryCommunityPoolRequest> request) async {
    return communityPool(call, await request);
  }

  $async.Future<$1.QueryContinuousFundResponse> continuousFund_Pre($grpc.ServiceCall call, $async.Future<$1.QueryContinuousFundRequest> request) async {
    return continuousFund(call, await request);
  }

  $async.Future<$1.QueryContinuousFundsResponse> continuousFunds_Pre($grpc.ServiceCall call, $async.Future<$1.QueryContinuousFundsRequest> request) async {
    return continuousFunds(call, await request);
  }

  $async.Future<$1.QueryParamsResponse> params_Pre($grpc.ServiceCall call, $async.Future<$1.QueryParamsRequest> request) async {
    return params(call, await request);
  }

  $async.Future<$1.QueryCommunityPoolResponse> communityPool($grpc.ServiceCall call, $1.QueryCommunityPoolRequest request);
  $async.Future<$1.QueryContinuousFundResponse> continuousFund($grpc.ServiceCall call, $1.QueryContinuousFundRequest request);
  $async.Future<$1.QueryContinuousFundsResponse> continuousFunds($grpc.ServiceCall call, $1.QueryContinuousFundsRequest request);
  $async.Future<$1.QueryParamsResponse> params($grpc.ServiceCall call, $1.QueryParamsRequest request);
}
