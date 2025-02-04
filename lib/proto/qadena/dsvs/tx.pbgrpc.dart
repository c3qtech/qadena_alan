//
//  Generated code. Do not modify.
//  source: qadena/dsvs/tx.proto
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

@$pb.GrpcServiceName('qadena.dsvs.Msg')
class MsgClient extends $grpc.Client {
  static final _$updateParams = $grpc.ClientMethod<$0.MsgUpdateParams, $0.MsgUpdateParamsResponse>(
      '/qadena.dsvs.Msg/UpdateParams',
      ($0.MsgUpdateParams value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MsgUpdateParamsResponse.fromBuffer(value));
  static final _$createDocument = $grpc.ClientMethod<$0.MsgCreateDocument, $0.MsgCreateDocumentResponse>(
      '/qadena.dsvs.Msg/CreateDocument',
      ($0.MsgCreateDocument value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MsgCreateDocumentResponse.fromBuffer(value));
  static final _$signDocument = $grpc.ClientMethod<$0.MsgSignDocument, $0.MsgSignDocumentResponse>(
      '/qadena.dsvs.Msg/SignDocument',
      ($0.MsgSignDocument value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MsgSignDocumentResponse.fromBuffer(value));
  static final _$registerAuthorizedSignatory = $grpc.ClientMethod<$0.MsgRegisterAuthorizedSignatory, $0.MsgRegisterAuthorizedSignatoryResponse>(
      '/qadena.dsvs.Msg/RegisterAuthorizedSignatory',
      ($0.MsgRegisterAuthorizedSignatory value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MsgRegisterAuthorizedSignatoryResponse.fromBuffer(value));

  MsgClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.MsgUpdateParamsResponse> updateParams($0.MsgUpdateParams request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateParams, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgCreateDocumentResponse> createDocument($0.MsgCreateDocument request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createDocument, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgSignDocumentResponse> signDocument($0.MsgSignDocument request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signDocument, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgRegisterAuthorizedSignatoryResponse> registerAuthorizedSignatory($0.MsgRegisterAuthorizedSignatory request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$registerAuthorizedSignatory, request, options: options);
  }
}

@$pb.GrpcServiceName('qadena.dsvs.Msg')
abstract class MsgServiceBase extends $grpc.Service {
  $core.String get $name => 'qadena.dsvs.Msg';

  MsgServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.MsgUpdateParams, $0.MsgUpdateParamsResponse>(
        'UpdateParams',
        updateParams_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgUpdateParams.fromBuffer(value),
        ($0.MsgUpdateParamsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgCreateDocument, $0.MsgCreateDocumentResponse>(
        'CreateDocument',
        createDocument_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgCreateDocument.fromBuffer(value),
        ($0.MsgCreateDocumentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgSignDocument, $0.MsgSignDocumentResponse>(
        'SignDocument',
        signDocument_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgSignDocument.fromBuffer(value),
        ($0.MsgSignDocumentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgRegisterAuthorizedSignatory, $0.MsgRegisterAuthorizedSignatoryResponse>(
        'RegisterAuthorizedSignatory',
        registerAuthorizedSignatory_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgRegisterAuthorizedSignatory.fromBuffer(value),
        ($0.MsgRegisterAuthorizedSignatoryResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.MsgUpdateParamsResponse> updateParams_Pre($grpc.ServiceCall call, $async.Future<$0.MsgUpdateParams> request) async {
    return updateParams(call, await request);
  }

  $async.Future<$0.MsgCreateDocumentResponse> createDocument_Pre($grpc.ServiceCall call, $async.Future<$0.MsgCreateDocument> request) async {
    return createDocument(call, await request);
  }

  $async.Future<$0.MsgSignDocumentResponse> signDocument_Pre($grpc.ServiceCall call, $async.Future<$0.MsgSignDocument> request) async {
    return signDocument(call, await request);
  }

  $async.Future<$0.MsgRegisterAuthorizedSignatoryResponse> registerAuthorizedSignatory_Pre($grpc.ServiceCall call, $async.Future<$0.MsgRegisterAuthorizedSignatory> request) async {
    return registerAuthorizedSignatory(call, await request);
  }

  $async.Future<$0.MsgUpdateParamsResponse> updateParams($grpc.ServiceCall call, $0.MsgUpdateParams request);
  $async.Future<$0.MsgCreateDocumentResponse> createDocument($grpc.ServiceCall call, $0.MsgCreateDocument request);
  $async.Future<$0.MsgSignDocumentResponse> signDocument($grpc.ServiceCall call, $0.MsgSignDocument request);
  $async.Future<$0.MsgRegisterAuthorizedSignatoryResponse> registerAuthorizedSignatory($grpc.ServiceCall call, $0.MsgRegisterAuthorizedSignatory request);
}
