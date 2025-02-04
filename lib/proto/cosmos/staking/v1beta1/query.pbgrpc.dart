//
//  Generated code. Do not modify.
//  source: cosmos/staking/v1beta1/query.proto
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

import 'query.pb.dart' as $2;

export 'query.pb.dart';

@$pb.GrpcServiceName('cosmos.staking.v1beta1.Query')
class QueryClient extends $grpc.Client {
  static final _$validators = $grpc.ClientMethod<$2.QueryValidatorsRequest, $2.QueryValidatorsResponse>(
      '/cosmos.staking.v1beta1.Query/Validators',
      ($2.QueryValidatorsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.QueryValidatorsResponse.fromBuffer(value));
  static final _$validator = $grpc.ClientMethod<$2.QueryValidatorRequest, $2.QueryValidatorResponse>(
      '/cosmos.staking.v1beta1.Query/Validator',
      ($2.QueryValidatorRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.QueryValidatorResponse.fromBuffer(value));
  static final _$validatorDelegations = $grpc.ClientMethod<$2.QueryValidatorDelegationsRequest, $2.QueryValidatorDelegationsResponse>(
      '/cosmos.staking.v1beta1.Query/ValidatorDelegations',
      ($2.QueryValidatorDelegationsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.QueryValidatorDelegationsResponse.fromBuffer(value));
  static final _$validatorUnbondingDelegations = $grpc.ClientMethod<$2.QueryValidatorUnbondingDelegationsRequest, $2.QueryValidatorUnbondingDelegationsResponse>(
      '/cosmos.staking.v1beta1.Query/ValidatorUnbondingDelegations',
      ($2.QueryValidatorUnbondingDelegationsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.QueryValidatorUnbondingDelegationsResponse.fromBuffer(value));
  static final _$delegation = $grpc.ClientMethod<$2.QueryDelegationRequest, $2.QueryDelegationResponse>(
      '/cosmos.staking.v1beta1.Query/Delegation',
      ($2.QueryDelegationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.QueryDelegationResponse.fromBuffer(value));
  static final _$unbondingDelegation = $grpc.ClientMethod<$2.QueryUnbondingDelegationRequest, $2.QueryUnbondingDelegationResponse>(
      '/cosmos.staking.v1beta1.Query/UnbondingDelegation',
      ($2.QueryUnbondingDelegationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.QueryUnbondingDelegationResponse.fromBuffer(value));
  static final _$delegatorDelegations = $grpc.ClientMethod<$2.QueryDelegatorDelegationsRequest, $2.QueryDelegatorDelegationsResponse>(
      '/cosmos.staking.v1beta1.Query/DelegatorDelegations',
      ($2.QueryDelegatorDelegationsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.QueryDelegatorDelegationsResponse.fromBuffer(value));
  static final _$delegatorUnbondingDelegations = $grpc.ClientMethod<$2.QueryDelegatorUnbondingDelegationsRequest, $2.QueryDelegatorUnbondingDelegationsResponse>(
      '/cosmos.staking.v1beta1.Query/DelegatorUnbondingDelegations',
      ($2.QueryDelegatorUnbondingDelegationsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.QueryDelegatorUnbondingDelegationsResponse.fromBuffer(value));
  static final _$redelegations = $grpc.ClientMethod<$2.QueryRedelegationsRequest, $2.QueryRedelegationsResponse>(
      '/cosmos.staking.v1beta1.Query/Redelegations',
      ($2.QueryRedelegationsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.QueryRedelegationsResponse.fromBuffer(value));
  static final _$delegatorValidators = $grpc.ClientMethod<$2.QueryDelegatorValidatorsRequest, $2.QueryDelegatorValidatorsResponse>(
      '/cosmos.staking.v1beta1.Query/DelegatorValidators',
      ($2.QueryDelegatorValidatorsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.QueryDelegatorValidatorsResponse.fromBuffer(value));
  static final _$delegatorValidator = $grpc.ClientMethod<$2.QueryDelegatorValidatorRequest, $2.QueryDelegatorValidatorResponse>(
      '/cosmos.staking.v1beta1.Query/DelegatorValidator',
      ($2.QueryDelegatorValidatorRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.QueryDelegatorValidatorResponse.fromBuffer(value));
  static final _$historicalInfo = $grpc.ClientMethod<$2.QueryHistoricalInfoRequest, $2.QueryHistoricalInfoResponse>(
      '/cosmos.staking.v1beta1.Query/HistoricalInfo',
      ($2.QueryHistoricalInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.QueryHistoricalInfoResponse.fromBuffer(value));
  static final _$pool = $grpc.ClientMethod<$2.QueryPoolRequest, $2.QueryPoolResponse>(
      '/cosmos.staking.v1beta1.Query/Pool',
      ($2.QueryPoolRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.QueryPoolResponse.fromBuffer(value));
  static final _$params = $grpc.ClientMethod<$2.QueryParamsRequest, $2.QueryParamsResponse>(
      '/cosmos.staking.v1beta1.Query/Params',
      ($2.QueryParamsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.QueryParamsResponse.fromBuffer(value));

  QueryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$2.QueryValidatorsResponse> validators($2.QueryValidatorsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$validators, request, options: options);
  }

  $grpc.ResponseFuture<$2.QueryValidatorResponse> validator($2.QueryValidatorRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$validator, request, options: options);
  }

  $grpc.ResponseFuture<$2.QueryValidatorDelegationsResponse> validatorDelegations($2.QueryValidatorDelegationsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$validatorDelegations, request, options: options);
  }

  $grpc.ResponseFuture<$2.QueryValidatorUnbondingDelegationsResponse> validatorUnbondingDelegations($2.QueryValidatorUnbondingDelegationsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$validatorUnbondingDelegations, request, options: options);
  }

  $grpc.ResponseFuture<$2.QueryDelegationResponse> delegation($2.QueryDelegationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delegation, request, options: options);
  }

  $grpc.ResponseFuture<$2.QueryUnbondingDelegationResponse> unbondingDelegation($2.QueryUnbondingDelegationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unbondingDelegation, request, options: options);
  }

  $grpc.ResponseFuture<$2.QueryDelegatorDelegationsResponse> delegatorDelegations($2.QueryDelegatorDelegationsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delegatorDelegations, request, options: options);
  }

  $grpc.ResponseFuture<$2.QueryDelegatorUnbondingDelegationsResponse> delegatorUnbondingDelegations($2.QueryDelegatorUnbondingDelegationsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delegatorUnbondingDelegations, request, options: options);
  }

  $grpc.ResponseFuture<$2.QueryRedelegationsResponse> redelegations($2.QueryRedelegationsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$redelegations, request, options: options);
  }

  $grpc.ResponseFuture<$2.QueryDelegatorValidatorsResponse> delegatorValidators($2.QueryDelegatorValidatorsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delegatorValidators, request, options: options);
  }

  $grpc.ResponseFuture<$2.QueryDelegatorValidatorResponse> delegatorValidator($2.QueryDelegatorValidatorRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delegatorValidator, request, options: options);
  }

  $grpc.ResponseFuture<$2.QueryHistoricalInfoResponse> historicalInfo($2.QueryHistoricalInfoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$historicalInfo, request, options: options);
  }

  $grpc.ResponseFuture<$2.QueryPoolResponse> pool($2.QueryPoolRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$pool, request, options: options);
  }

  $grpc.ResponseFuture<$2.QueryParamsResponse> params($2.QueryParamsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$params, request, options: options);
  }
}

