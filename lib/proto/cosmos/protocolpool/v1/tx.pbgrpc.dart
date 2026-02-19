//
//  Generated code. Do not modify.
//  source: cosmos/protocolpool/v1/tx.proto
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

@$pb.GrpcServiceName('cosmos.protocolpool.v1.Msg')
class MsgClient extends $grpc.Client {
  static final _$fundCommunityPool = $grpc.ClientMethod<$0.MsgFundCommunityPool, $0.MsgFundCommunityPoolResponse>(
      '/cosmos.protocolpool.v1.Msg/FundCommunityPool',
      ($0.MsgFundCommunityPool value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MsgFundCommunityPoolResponse.fromBuffer(value));
  static final _$communityPoolSpend = $grpc.ClientMethod<$0.MsgCommunityPoolSpend, $0.MsgCommunityPoolSpendResponse>(
      '/cosmos.protocolpool.v1.Msg/CommunityPoolSpend',
      ($0.MsgCommunityPoolSpend value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MsgCommunityPoolSpendResponse.fromBuffer(value));
  static final _$createContinuousFund = $grpc.ClientMethod<$0.MsgCreateContinuousFund, $0.MsgCreateContinuousFundResponse>(
      '/cosmos.protocolpool.v1.Msg/CreateContinuousFund',
      ($0.MsgCreateContinuousFund value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MsgCreateContinuousFundResponse.fromBuffer(value));
  static final _$cancelContinuousFund = $grpc.ClientMethod<$0.MsgCancelContinuousFund, $0.MsgCancelContinuousFundResponse>(
      '/cosmos.protocolpool.v1.Msg/CancelContinuousFund',
      ($0.MsgCancelContinuousFund value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MsgCancelContinuousFundResponse.fromBuffer(value));
  static final _$updateParams = $grpc.ClientMethod<$0.MsgUpdateParams, $0.MsgUpdateParamsResponse>(
      '/cosmos.protocolpool.v1.Msg/UpdateParams',
      ($0.MsgUpdateParams value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MsgUpdateParamsResponse.fromBuffer(value));

  MsgClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.MsgFundCommunityPoolResponse> fundCommunityPool($0.MsgFundCommunityPool request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fundCommunityPool, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgCommunityPoolSpendResponse> communityPoolSpend($0.MsgCommunityPoolSpend request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$communityPoolSpend, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgCreateContinuousFundResponse> createContinuousFund($0.MsgCreateContinuousFund request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createContinuousFund, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgCancelContinuousFundResponse> cancelContinuousFund($0.MsgCancelContinuousFund request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cancelContinuousFund, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgUpdateParamsResponse> updateParams($0.MsgUpdateParams request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateParams, request, options: options);
  }
}

@$pb.GrpcServiceName('cosmos.protocolpool.v1.Msg')
abstract class MsgServiceBase extends $grpc.Service {
  $core.String get $name => 'cosmos.protocolpool.v1.Msg';

  MsgServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.MsgFundCommunityPool, $0.MsgFundCommunityPoolResponse>(
        'FundCommunityPool',
        fundCommunityPool_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgFundCommunityPool.fromBuffer(value),
        ($0.MsgFundCommunityPoolResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgCommunityPoolSpend, $0.MsgCommunityPoolSpendResponse>(
        'CommunityPoolSpend',
        communityPoolSpend_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgCommunityPoolSpend.fromBuffer(value),
        ($0.MsgCommunityPoolSpendResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgCreateContinuousFund, $0.MsgCreateContinuousFundResponse>(
        'CreateContinuousFund',
        createContinuousFund_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgCreateContinuousFund.fromBuffer(value),
        ($0.MsgCreateContinuousFundResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgCancelContinuousFund, $0.MsgCancelContinuousFundResponse>(
        'CancelContinuousFund',
        cancelContinuousFund_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgCancelContinuousFund.fromBuffer(value),
        ($0.MsgCancelContinuousFundResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgUpdateParams, $0.MsgUpdateParamsResponse>(
        'UpdateParams',
        updateParams_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgUpdateParams.fromBuffer(value),
        ($0.MsgUpdateParamsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.MsgFundCommunityPoolResponse> fundCommunityPool_Pre($grpc.ServiceCall call, $async.Future<$0.MsgFundCommunityPool> request) async {
    return fundCommunityPool(call, await request);
  }

  $async.Future<$0.MsgCommunityPoolSpendResponse> communityPoolSpend_Pre($grpc.ServiceCall call, $async.Future<$0.MsgCommunityPoolSpend> request) async {
    return communityPoolSpend(call, await request);
  }

  $async.Future<$0.MsgCreateContinuousFundResponse> createContinuousFund_Pre($grpc.ServiceCall call, $async.Future<$0.MsgCreateContinuousFund> request) async {
    return createContinuousFund(call, await request);
  }

  $async.Future<$0.MsgCancelContinuousFundResponse> cancelContinuousFund_Pre($grpc.ServiceCall call, $async.Future<$0.MsgCancelContinuousFund> request) async {
    return cancelContinuousFund(call, await request);
  }

  $async.Future<$0.MsgUpdateParamsResponse> updateParams_Pre($grpc.ServiceCall call, $async.Future<$0.MsgUpdateParams> request) async {
    return updateParams(call, await request);
  }

  $async.Future<$0.MsgFundCommunityPoolResponse> fundCommunityPool($grpc.ServiceCall call, $0.MsgFundCommunityPool request);
  $async.Future<$0.MsgCommunityPoolSpendResponse> communityPoolSpend($grpc.ServiceCall call, $0.MsgCommunityPoolSpend request);
  $async.Future<$0.MsgCreateContinuousFundResponse> createContinuousFund($grpc.ServiceCall call, $0.MsgCreateContinuousFund request);
  $async.Future<$0.MsgCancelContinuousFundResponse> cancelContinuousFund($grpc.ServiceCall call, $0.MsgCancelContinuousFund request);
  $async.Future<$0.MsgUpdateParamsResponse> updateParams($grpc.ServiceCall call, $0.MsgUpdateParams request);
}
