//
//  Generated code. Do not modify.
//  source: cosmos/bank/v1beta1/query.proto
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

@$pb.GrpcServiceName('cosmos.bank.v1beta1.Query')
class QueryClient extends $grpc.Client {
  static final _$balance = $grpc.ClientMethod<$1.QueryBalanceRequest, $1.QueryBalanceResponse>(
      '/cosmos.bank.v1beta1.Query/Balance',
      ($1.QueryBalanceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryBalanceResponse.fromBuffer(value));
  static final _$allBalances = $grpc.ClientMethod<$1.QueryAllBalancesRequest, $1.QueryAllBalancesResponse>(
      '/cosmos.bank.v1beta1.Query/AllBalances',
      ($1.QueryAllBalancesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryAllBalancesResponse.fromBuffer(value));
  static final _$spendableBalances = $grpc.ClientMethod<$1.QuerySpendableBalancesRequest, $1.QuerySpendableBalancesResponse>(
      '/cosmos.bank.v1beta1.Query/SpendableBalances',
      ($1.QuerySpendableBalancesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QuerySpendableBalancesResponse.fromBuffer(value));
  static final _$spendableBalanceByDenom = $grpc.ClientMethod<$1.QuerySpendableBalanceByDenomRequest, $1.QuerySpendableBalanceByDenomResponse>(
      '/cosmos.bank.v1beta1.Query/SpendableBalanceByDenom',
      ($1.QuerySpendableBalanceByDenomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QuerySpendableBalanceByDenomResponse.fromBuffer(value));
  static final _$totalSupply = $grpc.ClientMethod<$1.QueryTotalSupplyRequest, $1.QueryTotalSupplyResponse>(
      '/cosmos.bank.v1beta1.Query/TotalSupply',
      ($1.QueryTotalSupplyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryTotalSupplyResponse.fromBuffer(value));
  static final _$supplyOf = $grpc.ClientMethod<$1.QuerySupplyOfRequest, $1.QuerySupplyOfResponse>(
      '/cosmos.bank.v1beta1.Query/SupplyOf',
      ($1.QuerySupplyOfRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QuerySupplyOfResponse.fromBuffer(value));
  static final _$params = $grpc.ClientMethod<$1.QueryParamsRequest, $1.QueryParamsResponse>(
      '/cosmos.bank.v1beta1.Query/Params',
      ($1.QueryParamsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryParamsResponse.fromBuffer(value));
  static final _$denomsMetadata = $grpc.ClientMethod<$1.QueryDenomsMetadataRequest, $1.QueryDenomsMetadataResponse>(
      '/cosmos.bank.v1beta1.Query/DenomsMetadata',
      ($1.QueryDenomsMetadataRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryDenomsMetadataResponse.fromBuffer(value));
  static final _$denomMetadata = $grpc.ClientMethod<$1.QueryDenomMetadataRequest, $1.QueryDenomMetadataResponse>(
      '/cosmos.bank.v1beta1.Query/DenomMetadata',
      ($1.QueryDenomMetadataRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryDenomMetadataResponse.fromBuffer(value));
  static final _$denomMetadataByQueryString = $grpc.ClientMethod<$1.QueryDenomMetadataByQueryStringRequest, $1.QueryDenomMetadataByQueryStringResponse>(
      '/cosmos.bank.v1beta1.Query/DenomMetadataByQueryString',
      ($1.QueryDenomMetadataByQueryStringRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryDenomMetadataByQueryStringResponse.fromBuffer(value));
  static final _$denomOwners = $grpc.ClientMethod<$1.QueryDenomOwnersRequest, $1.QueryDenomOwnersResponse>(
      '/cosmos.bank.v1beta1.Query/DenomOwners',
      ($1.QueryDenomOwnersRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryDenomOwnersResponse.fromBuffer(value));
  static final _$denomOwnersByQuery = $grpc.ClientMethod<$1.QueryDenomOwnersByQueryRequest, $1.QueryDenomOwnersByQueryResponse>(
      '/cosmos.bank.v1beta1.Query/DenomOwnersByQuery',
      ($1.QueryDenomOwnersByQueryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryDenomOwnersByQueryResponse.fromBuffer(value));
  static final _$sendEnabled = $grpc.ClientMethod<$1.QuerySendEnabledRequest, $1.QuerySendEnabledResponse>(
      '/cosmos.bank.v1beta1.Query/SendEnabled',
      ($1.QuerySendEnabledRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QuerySendEnabledResponse.fromBuffer(value));

  QueryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.QueryBalanceResponse> balance($1.QueryBalanceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$balance, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryAllBalancesResponse> allBalances($1.QueryAllBalancesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$allBalances, request, options: options);
  }

  $grpc.ResponseFuture<$1.QuerySpendableBalancesResponse> spendableBalances($1.QuerySpendableBalancesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$spendableBalances, request, options: options);
  }

  $grpc.ResponseFuture<$1.QuerySpendableBalanceByDenomResponse> spendableBalanceByDenom($1.QuerySpendableBalanceByDenomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$spendableBalanceByDenom, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryTotalSupplyResponse> totalSupply($1.QueryTotalSupplyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$totalSupply, request, options: options);
  }

  $grpc.ResponseFuture<$1.QuerySupplyOfResponse> supplyOf($1.QuerySupplyOfRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$supplyOf, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryParamsResponse> params($1.QueryParamsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$params, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryDenomsMetadataResponse> denomsMetadata($1.QueryDenomsMetadataRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$denomsMetadata, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryDenomMetadataResponse> denomMetadata($1.QueryDenomMetadataRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$denomMetadata, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryDenomMetadataByQueryStringResponse> denomMetadataByQueryString($1.QueryDenomMetadataByQueryStringRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$denomMetadataByQueryString, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryDenomOwnersResponse> denomOwners($1.QueryDenomOwnersRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$denomOwners, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryDenomOwnersByQueryResponse> denomOwnersByQuery($1.QueryDenomOwnersByQueryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$denomOwnersByQuery, request, options: options);
  }

  $grpc.ResponseFuture<$1.QuerySendEnabledResponse> sendEnabled($1.QuerySendEnabledRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendEnabled, request, options: options);
  }
}

@$pb.GrpcServiceName('cosmos.bank.v1beta1.Query')
abstract class QueryServiceBase extends $grpc.Service {
  $core.String get $name => 'cosmos.bank.v1beta1.Query';

  QueryServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.QueryBalanceRequest, $1.QueryBalanceResponse>(
        'Balance',
        balance_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryBalanceRequest.fromBuffer(value),
        ($1.QueryBalanceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryAllBalancesRequest, $1.QueryAllBalancesResponse>(
        'AllBalances',
        allBalances_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryAllBalancesRequest.fromBuffer(value),
        ($1.QueryAllBalancesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QuerySpendableBalancesRequest, $1.QuerySpendableBalancesResponse>(
        'SpendableBalances',
        spendableBalances_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QuerySpendableBalancesRequest.fromBuffer(value),
        ($1.QuerySpendableBalancesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QuerySpendableBalanceByDenomRequest, $1.QuerySpendableBalanceByDenomResponse>(
        'SpendableBalanceByDenom',
        spendableBalanceByDenom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QuerySpendableBalanceByDenomRequest.fromBuffer(value),
        ($1.QuerySpendableBalanceByDenomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryTotalSupplyRequest, $1.QueryTotalSupplyResponse>(
        'TotalSupply',
        totalSupply_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryTotalSupplyRequest.fromBuffer(value),
        ($1.QueryTotalSupplyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QuerySupplyOfRequest, $1.QuerySupplyOfResponse>(
        'SupplyOf',
        supplyOf_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QuerySupplyOfRequest.fromBuffer(value),
        ($1.QuerySupplyOfResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryParamsRequest, $1.QueryParamsResponse>(
        'Params',
        params_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryParamsRequest.fromBuffer(value),
        ($1.QueryParamsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryDenomsMetadataRequest, $1.QueryDenomsMetadataResponse>(
        'DenomsMetadata',
        denomsMetadata_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryDenomsMetadataRequest.fromBuffer(value),
        ($1.QueryDenomsMetadataResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryDenomMetadataRequest, $1.QueryDenomMetadataResponse>(
        'DenomMetadata',
        denomMetadata_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryDenomMetadataRequest.fromBuffer(value),
        ($1.QueryDenomMetadataResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryDenomMetadataByQueryStringRequest, $1.QueryDenomMetadataByQueryStringResponse>(
        'DenomMetadataByQueryString',
        denomMetadataByQueryString_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryDenomMetadataByQueryStringRequest.fromBuffer(value),
        ($1.QueryDenomMetadataByQueryStringResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryDenomOwnersRequest, $1.QueryDenomOwnersResponse>(
        'DenomOwners',
        denomOwners_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryDenomOwnersRequest.fromBuffer(value),
        ($1.QueryDenomOwnersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryDenomOwnersByQueryRequest, $1.QueryDenomOwnersByQueryResponse>(
        'DenomOwnersByQuery',
        denomOwnersByQuery_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryDenomOwnersByQueryRequest.fromBuffer(value),
        ($1.QueryDenomOwnersByQueryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QuerySendEnabledRequest, $1.QuerySendEnabledResponse>(
        'SendEnabled',
        sendEnabled_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QuerySendEnabledRequest.fromBuffer(value),
        ($1.QuerySendEnabledResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.QueryBalanceResponse> balance_Pre($grpc.ServiceCall call, $async.Future<$1.QueryBalanceRequest> request) async {
    return balance(call, await request);
  }

  $async.Future<$1.QueryAllBalancesResponse> allBalances_Pre($grpc.ServiceCall call, $async.Future<$1.QueryAllBalancesRequest> request) async {
    return allBalances(call, await request);
  }

  $async.Future<$1.QuerySpendableBalancesResponse> spendableBalances_Pre($grpc.ServiceCall call, $async.Future<$1.QuerySpendableBalancesRequest> request) async {
    return spendableBalances(call, await request);
  }

  $async.Future<$1.QuerySpendableBalanceByDenomResponse> spendableBalanceByDenom_Pre($grpc.ServiceCall call, $async.Future<$1.QuerySpendableBalanceByDenomRequest> request) async {
    return spendableBalanceByDenom(call, await request);
  }

  $async.Future<$1.QueryTotalSupplyResponse> totalSupply_Pre($grpc.ServiceCall call, $async.Future<$1.QueryTotalSupplyRequest> request) async {
    return totalSupply(call, await request);
  }

  $async.Future<$1.QuerySupplyOfResponse> supplyOf_Pre($grpc.ServiceCall call, $async.Future<$1.QuerySupplyOfRequest> request) async {
    return supplyOf(call, await request);
  }

  $async.Future<$1.QueryParamsResponse> params_Pre($grpc.ServiceCall call, $async.Future<$1.QueryParamsRequest> request) async {
    return params(call, await request);
  }

  $async.Future<$1.QueryDenomsMetadataResponse> denomsMetadata_Pre($grpc.ServiceCall call, $async.Future<$1.QueryDenomsMetadataRequest> request) async {
    return denomsMetadata(call, await request);
  }

  $async.Future<$1.QueryDenomMetadataResponse> denomMetadata_Pre($grpc.ServiceCall call, $async.Future<$1.QueryDenomMetadataRequest> request) async {
    return denomMetadata(call, await request);
  }

  $async.Future<$1.QueryDenomMetadataByQueryStringResponse> denomMetadataByQueryString_Pre($grpc.ServiceCall call, $async.Future<$1.QueryDenomMetadataByQueryStringRequest> request) async {
    return denomMetadataByQueryString(call, await request);
  }

  $async.Future<$1.QueryDenomOwnersResponse> denomOwners_Pre($grpc.ServiceCall call, $async.Future<$1.QueryDenomOwnersRequest> request) async {
    return denomOwners(call, await request);
  }

  $async.Future<$1.QueryDenomOwnersByQueryResponse> denomOwnersByQuery_Pre($grpc.ServiceCall call, $async.Future<$1.QueryDenomOwnersByQueryRequest> request) async {
    return denomOwnersByQuery(call, await request);
  }

  $async.Future<$1.QuerySendEnabledResponse> sendEnabled_Pre($grpc.ServiceCall call, $async.Future<$1.QuerySendEnabledRequest> request) async {
    return sendEnabled(call, await request);
  }

  $async.Future<$1.QueryBalanceResponse> balance($grpc.ServiceCall call, $1.QueryBalanceRequest request);
  $async.Future<$1.QueryAllBalancesResponse> allBalances($grpc.ServiceCall call, $1.QueryAllBalancesRequest request);
  $async.Future<$1.QuerySpendableBalancesResponse> spendableBalances($grpc.ServiceCall call, $1.QuerySpendableBalancesRequest request);
  $async.Future<$1.QuerySpendableBalanceByDenomResponse> spendableBalanceByDenom($grpc.ServiceCall call, $1.QuerySpendableBalanceByDenomRequest request);
  $async.Future<$1.QueryTotalSupplyResponse> totalSupply($grpc.ServiceCall call, $1.QueryTotalSupplyRequest request);
  $async.Future<$1.QuerySupplyOfResponse> supplyOf($grpc.ServiceCall call, $1.QuerySupplyOfRequest request);
  $async.Future<$1.QueryParamsResponse> params($grpc.ServiceCall call, $1.QueryParamsRequest request);
  $async.Future<$1.QueryDenomsMetadataResponse> denomsMetadata($grpc.ServiceCall call, $1.QueryDenomsMetadataRequest request);
  $async.Future<$1.QueryDenomMetadataResponse> denomMetadata($grpc.ServiceCall call, $1.QueryDenomMetadataRequest request);
  $async.Future<$1.QueryDenomMetadataByQueryStringResponse> denomMetadataByQueryString($grpc.ServiceCall call, $1.QueryDenomMetadataByQueryStringRequest request);
  $async.Future<$1.QueryDenomOwnersResponse> denomOwners($grpc.ServiceCall call, $1.QueryDenomOwnersRequest request);
  $async.Future<$1.QueryDenomOwnersByQueryResponse> denomOwnersByQuery($grpc.ServiceCall call, $1.QueryDenomOwnersByQueryRequest request);
  $async.Future<$1.QuerySendEnabledResponse> sendEnabled($grpc.ServiceCall call, $1.QuerySendEnabledRequest request);
}
