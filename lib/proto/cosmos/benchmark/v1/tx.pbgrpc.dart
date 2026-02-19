//
//  Generated code. Do not modify.
//  source: cosmos/benchmark/v1/tx.proto
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

import 'tx.pb.dart' as $0;

export 'tx.pb.dart';

@$pb.GrpcServiceName('cosmos.benchmark.v1.Msg')
class MsgClient extends $grpc.Client {
  static final _$loadTest = $grpc.ClientMethod<$0.MsgLoadTest, $0.MsgLoadTestResponse>(
      '/cosmos.benchmark.v1.Msg/LoadTest',
      ($0.MsgLoadTest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MsgLoadTestResponse.fromBuffer(value));

  MsgClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.MsgLoadTestResponse> loadTest($0.MsgLoadTest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$loadTest, request, options: options);
  }
}

@$pb.GrpcServiceName('cosmos.benchmark.v1.Msg')
abstract class MsgServiceBase extends $grpc.Service {
  $core.String get $name => 'cosmos.benchmark.v1.Msg';

  MsgServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.MsgLoadTest, $0.MsgLoadTestResponse>(
        'LoadTest',
        loadTest_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgLoadTest.fromBuffer(value),
        ($0.MsgLoadTestResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.MsgLoadTestResponse> loadTest_Pre($grpc.ServiceCall call, $async.Future<$0.MsgLoadTest> request) async {
    return loadTest(call, await request);
  }

  $async.Future<$0.MsgLoadTestResponse> loadTest($grpc.ServiceCall call, $0.MsgLoadTest request);
}
