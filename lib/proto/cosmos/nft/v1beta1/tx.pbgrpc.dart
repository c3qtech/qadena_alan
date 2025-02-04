//
//  Generated code. Do not modify.
//  source: cosmos/nft/v1beta1/tx.proto
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

@$pb.GrpcServiceName('cosmos.nft.v1beta1.Msg')
class MsgClient extends $grpc.Client {
  static final _$send = $grpc.ClientMethod<$0.MsgSend, $0.MsgSendResponse>(
      '/cosmos.nft.v1beta1.Msg/Send',
      ($0.MsgSend value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MsgSendResponse.fromBuffer(value));

  MsgClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.MsgSendResponse> send($0.MsgSend request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$send, request, options: options);
  }
}

@$pb.GrpcServiceName('cosmos.nft.v1beta1.Msg')
abstract class MsgServiceBase extends $grpc.Service {
  $core.String get $name => 'cosmos.nft.v1beta1.Msg';

  MsgServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.MsgSend, $0.MsgSendResponse>(
        'Send',
        send_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgSend.fromBuffer(value),
        ($0.MsgSendResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.MsgSendResponse> send_Pre($grpc.ServiceCall call, $async.Future<$0.MsgSend> request) async {
    return send(call, await request);
  }

  $async.Future<$0.MsgSendResponse> send($grpc.ServiceCall call, $0.MsgSend request);
}
