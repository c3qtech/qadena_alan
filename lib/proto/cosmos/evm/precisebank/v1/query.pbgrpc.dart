//
//  Generated code. Do not modify.
//  source: cosmos/evm/precisebank/v1/query.proto
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

import 'query.pb.dart' as $0;

export 'query.pb.dart';

@$pb.GrpcServiceName('cosmos.evm.precisebank.v1.Query')
class QueryClient extends $grpc.Client {
  static final _$remainder = $grpc.ClientMethod<$0.QueryRemainderRequest, $0.QueryRemainderResponse>(
      '/cosmos.evm.precisebank.v1.Query/Remainder',
      ($0.QueryRemainderRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.QueryRemainderResponse.fromBuffer(value));
  static final _$fractionalBalance = $grpc.ClientMethod<$0.QueryFractionalBalanceRequest, $0.QueryFractionalBalanceResponse>(
      '/cosmos.evm.precisebank.v1.Query/FractionalBalance',
      ($0.QueryFractionalBalanceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.QueryFractionalBalanceResponse.fromBuffer(value));

  QueryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.QueryRemainderResponse> remainder($0.QueryRemainderRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$remainder, request, options: options);
  }

  $grpc.ResponseFuture<$0.QueryFractionalBalanceResponse> fractionalBalance($0.QueryFractionalBalanceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fractionalBalance, request, options: options);
  }
}

@$pb.GrpcServiceName('cosmos.evm.precisebank.v1.Query')
abstract class QueryServiceBase extends $grpc.Service {
  $core.String get $name => 'cosmos.evm.precisebank.v1.Query';

  QueryServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.QueryRemainderRequest, $0.QueryRemainderResponse>(
        'Remainder',
        remainder_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.QueryRemainderRequest.fromBuffer(value),
        ($0.QueryRemainderResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.QueryFractionalBalanceRequest, $0.QueryFractionalBalanceResponse>(
        'FractionalBalance',
        fractionalBalance_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.QueryFractionalBalanceRequest.fromBuffer(value),
        ($0.QueryFractionalBalanceResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.QueryRemainderResponse> remainder_Pre($grpc.ServiceCall call, $async.Future<$0.QueryRemainderRequest> request) async {
    return remainder(call, await request);
  }

  $async.Future<$0.QueryFractionalBalanceResponse> fractionalBalance_Pre($grpc.ServiceCall call, $async.Future<$0.QueryFractionalBalanceRequest> request) async {
    return fractionalBalance(call, await request);
  }

  $async.Future<$0.QueryRemainderResponse> remainder($grpc.ServiceCall call, $0.QueryRemainderRequest request);
  $async.Future<$0.QueryFractionalBalanceResponse> fractionalBalance($grpc.ServiceCall call, $0.QueryFractionalBalanceRequest request);
}
