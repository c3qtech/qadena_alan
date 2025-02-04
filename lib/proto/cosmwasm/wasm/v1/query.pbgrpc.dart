//
//  Generated code. Do not modify.
//  source: cosmwasm/wasm/v1/query.proto
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

@$pb.GrpcServiceName('cosmwasm.wasm.v1.Query')
class QueryClient extends $grpc.Client {
  static final _$contractInfo = $grpc.ClientMethod<$1.QueryContractInfoRequest, $1.QueryContractInfoResponse>(
      '/cosmwasm.wasm.v1.Query/ContractInfo',
      ($1.QueryContractInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryContractInfoResponse.fromBuffer(value));
  static final _$contractHistory = $grpc.ClientMethod<$1.QueryContractHistoryRequest, $1.QueryContractHistoryResponse>(
      '/cosmwasm.wasm.v1.Query/ContractHistory',
      ($1.QueryContractHistoryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryContractHistoryResponse.fromBuffer(value));
  static final _$contractsByCode = $grpc.ClientMethod<$1.QueryContractsByCodeRequest, $1.QueryContractsByCodeResponse>(
      '/cosmwasm.wasm.v1.Query/ContractsByCode',
      ($1.QueryContractsByCodeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryContractsByCodeResponse.fromBuffer(value));
  static final _$allContractState = $grpc.ClientMethod<$1.QueryAllContractStateRequest, $1.QueryAllContractStateResponse>(
      '/cosmwasm.wasm.v1.Query/AllContractState',
      ($1.QueryAllContractStateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryAllContractStateResponse.fromBuffer(value));
  static final _$rawContractState = $grpc.ClientMethod<$1.QueryRawContractStateRequest, $1.QueryRawContractStateResponse>(
      '/cosmwasm.wasm.v1.Query/RawContractState',
      ($1.QueryRawContractStateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryRawContractStateResponse.fromBuffer(value));
  static final _$smartContractState = $grpc.ClientMethod<$1.QuerySmartContractStateRequest, $1.QuerySmartContractStateResponse>(
      '/cosmwasm.wasm.v1.Query/SmartContractState',
      ($1.QuerySmartContractStateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QuerySmartContractStateResponse.fromBuffer(value));
  static final _$code = $grpc.ClientMethod<$1.QueryCodeRequest, $1.QueryCodeResponse>(
      '/cosmwasm.wasm.v1.Query/Code',
      ($1.QueryCodeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryCodeResponse.fromBuffer(value));
  static final _$codes = $grpc.ClientMethod<$1.QueryCodesRequest, $1.QueryCodesResponse>(
      '/cosmwasm.wasm.v1.Query/Codes',
      ($1.QueryCodesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryCodesResponse.fromBuffer(value));
  static final _$codeInfo = $grpc.ClientMethod<$1.QueryCodeInfoRequest, $1.QueryCodeInfoResponse>(
      '/cosmwasm.wasm.v1.Query/CodeInfo',
      ($1.QueryCodeInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryCodeInfoResponse.fromBuffer(value));
  static final _$pinnedCodes = $grpc.ClientMethod<$1.QueryPinnedCodesRequest, $1.QueryPinnedCodesResponse>(
      '/cosmwasm.wasm.v1.Query/PinnedCodes',
      ($1.QueryPinnedCodesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryPinnedCodesResponse.fromBuffer(value));
  static final _$params = $grpc.ClientMethod<$1.QueryParamsRequest, $1.QueryParamsResponse>(
      '/cosmwasm.wasm.v1.Query/Params',
      ($1.QueryParamsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryParamsResponse.fromBuffer(value));
  static final _$contractsByCreator = $grpc.ClientMethod<$1.QueryContractsByCreatorRequest, $1.QueryContractsByCreatorResponse>(
      '/cosmwasm.wasm.v1.Query/ContractsByCreator',
      ($1.QueryContractsByCreatorRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryContractsByCreatorResponse.fromBuffer(value));
  static final _$wasmLimitsConfig = $grpc.ClientMethod<$1.QueryWasmLimitsConfigRequest, $1.QueryWasmLimitsConfigResponse>(
      '/cosmwasm.wasm.v1.Query/WasmLimitsConfig',
      ($1.QueryWasmLimitsConfigRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryWasmLimitsConfigResponse.fromBuffer(value));
  static final _$buildAddress = $grpc.ClientMethod<$1.QueryBuildAddressRequest, $1.QueryBuildAddressResponse>(
      '/cosmwasm.wasm.v1.Query/BuildAddress',
      ($1.QueryBuildAddressRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryBuildAddressResponse.fromBuffer(value));

  QueryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.QueryContractInfoResponse> contractInfo($1.QueryContractInfoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$contractInfo, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryContractHistoryResponse> contractHistory($1.QueryContractHistoryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$contractHistory, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryContractsByCodeResponse> contractsByCode($1.QueryContractsByCodeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$contractsByCode, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryAllContractStateResponse> allContractState($1.QueryAllContractStateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$allContractState, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryRawContractStateResponse> rawContractState($1.QueryRawContractStateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$rawContractState, request, options: options);
  }

  $grpc.ResponseFuture<$1.QuerySmartContractStateResponse> smartContractState($1.QuerySmartContractStateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$smartContractState, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryCodeResponse> code($1.QueryCodeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$code, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryCodesResponse> codes($1.QueryCodesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$codes, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryCodeInfoResponse> codeInfo($1.QueryCodeInfoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$codeInfo, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryPinnedCodesResponse> pinnedCodes($1.QueryPinnedCodesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$pinnedCodes, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryParamsResponse> params($1.QueryParamsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$params, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryContractsByCreatorResponse> contractsByCreator($1.QueryContractsByCreatorRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$contractsByCreator, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryWasmLimitsConfigResponse> wasmLimitsConfig($1.QueryWasmLimitsConfigRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$wasmLimitsConfig, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryBuildAddressResponse> buildAddress($1.QueryBuildAddressRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$buildAddress, request, options: options);
  }
}

@$pb.GrpcServiceName('cosmwasm.wasm.v1.Query')
abstract class QueryServiceBase extends $grpc.Service {
  $core.String get $name => 'cosmwasm.wasm.v1.Query';

  QueryServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.QueryContractInfoRequest, $1.QueryContractInfoResponse>(
        'ContractInfo',
        contractInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryContractInfoRequest.fromBuffer(value),
        ($1.QueryContractInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryContractHistoryRequest, $1.QueryContractHistoryResponse>(
        'ContractHistory',
        contractHistory_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryContractHistoryRequest.fromBuffer(value),
        ($1.QueryContractHistoryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryContractsByCodeRequest, $1.QueryContractsByCodeResponse>(
        'ContractsByCode',
        contractsByCode_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryContractsByCodeRequest.fromBuffer(value),
        ($1.QueryContractsByCodeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryAllContractStateRequest, $1.QueryAllContractStateResponse>(
        'AllContractState',
        allContractState_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryAllContractStateRequest.fromBuffer(value),
        ($1.QueryAllContractStateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryRawContractStateRequest, $1.QueryRawContractStateResponse>(
        'RawContractState',
        rawContractState_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryRawContractStateRequest.fromBuffer(value),
        ($1.QueryRawContractStateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QuerySmartContractStateRequest, $1.QuerySmartContractStateResponse>(
        'SmartContractState',
        smartContractState_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QuerySmartContractStateRequest.fromBuffer(value),
        ($1.QuerySmartContractStateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryCodeRequest, $1.QueryCodeResponse>(
        'Code',
        code_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryCodeRequest.fromBuffer(value),
        ($1.QueryCodeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryCodesRequest, $1.QueryCodesResponse>(
        'Codes',
        codes_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryCodesRequest.fromBuffer(value),
        ($1.QueryCodesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryCodeInfoRequest, $1.QueryCodeInfoResponse>(
        'CodeInfo',
        codeInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryCodeInfoRequest.fromBuffer(value),
        ($1.QueryCodeInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryPinnedCodesRequest, $1.QueryPinnedCodesResponse>(
        'PinnedCodes',
        pinnedCodes_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryPinnedCodesRequest.fromBuffer(value),
        ($1.QueryPinnedCodesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryParamsRequest, $1.QueryParamsResponse>(
        'Params',
        params_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryParamsRequest.fromBuffer(value),
        ($1.QueryParamsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryContractsByCreatorRequest, $1.QueryContractsByCreatorResponse>(
        'ContractsByCreator',
        contractsByCreator_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryContractsByCreatorRequest.fromBuffer(value),
        ($1.QueryContractsByCreatorResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryWasmLimitsConfigRequest, $1.QueryWasmLimitsConfigResponse>(
        'WasmLimitsConfig',
        wasmLimitsConfig_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryWasmLimitsConfigRequest.fromBuffer(value),
        ($1.QueryWasmLimitsConfigResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryBuildAddressRequest, $1.QueryBuildAddressResponse>(
        'BuildAddress',
        buildAddress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryBuildAddressRequest.fromBuffer(value),
        ($1.QueryBuildAddressResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.QueryContractInfoResponse> contractInfo_Pre($grpc.ServiceCall call, $async.Future<$1.QueryContractInfoRequest> request) async {
    return contractInfo(call, await request);
  }

  $async.Future<$1.QueryContractHistoryResponse> contractHistory_Pre($grpc.ServiceCall call, $async.Future<$1.QueryContractHistoryRequest> request) async {
    return contractHistory(call, await request);
  }

  $async.Future<$1.QueryContractsByCodeResponse> contractsByCode_Pre($grpc.ServiceCall call, $async.Future<$1.QueryContractsByCodeRequest> request) async {
    return contractsByCode(call, await request);
  }

  $async.Future<$1.QueryAllContractStateResponse> allContractState_Pre($grpc.ServiceCall call, $async.Future<$1.QueryAllContractStateRequest> request) async {
    return allContractState(call, await request);
  }

  $async.Future<$1.QueryRawContractStateResponse> rawContractState_Pre($grpc.ServiceCall call, $async.Future<$1.QueryRawContractStateRequest> request) async {
    return rawContractState(call, await request);
  }

  $async.Future<$1.QuerySmartContractStateResponse> smartContractState_Pre($grpc.ServiceCall call, $async.Future<$1.QuerySmartContractStateRequest> request) async {
    return smartContractState(call, await request);
  }

  $async.Future<$1.QueryCodeResponse> code_Pre($grpc.ServiceCall call, $async.Future<$1.QueryCodeRequest> request) async {
    return code(call, await request);
  }

  $async.Future<$1.QueryCodesResponse> codes_Pre($grpc.ServiceCall call, $async.Future<$1.QueryCodesRequest> request) async {
    return codes(call, await request);
  }

  $async.Future<$1.QueryCodeInfoResponse> codeInfo_Pre($grpc.ServiceCall call, $async.Future<$1.QueryCodeInfoRequest> request) async {
    return codeInfo(call, await request);
  }

  $async.Future<$1.QueryPinnedCodesResponse> pinnedCodes_Pre($grpc.ServiceCall call, $async.Future<$1.QueryPinnedCodesRequest> request) async {
    return pinnedCodes(call, await request);
  }

  $async.Future<$1.QueryParamsResponse> params_Pre($grpc.ServiceCall call, $async.Future<$1.QueryParamsRequest> request) async {
    return params(call, await request);
  }

  $async.Future<$1.QueryContractsByCreatorResponse> contractsByCreator_Pre($grpc.ServiceCall call, $async.Future<$1.QueryContractsByCreatorRequest> request) async {
    return contractsByCreator(call, await request);
  }

  $async.Future<$1.QueryWasmLimitsConfigResponse> wasmLimitsConfig_Pre($grpc.ServiceCall call, $async.Future<$1.QueryWasmLimitsConfigRequest> request) async {
    return wasmLimitsConfig(call, await request);
  }

  $async.Future<$1.QueryBuildAddressResponse> buildAddress_Pre($grpc.ServiceCall call, $async.Future<$1.QueryBuildAddressRequest> request) async {
    return buildAddress(call, await request);
  }

  $async.Future<$1.QueryContractInfoResponse> contractInfo($grpc.ServiceCall call, $1.QueryContractInfoRequest request);
  $async.Future<$1.QueryContractHistoryResponse> contractHistory($grpc.ServiceCall call, $1.QueryContractHistoryRequest request);
  $async.Future<$1.QueryContractsByCodeResponse> contractsByCode($grpc.ServiceCall call, $1.QueryContractsByCodeRequest request);
  $async.Future<$1.QueryAllContractStateResponse> allContractState($grpc.ServiceCall call, $1.QueryAllContractStateRequest request);
  $async.Future<$1.QueryRawContractStateResponse> rawContractState($grpc.ServiceCall call, $1.QueryRawContractStateRequest request);
  $async.Future<$1.QuerySmartContractStateResponse> smartContractState($grpc.ServiceCall call, $1.QuerySmartContractStateRequest request);
  $async.Future<$1.QueryCodeResponse> code($grpc.ServiceCall call, $1.QueryCodeRequest request);
  $async.Future<$1.QueryCodesResponse> codes($grpc.ServiceCall call, $1.QueryCodesRequest request);
  $async.Future<$1.QueryCodeInfoResponse> codeInfo($grpc.ServiceCall call, $1.QueryCodeInfoRequest request);
  $async.Future<$1.QueryPinnedCodesResponse> pinnedCodes($grpc.ServiceCall call, $1.QueryPinnedCodesRequest request);
  $async.Future<$1.QueryParamsResponse> params($grpc.ServiceCall call, $1.QueryParamsRequest request);
  $async.Future<$1.QueryContractsByCreatorResponse> contractsByCreator($grpc.ServiceCall call, $1.QueryContractsByCreatorRequest request);
  $async.Future<$1.QueryWasmLimitsConfigResponse> wasmLimitsConfig($grpc.ServiceCall call, $1.QueryWasmLimitsConfigRequest request);
  $async.Future<$1.QueryBuildAddressResponse> buildAddress($grpc.ServiceCall call, $1.QueryBuildAddressRequest request);
}
