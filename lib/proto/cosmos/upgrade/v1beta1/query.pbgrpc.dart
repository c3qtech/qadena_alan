//
//  Generated code. Do not modify.
//  source: cosmos/upgrade/v1beta1/query.proto
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

@$pb.GrpcServiceName('cosmos.upgrade.v1beta1.Query')
class QueryClient extends $grpc.Client {
  static final _$currentPlan = $grpc.ClientMethod<$1.QueryCurrentPlanRequest, $1.QueryCurrentPlanResponse>(
      '/cosmos.upgrade.v1beta1.Query/CurrentPlan',
      ($1.QueryCurrentPlanRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryCurrentPlanResponse.fromBuffer(value));
  static final _$appliedPlan = $grpc.ClientMethod<$1.QueryAppliedPlanRequest, $1.QueryAppliedPlanResponse>(
      '/cosmos.upgrade.v1beta1.Query/AppliedPlan',
      ($1.QueryAppliedPlanRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryAppliedPlanResponse.fromBuffer(value));
  static final _$upgradedConsensusState = $grpc.ClientMethod<$1.QueryUpgradedConsensusStateRequest, $1.QueryUpgradedConsensusStateResponse>(
      '/cosmos.upgrade.v1beta1.Query/UpgradedConsensusState',
      ($1.QueryUpgradedConsensusStateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryUpgradedConsensusStateResponse.fromBuffer(value));
  static final _$moduleVersions = $grpc.ClientMethod<$1.QueryModuleVersionsRequest, $1.QueryModuleVersionsResponse>(
      '/cosmos.upgrade.v1beta1.Query/ModuleVersions',
      ($1.QueryModuleVersionsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryModuleVersionsResponse.fromBuffer(value));
  static final _$authority = $grpc.ClientMethod<$1.QueryAuthorityRequest, $1.QueryAuthorityResponse>(
      '/cosmos.upgrade.v1beta1.Query/Authority',
      ($1.QueryAuthorityRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryAuthorityResponse.fromBuffer(value));

  QueryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.QueryCurrentPlanResponse> currentPlan($1.QueryCurrentPlanRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$currentPlan, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryAppliedPlanResponse> appliedPlan($1.QueryAppliedPlanRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$appliedPlan, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryUpgradedConsensusStateResponse> upgradedConsensusState($1.QueryUpgradedConsensusStateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$upgradedConsensusState, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryModuleVersionsResponse> moduleVersions($1.QueryModuleVersionsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$moduleVersions, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryAuthorityResponse> authority($1.QueryAuthorityRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authority, request, options: options);
  }
}

@$pb.GrpcServiceName('cosmos.upgrade.v1beta1.Query')
abstract class QueryServiceBase extends $grpc.Service {
  $core.String get $name => 'cosmos.upgrade.v1beta1.Query';

  QueryServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.QueryCurrentPlanRequest, $1.QueryCurrentPlanResponse>(
        'CurrentPlan',
        currentPlan_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryCurrentPlanRequest.fromBuffer(value),
        ($1.QueryCurrentPlanResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryAppliedPlanRequest, $1.QueryAppliedPlanResponse>(
        'AppliedPlan',
        appliedPlan_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryAppliedPlanRequest.fromBuffer(value),
        ($1.QueryAppliedPlanResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryUpgradedConsensusStateRequest, $1.QueryUpgradedConsensusStateResponse>(
        'UpgradedConsensusState',
        upgradedConsensusState_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryUpgradedConsensusStateRequest.fromBuffer(value),
        ($1.QueryUpgradedConsensusStateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryModuleVersionsRequest, $1.QueryModuleVersionsResponse>(
        'ModuleVersions',
        moduleVersions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryModuleVersionsRequest.fromBuffer(value),
        ($1.QueryModuleVersionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryAuthorityRequest, $1.QueryAuthorityResponse>(
        'Authority',
        authority_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryAuthorityRequest.fromBuffer(value),
        ($1.QueryAuthorityResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.QueryCurrentPlanResponse> currentPlan_Pre($grpc.ServiceCall call, $async.Future<$1.QueryCurrentPlanRequest> request) async {
    return currentPlan(call, await request);
  }

  $async.Future<$1.QueryAppliedPlanResponse> appliedPlan_Pre($grpc.ServiceCall call, $async.Future<$1.QueryAppliedPlanRequest> request) async {
    return appliedPlan(call, await request);
  }

  $async.Future<$1.QueryUpgradedConsensusStateResponse> upgradedConsensusState_Pre($grpc.ServiceCall call, $async.Future<$1.QueryUpgradedConsensusStateRequest> request) async {
    return upgradedConsensusState(call, await request);
  }

  $async.Future<$1.QueryModuleVersionsResponse> moduleVersions_Pre($grpc.ServiceCall call, $async.Future<$1.QueryModuleVersionsRequest> request) async {
    return moduleVersions(call, await request);
  }

  $async.Future<$1.QueryAuthorityResponse> authority_Pre($grpc.ServiceCall call, $async.Future<$1.QueryAuthorityRequest> request) async {
    return authority(call, await request);
  }

  $async.Future<$1.QueryCurrentPlanResponse> currentPlan($grpc.ServiceCall call, $1.QueryCurrentPlanRequest request);
  $async.Future<$1.QueryAppliedPlanResponse> appliedPlan($grpc.ServiceCall call, $1.QueryAppliedPlanRequest request);
  $async.Future<$1.QueryUpgradedConsensusStateResponse> upgradedConsensusState($grpc.ServiceCall call, $1.QueryUpgradedConsensusStateRequest request);
  $async.Future<$1.QueryModuleVersionsResponse> moduleVersions($grpc.ServiceCall call, $1.QueryModuleVersionsRequest request);
  $async.Future<$1.QueryAuthorityResponse> authority($grpc.ServiceCall call, $1.QueryAuthorityRequest request);
}
