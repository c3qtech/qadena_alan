//
//  Generated code. Do not modify.
//  source: cosmos/auth/v1beta1/query.proto
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

@$pb.GrpcServiceName('cosmos.auth.v1beta1.Query')
class QueryClient extends $grpc.Client {
  static final _$accounts = $grpc.ClientMethod<$1.QueryAccountsRequest, $1.QueryAccountsResponse>(
      '/cosmos.auth.v1beta1.Query/Accounts',
      ($1.QueryAccountsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryAccountsResponse.fromBuffer(value));
  static final _$account = $grpc.ClientMethod<$1.QueryAccountRequest, $1.QueryAccountResponse>(
      '/cosmos.auth.v1beta1.Query/Account',
      ($1.QueryAccountRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryAccountResponse.fromBuffer(value));
  static final _$accountAddressByID = $grpc.ClientMethod<$1.QueryAccountAddressByIDRequest, $1.QueryAccountAddressByIDResponse>(
      '/cosmos.auth.v1beta1.Query/AccountAddressByID',
      ($1.QueryAccountAddressByIDRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryAccountAddressByIDResponse.fromBuffer(value));
  static final _$params = $grpc.ClientMethod<$1.QueryParamsRequest, $1.QueryParamsResponse>(
      '/cosmos.auth.v1beta1.Query/Params',
      ($1.QueryParamsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryParamsResponse.fromBuffer(value));
  static final _$moduleAccounts = $grpc.ClientMethod<$1.QueryModuleAccountsRequest, $1.QueryModuleAccountsResponse>(
      '/cosmos.auth.v1beta1.Query/ModuleAccounts',
      ($1.QueryModuleAccountsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryModuleAccountsResponse.fromBuffer(value));
  static final _$moduleAccountByName = $grpc.ClientMethod<$1.QueryModuleAccountByNameRequest, $1.QueryModuleAccountByNameResponse>(
      '/cosmos.auth.v1beta1.Query/ModuleAccountByName',
      ($1.QueryModuleAccountByNameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryModuleAccountByNameResponse.fromBuffer(value));
  static final _$bech32Prefix = $grpc.ClientMethod<$1.Bech32PrefixRequest, $1.Bech32PrefixResponse>(
      '/cosmos.auth.v1beta1.Query/Bech32Prefix',
      ($1.Bech32PrefixRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Bech32PrefixResponse.fromBuffer(value));
  static final _$addressBytesToString = $grpc.ClientMethod<$1.AddressBytesToStringRequest, $1.AddressBytesToStringResponse>(
      '/cosmos.auth.v1beta1.Query/AddressBytesToString',
      ($1.AddressBytesToStringRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.AddressBytesToStringResponse.fromBuffer(value));
  static final _$addressStringToBytes = $grpc.ClientMethod<$1.AddressStringToBytesRequest, $1.AddressStringToBytesResponse>(
      '/cosmos.auth.v1beta1.Query/AddressStringToBytes',
      ($1.AddressStringToBytesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.AddressStringToBytesResponse.fromBuffer(value));
  static final _$accountInfo = $grpc.ClientMethod<$1.QueryAccountInfoRequest, $1.QueryAccountInfoResponse>(
      '/cosmos.auth.v1beta1.Query/AccountInfo',
      ($1.QueryAccountInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryAccountInfoResponse.fromBuffer(value));

  QueryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.QueryAccountsResponse> accounts($1.QueryAccountsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$accounts, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryAccountResponse> account($1.QueryAccountRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$account, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryAccountAddressByIDResponse> accountAddressByID($1.QueryAccountAddressByIDRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$accountAddressByID, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryParamsResponse> params($1.QueryParamsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$params, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryModuleAccountsResponse> moduleAccounts($1.QueryModuleAccountsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$moduleAccounts, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryModuleAccountByNameResponse> moduleAccountByName($1.QueryModuleAccountByNameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$moduleAccountByName, request, options: options);
  }

  $grpc.ResponseFuture<$1.Bech32PrefixResponse> bech32Prefix($1.Bech32PrefixRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$bech32Prefix, request, options: options);
  }

  $grpc.ResponseFuture<$1.AddressBytesToStringResponse> addressBytesToString($1.AddressBytesToStringRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addressBytesToString, request, options: options);
  }

  $grpc.ResponseFuture<$1.AddressStringToBytesResponse> addressStringToBytes($1.AddressStringToBytesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addressStringToBytes, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryAccountInfoResponse> accountInfo($1.QueryAccountInfoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$accountInfo, request, options: options);
  }
}

@$pb.GrpcServiceName('cosmos.auth.v1beta1.Query')
abstract class QueryServiceBase extends $grpc.Service {
  $core.String get $name => 'cosmos.auth.v1beta1.Query';

  QueryServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.QueryAccountsRequest, $1.QueryAccountsResponse>(
        'Accounts',
        accounts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryAccountsRequest.fromBuffer(value),
        ($1.QueryAccountsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryAccountRequest, $1.QueryAccountResponse>(
        'Account',
        account_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryAccountRequest.fromBuffer(value),
        ($1.QueryAccountResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryAccountAddressByIDRequest, $1.QueryAccountAddressByIDResponse>(
        'AccountAddressByID',
        accountAddressByID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryAccountAddressByIDRequest.fromBuffer(value),
        ($1.QueryAccountAddressByIDResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryParamsRequest, $1.QueryParamsResponse>(
        'Params',
        params_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryParamsRequest.fromBuffer(value),
        ($1.QueryParamsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryModuleAccountsRequest, $1.QueryModuleAccountsResponse>(
        'ModuleAccounts',
        moduleAccounts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryModuleAccountsRequest.fromBuffer(value),
        ($1.QueryModuleAccountsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryModuleAccountByNameRequest, $1.QueryModuleAccountByNameResponse>(
        'ModuleAccountByName',
        moduleAccountByName_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryModuleAccountByNameRequest.fromBuffer(value),
        ($1.QueryModuleAccountByNameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Bech32PrefixRequest, $1.Bech32PrefixResponse>(
        'Bech32Prefix',
        bech32Prefix_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Bech32PrefixRequest.fromBuffer(value),
        ($1.Bech32PrefixResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.AddressBytesToStringRequest, $1.AddressBytesToStringResponse>(
        'AddressBytesToString',
        addressBytesToString_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.AddressBytesToStringRequest.fromBuffer(value),
        ($1.AddressBytesToStringResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.AddressStringToBytesRequest, $1.AddressStringToBytesResponse>(
        'AddressStringToBytes',
        addressStringToBytes_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.AddressStringToBytesRequest.fromBuffer(value),
        ($1.AddressStringToBytesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryAccountInfoRequest, $1.QueryAccountInfoResponse>(
        'AccountInfo',
        accountInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryAccountInfoRequest.fromBuffer(value),
        ($1.QueryAccountInfoResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.QueryAccountsResponse> accounts_Pre($grpc.ServiceCall call, $async.Future<$1.QueryAccountsRequest> request) async {
    return accounts(call, await request);
  }

  $async.Future<$1.QueryAccountResponse> account_Pre($grpc.ServiceCall call, $async.Future<$1.QueryAccountRequest> request) async {
    return account(call, await request);
  }

  $async.Future<$1.QueryAccountAddressByIDResponse> accountAddressByID_Pre($grpc.ServiceCall call, $async.Future<$1.QueryAccountAddressByIDRequest> request) async {
    return accountAddressByID(call, await request);
  }

  $async.Future<$1.QueryParamsResponse> params_Pre($grpc.ServiceCall call, $async.Future<$1.QueryParamsRequest> request) async {
    return params(call, await request);
  }

  $async.Future<$1.QueryModuleAccountsResponse> moduleAccounts_Pre($grpc.ServiceCall call, $async.Future<$1.QueryModuleAccountsRequest> request) async {
    return moduleAccounts(call, await request);
  }

  $async.Future<$1.QueryModuleAccountByNameResponse> moduleAccountByName_Pre($grpc.ServiceCall call, $async.Future<$1.QueryModuleAccountByNameRequest> request) async {
    return moduleAccountByName(call, await request);
  }

  $async.Future<$1.Bech32PrefixResponse> bech32Prefix_Pre($grpc.ServiceCall call, $async.Future<$1.Bech32PrefixRequest> request) async {
    return bech32Prefix(call, await request);
  }

  $async.Future<$1.AddressBytesToStringResponse> addressBytesToString_Pre($grpc.ServiceCall call, $async.Future<$1.AddressBytesToStringRequest> request) async {
    return addressBytesToString(call, await request);
  }

  $async.Future<$1.AddressStringToBytesResponse> addressStringToBytes_Pre($grpc.ServiceCall call, $async.Future<$1.AddressStringToBytesRequest> request) async {
    return addressStringToBytes(call, await request);
  }

  $async.Future<$1.QueryAccountInfoResponse> accountInfo_Pre($grpc.ServiceCall call, $async.Future<$1.QueryAccountInfoRequest> request) async {
    return accountInfo(call, await request);
  }

  $async.Future<$1.QueryAccountsResponse> accounts($grpc.ServiceCall call, $1.QueryAccountsRequest request);
  $async.Future<$1.QueryAccountResponse> account($grpc.ServiceCall call, $1.QueryAccountRequest request);
  $async.Future<$1.QueryAccountAddressByIDResponse> accountAddressByID($grpc.ServiceCall call, $1.QueryAccountAddressByIDRequest request);
  $async.Future<$1.QueryParamsResponse> params($grpc.ServiceCall call, $1.QueryParamsRequest request);
  $async.Future<$1.QueryModuleAccountsResponse> moduleAccounts($grpc.ServiceCall call, $1.QueryModuleAccountsRequest request);
  $async.Future<$1.QueryModuleAccountByNameResponse> moduleAccountByName($grpc.ServiceCall call, $1.QueryModuleAccountByNameRequest request);
  $async.Future<$1.Bech32PrefixResponse> bech32Prefix($grpc.ServiceCall call, $1.Bech32PrefixRequest request);
  $async.Future<$1.AddressBytesToStringResponse> addressBytesToString($grpc.ServiceCall call, $1.AddressBytesToStringRequest request);
  $async.Future<$1.AddressStringToBytesResponse> addressStringToBytes($grpc.ServiceCall call, $1.AddressStringToBytesRequest request);
  $async.Future<$1.QueryAccountInfoResponse> accountInfo($grpc.ServiceCall call, $1.QueryAccountInfoRequest request);
}
