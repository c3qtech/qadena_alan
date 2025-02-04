//
//  Generated code. Do not modify.
//  source: cosmos/circuit/v1/query.proto
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

@$pb.GrpcServiceName('cosmos.circuit.v1.Query')
class QueryClient extends $grpc.Client {
  static final _$account = $grpc.ClientMethod<$1.QueryAccountRequest, $1.AccountResponse>(
      '/cosmos.circuit.v1.Query/Account',
      ($1.QueryAccountRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.AccountResponse.fromBuffer(value));
  static final _$accounts = $grpc.ClientMethod<$1.QueryAccountsRequest, $1.AccountsResponse>(
      '/cosmos.circuit.v1.Query/Accounts',
      ($1.QueryAccountsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.AccountsResponse.fromBuffer(value));
  static final _$disabledList = $grpc.ClientMethod<$1.QueryDisabledListRequest, $1.DisabledListResponse>(
      '/cosmos.circuit.v1.Query/DisabledList',
      ($1.QueryDisabledListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.DisabledListResponse.fromBuffer(value));

  QueryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.AccountResponse> account($1.QueryAccountRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$account, request, options: options);
  }

  $grpc.ResponseFuture<$1.AccountsResponse> accounts($1.QueryAccountsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$accounts, request, options: options);
  }

  $grpc.ResponseFuture<$1.DisabledListResponse> disabledList($1.QueryDisabledListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$disabledList, request, options: options);
  }
}

@$pb.GrpcServiceName('cosmos.circuit.v1.Query')
abstract class QueryServiceBase extends $grpc.Service {
  $core.String get $name => 'cosmos.circuit.v1.Query';

  QueryServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.QueryAccountRequest, $1.AccountResponse>(
        'Account',
        account_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryAccountRequest.fromBuffer(value),
        ($1.AccountResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryAccountsRequest, $1.AccountsResponse>(
        'Accounts',
        accounts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryAccountsRequest.fromBuffer(value),
        ($1.AccountsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryDisabledListRequest, $1.DisabledListResponse>(
        'DisabledList',
        disabledList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryDisabledListRequest.fromBuffer(value),
        ($1.DisabledListResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.AccountResponse> account_Pre($grpc.ServiceCall call, $async.Future<$1.QueryAccountRequest> request) async {
    return account(call, await request);
  }

  $async.Future<$1.AccountsResponse> accounts_Pre($grpc.ServiceCall call, $async.Future<$1.QueryAccountsRequest> request) async {
    return accounts(call, await request);
  }

  $async.Future<$1.DisabledListResponse> disabledList_Pre($grpc.ServiceCall call, $async.Future<$1.QueryDisabledListRequest> request) async {
    return disabledList(call, await request);
  }

  $async.Future<$1.AccountResponse> account($grpc.ServiceCall call, $1.QueryAccountRequest request);
  $async.Future<$1.AccountsResponse> accounts($grpc.ServiceCall call, $1.QueryAccountsRequest request);
  $async.Future<$1.DisabledListResponse> disabledList($grpc.ServiceCall call, $1.QueryDisabledListRequest request);
}
