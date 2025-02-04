//
//  Generated code. Do not modify.
//  source: qadena/nameservice/tx.proto
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

@$pb.GrpcServiceName('qadena.nameservice.Msg')
class MsgClient extends $grpc.Client {
  static final _$updateParams = $grpc.ClientMethod<$0.MsgUpdateParams, $0.MsgUpdateParamsResponse>(
      '/qadena.nameservice.Msg/UpdateParams',
      ($0.MsgUpdateParams value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MsgUpdateParamsResponse.fromBuffer(value));
  static final _$bindCredential = $grpc.ClientMethod<$0.MsgBindCredential, $0.MsgBindCredentialResponse>(
      '/qadena.nameservice.Msg/BindCredential',
      ($0.MsgBindCredential value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MsgBindCredentialResponse.fromBuffer(value));

  MsgClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.MsgUpdateParamsResponse> updateParams($0.MsgUpdateParams request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateParams, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgBindCredentialResponse> bindCredential($0.MsgBindCredential request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$bindCredential, request, options: options);
  }
}

@$pb.GrpcServiceName('qadena.nameservice.Msg')
abstract class MsgServiceBase extends $grpc.Service {
  $core.String get $name => 'qadena.nameservice.Msg';

  MsgServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.MsgUpdateParams, $0.MsgUpdateParamsResponse>(
        'UpdateParams',
        updateParams_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgUpdateParams.fromBuffer(value),
        ($0.MsgUpdateParamsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgBindCredential, $0.MsgBindCredentialResponse>(
        'BindCredential',
        bindCredential_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgBindCredential.fromBuffer(value),
        ($0.MsgBindCredentialResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.MsgUpdateParamsResponse> updateParams_Pre($grpc.ServiceCall call, $async.Future<$0.MsgUpdateParams> request) async {
    return updateParams(call, await request);
  }

  $async.Future<$0.MsgBindCredentialResponse> bindCredential_Pre($grpc.ServiceCall call, $async.Future<$0.MsgBindCredential> request) async {
    return bindCredential(call, await request);
  }

  $async.Future<$0.MsgUpdateParamsResponse> updateParams($grpc.ServiceCall call, $0.MsgUpdateParams request);
  $async.Future<$0.MsgBindCredentialResponse> bindCredential($grpc.ServiceCall call, $0.MsgBindCredential request);
}
