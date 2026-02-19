//
//  Generated code. Do not modify.
//  source: cosmos/counter/v1/tx.proto
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

@$pb.GrpcServiceName('cosmos.counter.v1.Msg')
class MsgClient extends $grpc.Client {
  static final _$increaseCount = $grpc.ClientMethod<$0.MsgIncreaseCounter, $0.MsgIncreaseCountResponse>(
      '/cosmos.counter.v1.Msg/IncreaseCount',
      ($0.MsgIncreaseCounter value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MsgIncreaseCountResponse.fromBuffer(value));

  MsgClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.MsgIncreaseCountResponse> increaseCount($0.MsgIncreaseCounter request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$increaseCount, request, options: options);
  }
}

@$pb.GrpcServiceName('cosmos.counter.v1.Msg')
abstract class MsgServiceBase extends $grpc.Service {
  $core.String get $name => 'cosmos.counter.v1.Msg';

  MsgServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.MsgIncreaseCounter, $0.MsgIncreaseCountResponse>(
        'IncreaseCount',
        increaseCount_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgIncreaseCounter.fromBuffer(value),
        ($0.MsgIncreaseCountResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.MsgIncreaseCountResponse> increaseCount_Pre($grpc.ServiceCall call, $async.Future<$0.MsgIncreaseCounter> request) async {
    return increaseCount(call, await request);
  }

  $async.Future<$0.MsgIncreaseCountResponse> increaseCount($grpc.ServiceCall call, $0.MsgIncreaseCounter request);
}
