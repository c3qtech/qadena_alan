//
//  Generated code. Do not modify.
//  source: cosmos/authz/v1beta1/query.proto
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

@$pb.GrpcServiceName('cosmos.authz.v1beta1.Query')
class QueryClient extends $grpc.Client {
  static final _$grants = $grpc.ClientMethod<$1.QueryGrantsRequest, $1.QueryGrantsResponse>(
      '/cosmos.authz.v1beta1.Query/Grants',
      ($1.QueryGrantsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryGrantsResponse.fromBuffer(value));
  static final _$granterGrants = $grpc.ClientMethod<$1.QueryGranterGrantsRequest, $1.QueryGranterGrantsResponse>(
      '/cosmos.authz.v1beta1.Query/GranterGrants',
      ($1.QueryGranterGrantsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryGranterGrantsResponse.fromBuffer(value));
  static final _$granteeGrants = $grpc.ClientMethod<$1.QueryGranteeGrantsRequest, $1.QueryGranteeGrantsResponse>(
      '/cosmos.authz.v1beta1.Query/GranteeGrants',
      ($1.QueryGranteeGrantsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryGranteeGrantsResponse.fromBuffer(value));

  QueryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.QueryGrantsResponse> grants($1.QueryGrantsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$grants, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryGranterGrantsResponse> granterGrants($1.QueryGranterGrantsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$granterGrants, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryGranteeGrantsResponse> granteeGrants($1.QueryGranteeGrantsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$granteeGrants, request, options: options);
  }
}

@$pb.GrpcServiceName('cosmos.authz.v1beta1.Query')
abstract class QueryServiceBase extends $grpc.Service {
  $core.String get $name => 'cosmos.authz.v1beta1.Query';

  QueryServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.QueryGrantsRequest, $1.QueryGrantsResponse>(
        'Grants',
        grants_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryGrantsRequest.fromBuffer(value),
        ($1.QueryGrantsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryGranterGrantsRequest, $1.QueryGranterGrantsResponse>(
        'GranterGrants',
        granterGrants_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryGranterGrantsRequest.fromBuffer(value),
        ($1.QueryGranterGrantsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryGranteeGrantsRequest, $1.QueryGranteeGrantsResponse>(
        'GranteeGrants',
        granteeGrants_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryGranteeGrantsRequest.fromBuffer(value),
        ($1.QueryGranteeGrantsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.QueryGrantsResponse> grants_Pre($grpc.ServiceCall call, $async.Future<$1.QueryGrantsRequest> request) async {
    return grants(call, await request);
  }

  $async.Future<$1.QueryGranterGrantsResponse> granterGrants_Pre($grpc.ServiceCall call, $async.Future<$1.QueryGranterGrantsRequest> request) async {
    return granterGrants(call, await request);
  }

  $async.Future<$1.QueryGranteeGrantsResponse> granteeGrants_Pre($grpc.ServiceCall call, $async.Future<$1.QueryGranteeGrantsRequest> request) async {
    return granteeGrants(call, await request);
  }

  $async.Future<$1.QueryGrantsResponse> grants($grpc.ServiceCall call, $1.QueryGrantsRequest request);
  $async.Future<$1.QueryGranterGrantsResponse> granterGrants($grpc.ServiceCall call, $1.QueryGranterGrantsRequest request);
  $async.Future<$1.QueryGranteeGrantsResponse> granteeGrants($grpc.ServiceCall call, $1.QueryGranteeGrantsRequest request);
}
