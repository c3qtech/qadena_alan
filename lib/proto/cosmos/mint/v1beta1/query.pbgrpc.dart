//
//  Generated code. Do not modify.
//  source: cosmos/mint/v1beta1/query.proto
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

@$pb.GrpcServiceName('cosmos.mint.v1beta1.Query')
class QueryClient extends $grpc.Client {
  static final _$params = $grpc.ClientMethod<$1.QueryParamsRequest, $1.QueryParamsResponse>(
      '/cosmos.mint.v1beta1.Query/Params',
      ($1.QueryParamsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryParamsResponse.fromBuffer(value));
  static final _$inflation = $grpc.ClientMethod<$1.QueryInflationRequest, $1.QueryInflationResponse>(
      '/cosmos.mint.v1beta1.Query/Inflation',
      ($1.QueryInflationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryInflationResponse.fromBuffer(value));
  static final _$annualProvisions = $grpc.ClientMethod<$1.QueryAnnualProvisionsRequest, $1.QueryAnnualProvisionsResponse>(
      '/cosmos.mint.v1beta1.Query/AnnualProvisions',
      ($1.QueryAnnualProvisionsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryAnnualProvisionsResponse.fromBuffer(value));

  QueryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.QueryParamsResponse> params($1.QueryParamsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$params, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryInflationResponse> inflation($1.QueryInflationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$inflation, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryAnnualProvisionsResponse> annualProvisions($1.QueryAnnualProvisionsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$annualProvisions, request, options: options);
  }
}

@$pb.GrpcServiceName('cosmos.mint.v1beta1.Query')
abstract class QueryServiceBase extends $grpc.Service {
  $core.String get $name => 'cosmos.mint.v1beta1.Query';

  QueryServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.QueryParamsRequest, $1.QueryParamsResponse>(
        'Params',
        params_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryParamsRequest.fromBuffer(value),
        ($1.QueryParamsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryInflationRequest, $1.QueryInflationResponse>(
        'Inflation',
        inflation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryInflationRequest.fromBuffer(value),
        ($1.QueryInflationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryAnnualProvisionsRequest, $1.QueryAnnualProvisionsResponse>(
        'AnnualProvisions',
        annualProvisions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryAnnualProvisionsRequest.fromBuffer(value),
        ($1.QueryAnnualProvisionsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.QueryParamsResponse> params_Pre($grpc.ServiceCall call, $async.Future<$1.QueryParamsRequest> request) async {
    return params(call, await request);
  }

  $async.Future<$1.QueryInflationResponse> inflation_Pre($grpc.ServiceCall call, $async.Future<$1.QueryInflationRequest> request) async {
    return inflation(call, await request);
  }

  $async.Future<$1.QueryAnnualProvisionsResponse> annualProvisions_Pre($grpc.ServiceCall call, $async.Future<$1.QueryAnnualProvisionsRequest> request) async {
    return annualProvisions(call, await request);
  }

  $async.Future<$1.QueryParamsResponse> params($grpc.ServiceCall call, $1.QueryParamsRequest request);
  $async.Future<$1.QueryInflationResponse> inflation($grpc.ServiceCall call, $1.QueryInflationRequest request);
  $async.Future<$1.QueryAnnualProvisionsResponse> annualProvisions($grpc.ServiceCall call, $1.QueryAnnualProvisionsRequest request);
}
