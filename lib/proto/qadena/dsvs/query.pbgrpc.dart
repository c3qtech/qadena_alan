//
//  Generated code. Do not modify.
//  source: qadena/dsvs/query.proto
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

@$pb.GrpcServiceName('qadena.dsvs.Query')
class QueryClient extends $grpc.Client {
  static final _$params = $grpc.ClientMethod<$1.QueryParamsRequest, $1.QueryParamsResponse>(
      '/qadena.dsvs.Query/Params',
      ($1.QueryParamsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryParamsResponse.fromBuffer(value));
  static final _$documentHash = $grpc.ClientMethod<$1.QueryGetDocumentHashRequest, $1.QueryGetDocumentHashResponse>(
      '/qadena.dsvs.Query/DocumentHash',
      ($1.QueryGetDocumentHashRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryGetDocumentHashResponse.fromBuffer(value));
  static final _$documentHashAll = $grpc.ClientMethod<$1.QueryAllDocumentHashRequest, $1.QueryAllDocumentHashResponse>(
      '/qadena.dsvs.Query/DocumentHashAll',
      ($1.QueryAllDocumentHashRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryAllDocumentHashResponse.fromBuffer(value));
  static final _$document = $grpc.ClientMethod<$1.QueryGetDocumentRequest, $1.QueryGetDocumentResponse>(
      '/qadena.dsvs.Query/Document',
      ($1.QueryGetDocumentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryGetDocumentResponse.fromBuffer(value));
  static final _$documentAll = $grpc.ClientMethod<$1.QueryAllDocumentRequest, $1.QueryAllDocumentResponse>(
      '/qadena.dsvs.Query/DocumentAll',
      ($1.QueryAllDocumentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryAllDocumentResponse.fromBuffer(value));
  static final _$authorizedSignatory = $grpc.ClientMethod<$1.QueryGetAuthorizedSignatoryRequest, $1.QueryGetAuthorizedSignatoryResponse>(
      '/qadena.dsvs.Query/AuthorizedSignatory',
      ($1.QueryGetAuthorizedSignatoryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryGetAuthorizedSignatoryResponse.fromBuffer(value));
  static final _$authorizedSignatoryAll = $grpc.ClientMethod<$1.QueryAllAuthorizedSignatoryRequest, $1.QueryAllAuthorizedSignatoryResponse>(
      '/qadena.dsvs.Query/AuthorizedSignatoryAll',
      ($1.QueryAllAuthorizedSignatoryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryAllAuthorizedSignatoryResponse.fromBuffer(value));

  QueryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.QueryParamsResponse> params($1.QueryParamsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$params, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryGetDocumentHashResponse> documentHash($1.QueryGetDocumentHashRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$documentHash, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryAllDocumentHashResponse> documentHashAll($1.QueryAllDocumentHashRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$documentHashAll, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryGetDocumentResponse> document($1.QueryGetDocumentRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$document, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryAllDocumentResponse> documentAll($1.QueryAllDocumentRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$documentAll, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryGetAuthorizedSignatoryResponse> authorizedSignatory($1.QueryGetAuthorizedSignatoryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authorizedSignatory, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryAllAuthorizedSignatoryResponse> authorizedSignatoryAll($1.QueryAllAuthorizedSignatoryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authorizedSignatoryAll, request, options: options);
  }
}

@$pb.GrpcServiceName('qadena.dsvs.Query')
abstract class QueryServiceBase extends $grpc.Service {
  $core.String get $name => 'qadena.dsvs.Query';

  QueryServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.QueryParamsRequest, $1.QueryParamsResponse>(
        'Params',
        params_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryParamsRequest.fromBuffer(value),
        ($1.QueryParamsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryGetDocumentHashRequest, $1.QueryGetDocumentHashResponse>(
        'DocumentHash',
        documentHash_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryGetDocumentHashRequest.fromBuffer(value),
        ($1.QueryGetDocumentHashResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryAllDocumentHashRequest, $1.QueryAllDocumentHashResponse>(
        'DocumentHashAll',
        documentHashAll_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryAllDocumentHashRequest.fromBuffer(value),
        ($1.QueryAllDocumentHashResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryGetDocumentRequest, $1.QueryGetDocumentResponse>(
        'Document',
        document_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryGetDocumentRequest.fromBuffer(value),
        ($1.QueryGetDocumentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryAllDocumentRequest, $1.QueryAllDocumentResponse>(
        'DocumentAll',
        documentAll_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryAllDocumentRequest.fromBuffer(value),
        ($1.QueryAllDocumentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryGetAuthorizedSignatoryRequest, $1.QueryGetAuthorizedSignatoryResponse>(
        'AuthorizedSignatory',
        authorizedSignatory_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryGetAuthorizedSignatoryRequest.fromBuffer(value),
        ($1.QueryGetAuthorizedSignatoryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryAllAuthorizedSignatoryRequest, $1.QueryAllAuthorizedSignatoryResponse>(
        'AuthorizedSignatoryAll',
        authorizedSignatoryAll_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryAllAuthorizedSignatoryRequest.fromBuffer(value),
        ($1.QueryAllAuthorizedSignatoryResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.QueryParamsResponse> params_Pre($grpc.ServiceCall call, $async.Future<$1.QueryParamsRequest> request) async {
    return params(call, await request);
  }

  $async.Future<$1.QueryGetDocumentHashResponse> documentHash_Pre($grpc.ServiceCall call, $async.Future<$1.QueryGetDocumentHashRequest> request) async {
    return documentHash(call, await request);
  }

  $async.Future<$1.QueryAllDocumentHashResponse> documentHashAll_Pre($grpc.ServiceCall call, $async.Future<$1.QueryAllDocumentHashRequest> request) async {
    return documentHashAll(call, await request);
  }

  $async.Future<$1.QueryGetDocumentResponse> document_Pre($grpc.ServiceCall call, $async.Future<$1.QueryGetDocumentRequest> request) async {
    return document(call, await request);
  }

  $async.Future<$1.QueryAllDocumentResponse> documentAll_Pre($grpc.ServiceCall call, $async.Future<$1.QueryAllDocumentRequest> request) async {
    return documentAll(call, await request);
  }

  $async.Future<$1.QueryGetAuthorizedSignatoryResponse> authorizedSignatory_Pre($grpc.ServiceCall call, $async.Future<$1.QueryGetAuthorizedSignatoryRequest> request) async {
    return authorizedSignatory(call, await request);
  }

  $async.Future<$1.QueryAllAuthorizedSignatoryResponse> authorizedSignatoryAll_Pre($grpc.ServiceCall call, $async.Future<$1.QueryAllAuthorizedSignatoryRequest> request) async {
    return authorizedSignatoryAll(call, await request);
  }

  $async.Future<$1.QueryParamsResponse> params($grpc.ServiceCall call, $1.QueryParamsRequest request);
  $async.Future<$1.QueryGetDocumentHashResponse> documentHash($grpc.ServiceCall call, $1.QueryGetDocumentHashRequest request);
  $async.Future<$1.QueryAllDocumentHashResponse> documentHashAll($grpc.ServiceCall call, $1.QueryAllDocumentHashRequest request);
  $async.Future<$1.QueryGetDocumentResponse> document($grpc.ServiceCall call, $1.QueryGetDocumentRequest request);
  $async.Future<$1.QueryAllDocumentResponse> documentAll($grpc.ServiceCall call, $1.QueryAllDocumentRequest request);
  $async.Future<$1.QueryGetAuthorizedSignatoryResponse> authorizedSignatory($grpc.ServiceCall call, $1.QueryGetAuthorizedSignatoryRequest request);
  $async.Future<$1.QueryAllAuthorizedSignatoryResponse> authorizedSignatoryAll($grpc.ServiceCall call, $1.QueryAllAuthorizedSignatoryRequest request);
}
