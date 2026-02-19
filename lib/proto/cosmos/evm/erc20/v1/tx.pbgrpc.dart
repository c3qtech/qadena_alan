//
//  Generated code. Do not modify.
//  source: cosmos/evm/erc20/v1/tx.proto
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

import 'tx.pb.dart' as $0;

export 'tx.pb.dart';

@$pb.GrpcServiceName('cosmos.evm.erc20.v1.Msg')
class MsgClient extends $grpc.Client {
  static final _$convertERC20 = $grpc.ClientMethod<$0.MsgConvertERC20, $0.MsgConvertERC20Response>(
      '/cosmos.evm.erc20.v1.Msg/ConvertERC20',
      ($0.MsgConvertERC20 value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MsgConvertERC20Response.fromBuffer(value));
  static final _$convertCoin = $grpc.ClientMethod<$0.MsgConvertCoin, $0.MsgConvertCoinResponse>(
      '/cosmos.evm.erc20.v1.Msg/ConvertCoin',
      ($0.MsgConvertCoin value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MsgConvertCoinResponse.fromBuffer(value));
  static final _$updateParams = $grpc.ClientMethod<$0.MsgUpdateParams, $0.MsgUpdateParamsResponse>(
      '/cosmos.evm.erc20.v1.Msg/UpdateParams',
      ($0.MsgUpdateParams value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MsgUpdateParamsResponse.fromBuffer(value));
  static final _$registerERC20 = $grpc.ClientMethod<$0.MsgRegisterERC20, $0.MsgRegisterERC20Response>(
      '/cosmos.evm.erc20.v1.Msg/RegisterERC20',
      ($0.MsgRegisterERC20 value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MsgRegisterERC20Response.fromBuffer(value));
  static final _$toggleConversion = $grpc.ClientMethod<$0.MsgToggleConversion, $0.MsgToggleConversionResponse>(
      '/cosmos.evm.erc20.v1.Msg/ToggleConversion',
      ($0.MsgToggleConversion value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MsgToggleConversionResponse.fromBuffer(value));

  MsgClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.MsgConvertERC20Response> convertERC20($0.MsgConvertERC20 request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$convertERC20, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgConvertCoinResponse> convertCoin($0.MsgConvertCoin request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$convertCoin, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgUpdateParamsResponse> updateParams($0.MsgUpdateParams request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateParams, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgRegisterERC20Response> registerERC20($0.MsgRegisterERC20 request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$registerERC20, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgToggleConversionResponse> toggleConversion($0.MsgToggleConversion request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$toggleConversion, request, options: options);
  }
}

@$pb.GrpcServiceName('cosmos.evm.erc20.v1.Msg')
abstract class MsgServiceBase extends $grpc.Service {
  $core.String get $name => 'cosmos.evm.erc20.v1.Msg';

  MsgServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.MsgConvertERC20, $0.MsgConvertERC20Response>(
        'ConvertERC20',
        convertERC20_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgConvertERC20.fromBuffer(value),
        ($0.MsgConvertERC20Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgConvertCoin, $0.MsgConvertCoinResponse>(
        'ConvertCoin',
        convertCoin_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgConvertCoin.fromBuffer(value),
        ($0.MsgConvertCoinResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgUpdateParams, $0.MsgUpdateParamsResponse>(
        'UpdateParams',
        updateParams_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgUpdateParams.fromBuffer(value),
        ($0.MsgUpdateParamsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgRegisterERC20, $0.MsgRegisterERC20Response>(
        'RegisterERC20',
        registerERC20_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgRegisterERC20.fromBuffer(value),
        ($0.MsgRegisterERC20Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgToggleConversion, $0.MsgToggleConversionResponse>(
        'ToggleConversion',
        toggleConversion_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgToggleConversion.fromBuffer(value),
        ($0.MsgToggleConversionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.MsgConvertERC20Response> convertERC20_Pre($grpc.ServiceCall call, $async.Future<$0.MsgConvertERC20> request) async {
    return convertERC20(call, await request);
  }

  $async.Future<$0.MsgConvertCoinResponse> convertCoin_Pre($grpc.ServiceCall call, $async.Future<$0.MsgConvertCoin> request) async {
    return convertCoin(call, await request);
  }

  $async.Future<$0.MsgUpdateParamsResponse> updateParams_Pre($grpc.ServiceCall call, $async.Future<$0.MsgUpdateParams> request) async {
    return updateParams(call, await request);
  }

  $async.Future<$0.MsgRegisterERC20Response> registerERC20_Pre($grpc.ServiceCall call, $async.Future<$0.MsgRegisterERC20> request) async {
    return registerERC20(call, await request);
  }

  $async.Future<$0.MsgToggleConversionResponse> toggleConversion_Pre($grpc.ServiceCall call, $async.Future<$0.MsgToggleConversion> request) async {
    return toggleConversion(call, await request);
  }

  $async.Future<$0.MsgConvertERC20Response> convertERC20($grpc.ServiceCall call, $0.MsgConvertERC20 request);
  $async.Future<$0.MsgConvertCoinResponse> convertCoin($grpc.ServiceCall call, $0.MsgConvertCoin request);
  $async.Future<$0.MsgUpdateParamsResponse> updateParams($grpc.ServiceCall call, $0.MsgUpdateParams request);
  $async.Future<$0.MsgRegisterERC20Response> registerERC20($grpc.ServiceCall call, $0.MsgRegisterERC20 request);
  $async.Future<$0.MsgToggleConversionResponse> toggleConversion($grpc.ServiceCall call, $0.MsgToggleConversion request);
}