@$pb.GrpcServiceName('cosmos.staking.v1beta1.Query')
abstract class QueryServiceBase extends $grpc.Service {
  $core.String get $name => 'cosmos.staking.v1beta1.Query';

  QueryServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.QueryValidatorsRequest, $2.QueryValidatorsResponse>(
        'Validators',
        validators_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.QueryValidatorsRequest.fromBuffer(value),
        ($2.QueryValidatorsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.QueryValidatorRequest, $2.QueryValidatorResponse>(
        'Validator',
        validator_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.QueryValidatorRequest.fromBuffer(value),
        ($2.QueryValidatorResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.QueryValidatorDelegationsRequest, $2.QueryValidatorDelegationsResponse>(
        'ValidatorDelegations',
        validatorDelegations_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.QueryValidatorDelegationsRequest.fromBuffer(value),
        ($2.QueryValidatorDelegationsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.QueryValidatorUnbondingDelegationsRequest, $2.QueryValidatorUnbondingDelegationsResponse>(
        'ValidatorUnbondingDelegations',
        validatorUnbondingDelegations_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.QueryValidatorUnbondingDelegationsRequest.fromBuffer(value),
        ($2.QueryValidatorUnbondingDelegationsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.QueryDelegationRequest, $2.QueryDelegationResponse>(
        'Delegation',
        delegation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.QueryDelegationRequest.fromBuffer(value),
        ($2.QueryDelegationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.QueryUnbondingDelegationRequest, $2.QueryUnbondingDelegationResponse>(
        'UnbondingDelegation',
        unbondingDelegation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.QueryUnbondingDelegationRequest.fromBuffer(value),
        ($2.QueryUnbondingDelegationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.QueryDelegatorDelegationsRequest, $2.QueryDelegatorDelegationsResponse>(
        'DelegatorDelegations',
        delegatorDelegations_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.QueryDelegatorDelegationsRequest.fromBuffer(value),
        ($2.QueryDelegatorDelegationsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.QueryDelegatorUnbondingDelegationsRequest, $2.QueryDelegatorUnbondingDelegationsResponse>(
        'DelegatorUnbondingDelegations',
        delegatorUnbondingDelegations_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.QueryDelegatorUnbondingDelegationsRequest.fromBuffer(value),
        ($2.QueryDelegatorUnbondingDelegationsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.QueryRedelegationsRequest, $2.QueryRedelegationsResponse>(
        'Redelegations',
        redelegations_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.QueryRedelegationsRequest.fromBuffer(value),
        ($2.QueryRedelegationsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.QueryDelegatorValidatorsRequest, $2.QueryDelegatorValidatorsResponse>(
        'DelegatorValidators',
        delegatorValidators_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.QueryDelegatorValidatorsRequest.fromBuffer(value),
        ($2.QueryDelegatorValidatorsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.QueryDelegatorValidatorRequest, $2.QueryDelegatorValidatorResponse>(
        'DelegatorValidator',
        delegatorValidator_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.QueryDelegatorValidatorRequest.fromBuffer(value),
        ($2.QueryDelegatorValidatorResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.QueryHistoricalInfoRequest, $2.QueryHistoricalInfoResponse>(
        'HistoricalInfo',
        historicalInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.QueryHistoricalInfoRequest.fromBuffer(value),
        ($2.QueryHistoricalInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.QueryPoolRequest, $2.QueryPoolResponse>(
        'Pool',
        pool_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.QueryPoolRequest.fromBuffer(value),
        ($2.QueryPoolResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.QueryParamsRequest, $2.QueryParamsResponse>(
        'Params',
        params_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.QueryParamsRequest.fromBuffer(value),
        ($2.QueryParamsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.QueryValidatorsResponse> validators_Pre($grpc.ServiceCall call, $async.Future<$2.QueryValidatorsRequest> request) async {
    return validators(call, await request);
  }

  $async.Future<$2.QueryValidatorResponse> validator_Pre($grpc.ServiceCall call, $async.Future<$2.QueryValidatorRequest> request) async {
    return validator(call, await request);
  }

  $async.Future<$2.QueryValidatorDelegationsResponse> validatorDelegations_Pre($grpc.ServiceCall call, $async.Future<$2.QueryValidatorDelegationsRequest> request) async {
    return validatorDelegations(call, await request);
  }

  $async.Future<$2.QueryValidatorUnbondingDelegationsResponse> validatorUnbondingDelegations_Pre($grpc.ServiceCall call, $async.Future<$2.QueryValidatorUnbondingDelegationsRequest> request) async {
    return validatorUnbondingDelegations(call, await request);
  }

  $async.Future<$2.QueryDelegationResponse> delegation_Pre($grpc.ServiceCall call, $async.Future<$2.QueryDelegationRequest> request) async {
    return delegation(call, await request);
  }

  $async.Future<$2.QueryUnbondingDelegationResponse> unbondingDelegation_Pre($grpc.ServiceCall call, $async.Future<$2.QueryUnbondingDelegationRequest> request) async {
    return unbondingDelegation(call, await request);
  }

  $async.Future<$2.QueryDelegatorDelegationsResponse> delegatorDelegations_Pre($grpc.ServiceCall call, $async.Future<$2.QueryDelegatorDelegationsRequest> request) async {
    return delegatorDelegations(call, await request);
  }

  $async.Future<$2.QueryDelegatorUnbondingDelegationsResponse> delegatorUnbondingDelegations_Pre($grpc.ServiceCall call, $async.Future<$2.QueryDelegatorUnbondingDelegationsRequest> request) async {
    return delegatorUnbondingDelegations(call, await request);
  }

  $async.Future<$2.QueryRedelegationsResponse> redelegations_Pre($grpc.ServiceCall call, $async.Future<$2.QueryRedelegationsRequest> request) async {
    return redelegations(call, await request);
  }

  $async.Future<$2.QueryDelegatorValidatorsResponse> delegatorValidators_Pre($grpc.ServiceCall call, $async.Future<$2.QueryDelegatorValidatorsRequest> request) async {
    return delegatorValidators(call, await request);
  }

  $async.Future<$2.QueryDelegatorValidatorResponse> delegatorValidator_Pre($grpc.ServiceCall call, $async.Future<$2.QueryDelegatorValidatorRequest> request) async {
    return delegatorValidator(call, await request);
  }

  $async.Future<$2.QueryHistoricalInfoResponse> historicalInfo_Pre($grpc.ServiceCall call, $async.Future<$2.QueryHistoricalInfoRequest> request) async {
    return historicalInfo(call, await request);
  }

  $async.Future<$2.QueryPoolResponse> pool_Pre($grpc.ServiceCall call, $async.Future<$2.QueryPoolRequest> request) async {
    return pool(call, await request);
  }

  $async.Future<$2.QueryParamsResponse> params_Pre($grpc.ServiceCall call, $async.Future<$2.QueryParamsRequest> request) async {
    return params(call, await request);
  }

  $async.Future<$2.QueryValidatorsResponse> validators($grpc.ServiceCall call, $2.QueryValidatorsRequest request);
  $async.Future<$2.QueryValidatorResponse> validator($grpc.ServiceCall call, $2.QueryValidatorRequest request);
  $async.Future<$2.QueryValidatorDelegationsResponse> validatorDelegations($grpc.ServiceCall call, $2.QueryValidatorDelegationsRequest request);
  $async.Future<$2.QueryValidatorUnbondingDelegationsResponse> validatorUnbondingDelegations($grpc.ServiceCall call, $2.QueryValidatorUnbondingDelegationsRequest request);
  $async.Future<$2.QueryDelegationResponse> delegation($grpc.ServiceCall call, $2.QueryDelegationRequest request);
  $async.Future<$2.QueryUnbondingDelegationResponse> unbondingDelegation($grpc.ServiceCall call, $2.QueryUnbondingDelegationRequest request);
  $async.Future<$2.QueryDelegatorDelegationsResponse> delegatorDelegations($grpc.ServiceCall call, $2.QueryDelegatorDelegationsRequest request);
  $async.Future<$2.QueryDelegatorUnbondingDelegationsResponse> delegatorUnbondingDelegations($grpc.ServiceCall call, $2.QueryDelegatorUnbondingDelegationsRequest request);
  $async.Future<$2.QueryRedelegationsResponse> redelegations($grpc.ServiceCall call, $2.QueryRedelegationsRequest request);
  $async.Future<$2.QueryDelegatorValidatorsResponse> delegatorValidators($grpc.ServiceCall call, $2.QueryDelegatorValidatorsRequest request);
  $async.Future<$2.QueryDelegatorValidatorResponse> delegatorValidator($grpc.ServiceCall call, $2.QueryDelegatorValidatorRequest request);
  $async.Future<$2.QueryHistoricalInfoResponse> historicalInfo($grpc.ServiceCall call, $2.QueryHistoricalInfoRequest request);
  $async.Future<$2.QueryPoolResponse> pool($grpc.ServiceCall call, $2.QueryPoolRequest request);
  $async.Future<$2.QueryParamsResponse> params($grpc.ServiceCall call, $2.QueryParamsRequest request);
}
