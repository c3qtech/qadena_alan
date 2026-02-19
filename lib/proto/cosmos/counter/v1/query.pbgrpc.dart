//
//  Generated code. Do not modify.
//  source: cosmos/counter/v1/query.proto
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

@$pb.GrpcServiceName('cosmos.counter.v1.Query')
class QueryClient extends $grpc.Client {
  static final _$getCount = $grpc.ClientMethod<$1.QueryGetCountRequest, $1.QueryGetCountResponse>(
      '/cosmos.counter.v1.Query/GetCount',
      ($1.QueryGetCountRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryGetCountResponse.fromBuffer(value));

  QueryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.QueryGetCountResponse> getCount($1.QueryGetCountRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCount, request, options: options);
  }
}

@$pb.GrpcServiceName('cosmos.counter.v1.Query')
abstract class QueryServiceBase extends $grpc.Service {
  $core.String get $name => 'cosmos.counter.v1.Query';

  QueryServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.QueryGetCountRequest, $1.QueryGetCountResponse>(
        'GetCount',
        getCount_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryGetCountRequest.fromBuffer(value),
        ($1.QueryGetCountResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.QueryGetCountResponse> getCount_Pre($grpc.ServiceCall call, $async.Future<$1.QueryGetCountRequest> request) async {
    return getCount(call, await request);
  }

  $async.Future<$1.QueryGetCountResponse> getCount($grpc.ServiceCall call, $1.QueryGetCountRequest request);
}
