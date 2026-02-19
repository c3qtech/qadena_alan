//
//  Generated code. Do not modify.
//  source: cosmos/epochs/v1beta1/query.proto
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

import 'query.pb.dart' as $0;

export 'query.pb.dart';

@$pb.GrpcServiceName('cosmos.epochs.v1beta1.Query')
class QueryClient extends $grpc.Client {
  static final _$epochInfos = $grpc.ClientMethod<$0.QueryEpochInfosRequest, $0.QueryEpochInfosResponse>(
      '/cosmos.epochs.v1beta1.Query/EpochInfos',
      ($0.QueryEpochInfosRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.QueryEpochInfosResponse.fromBuffer(value));
  static final _$currentEpoch = $grpc.ClientMethod<$0.QueryCurrentEpochRequest, $0.QueryCurrentEpochResponse>(
      '/cosmos.epochs.v1beta1.Query/CurrentEpoch',
      ($0.QueryCurrentEpochRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.QueryCurrentEpochResponse.fromBuffer(value));

  QueryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.QueryEpochInfosResponse> epochInfos($0.QueryEpochInfosRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$epochInfos, request, options: options);
  }

  $grpc.ResponseFuture<$0.QueryCurrentEpochResponse> currentEpoch($0.QueryCurrentEpochRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$currentEpoch, request, options: options);
  }
}

@$pb.GrpcServiceName('cosmos.epochs.v1beta1.Query')
abstract class QueryServiceBase extends $grpc.Service {
  $core.String get $name => 'cosmos.epochs.v1beta1.Query';

  QueryServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.QueryEpochInfosRequest, $0.QueryEpochInfosResponse>(
        'EpochInfos',
        epochInfos_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.QueryEpochInfosRequest.fromBuffer(value),
        ($0.QueryEpochInfosResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.QueryCurrentEpochRequest, $0.QueryCurrentEpochResponse>(
        'CurrentEpoch',
        currentEpoch_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.QueryCurrentEpochRequest.fromBuffer(value),
        ($0.QueryCurrentEpochResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.QueryEpochInfosResponse> epochInfos_Pre($grpc.ServiceCall call, $async.Future<$0.QueryEpochInfosRequest> request) async {
    return epochInfos(call, await request);
  }

  $async.Future<$0.QueryCurrentEpochResponse> currentEpoch_Pre($grpc.ServiceCall call, $async.Future<$0.QueryCurrentEpochRequest> request) async {
    return currentEpoch(call, await request);
  }

  $async.Future<$0.QueryEpochInfosResponse> epochInfos($grpc.ServiceCall call, $0.QueryEpochInfosRequest request);
  $async.Future<$0.QueryCurrentEpochResponse> currentEpoch($grpc.ServiceCall call, $0.QueryCurrentEpochRequest request);
}
