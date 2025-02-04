//
//  Generated code. Do not modify.
//  source: qadena/nameservice/query.proto
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

@$pb.GrpcServiceName('qadena.nameservice.Query')
class QueryClient extends $grpc.Client {
  static final _$params = $grpc.ClientMethod<$1.QueryParamsRequest, $1.QueryParamsResponse>(
      '/qadena.nameservice.Query/Params',
      ($1.QueryParamsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryParamsResponse.fromBuffer(value));
  static final _$nameBinding = $grpc.ClientMethod<$1.QueryGetNameBindingRequest, $1.QueryGetNameBindingResponse>(
      '/qadena.nameservice.Query/NameBinding',
      ($1.QueryGetNameBindingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryGetNameBindingResponse.fromBuffer(value));
  static final _$nameBindingAll = $grpc.ClientMethod<$1.QueryAllNameBindingRequest, $1.QueryAllNameBindingResponse>(
      '/qadena.nameservice.Query/NameBindingAll',
      ($1.QueryAllNameBindingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryAllNameBindingResponse.fromBuffer(value));

  QueryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.QueryParamsResponse> params($1.QueryParamsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$params, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryGetNameBindingResponse> nameBinding($1.QueryGetNameBindingRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$nameBinding, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryAllNameBindingResponse> nameBindingAll($1.QueryAllNameBindingRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$nameBindingAll, request, options: options);
  }
}

@$pb.GrpcServiceName('qadena.nameservice.Query')
abstract class QueryServiceBase extends $grpc.Service {
  $core.String get $name => 'qadena.nameservice.Query';

  QueryServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.QueryParamsRequest, $1.QueryParamsResponse>(
        'Params',
        params_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryParamsRequest.fromBuffer(value),
        ($1.QueryParamsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryGetNameBindingRequest, $1.QueryGetNameBindingResponse>(
        'NameBinding',
        nameBinding_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryGetNameBindingRequest.fromBuffer(value),
        ($1.QueryGetNameBindingResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryAllNameBindingRequest, $1.QueryAllNameBindingResponse>(
        'NameBindingAll',
        nameBindingAll_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryAllNameBindingRequest.fromBuffer(value),
        ($1.QueryAllNameBindingResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.QueryParamsResponse> params_Pre($grpc.ServiceCall call, $async.Future<$1.QueryParamsRequest> request) async {
    return params(call, await request);
  }

  $async.Future<$1.QueryGetNameBindingResponse> nameBinding_Pre($grpc.ServiceCall call, $async.Future<$1.QueryGetNameBindingRequest> request) async {
    return nameBinding(call, await request);
  }

  $async.Future<$1.QueryAllNameBindingResponse> nameBindingAll_Pre($grpc.ServiceCall call, $async.Future<$1.QueryAllNameBindingRequest> request) async {
    return nameBindingAll(call, await request);
  }

  $async.Future<$1.QueryParamsResponse> params($grpc.ServiceCall call, $1.QueryParamsRequest request);
  $async.Future<$1.QueryGetNameBindingResponse> nameBinding($grpc.ServiceCall call, $1.QueryGetNameBindingRequest request);
  $async.Future<$1.QueryAllNameBindingResponse> nameBindingAll($grpc.ServiceCall call, $1.QueryAllNameBindingRequest request);
}
