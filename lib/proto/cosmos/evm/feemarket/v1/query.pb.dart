//
//  Generated code. Do not modify.
//  source: cosmos/evm/feemarket/v1/query.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'feemarket.pb.dart' as $2;

/// QueryParamsRequest defines the request type for querying x/vm parameters.
class QueryParamsRequest extends $pb.GeneratedMessage {
  factory QueryParamsRequest() => create();
  QueryParamsRequest._() : super();
  factory QueryParamsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryParamsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryParamsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.feemarket.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryParamsRequest clone() => QueryParamsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryParamsRequest copyWith(void Function(QueryParamsRequest) updates) => super.copyWith((message) => updates(message as QueryParamsRequest)) as QueryParamsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryParamsRequest create() => QueryParamsRequest._();
  QueryParamsRequest createEmptyInstance() => create();
  static $pb.PbList<QueryParamsRequest> createRepeated() => $pb.PbList<QueryParamsRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryParamsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryParamsRequest>(create);
  static QueryParamsRequest? _defaultInstance;
}

/// QueryParamsResponse defines the response type for querying x/vm parameters.
class QueryParamsResponse extends $pb.GeneratedMessage {
  factory QueryParamsResponse({
    $2.Params? params,
  }) {
    final $result = create();
    if (params != null) {
      $result.params = params;
    }
    return $result;
  }
  QueryParamsResponse._() : super();
  factory QueryParamsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryParamsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryParamsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.feemarket.v1'), createEmptyInstance: create)
    ..aOM<$2.Params>(1, _omitFieldNames ? '' : 'params', subBuilder: $2.Params.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryParamsResponse clone() => QueryParamsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryParamsResponse copyWith(void Function(QueryParamsResponse) updates) => super.copyWith((message) => updates(message as QueryParamsResponse)) as QueryParamsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryParamsResponse create() => QueryParamsResponse._();
  QueryParamsResponse createEmptyInstance() => create();
  static $pb.PbList<QueryParamsResponse> createRepeated() => $pb.PbList<QueryParamsResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryParamsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryParamsResponse>(create);
  static QueryParamsResponse? _defaultInstance;

  /// params define the evm module parameters.
  @$pb.TagNumber(1)
  $2.Params get params => $_getN(0);
  @$pb.TagNumber(1)
  set params($2.Params v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasParams() => $_has(0);
  @$pb.TagNumber(1)
  void clearParams() => clearField(1);
  @$pb.TagNumber(1)
  $2.Params ensureParams() => $_ensure(0);
}

/// QueryBaseFeeRequest defines the request type for querying the EIP1559 base
/// fee.
class QueryBaseFeeRequest extends $pb.GeneratedMessage {
  factory QueryBaseFeeRequest() => create();
  QueryBaseFeeRequest._() : super();
  factory QueryBaseFeeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryBaseFeeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryBaseFeeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.feemarket.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryBaseFeeRequest clone() => QueryBaseFeeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryBaseFeeRequest copyWith(void Function(QueryBaseFeeRequest) updates) => super.copyWith((message) => updates(message as QueryBaseFeeRequest)) as QueryBaseFeeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryBaseFeeRequest create() => QueryBaseFeeRequest._();
  QueryBaseFeeRequest createEmptyInstance() => create();
  static $pb.PbList<QueryBaseFeeRequest> createRepeated() => $pb.PbList<QueryBaseFeeRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryBaseFeeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryBaseFeeRequest>(create);
  static QueryBaseFeeRequest? _defaultInstance;
}

/// QueryBaseFeeResponse returns the EIP1559 base fee.
class QueryBaseFeeResponse extends $pb.GeneratedMessage {
  factory QueryBaseFeeResponse({
    $core.String? baseFee,
  }) {
    final $result = create();
    if (baseFee != null) {
      $result.baseFee = baseFee;
    }
    return $result;
  }
  QueryBaseFeeResponse._() : super();
  factory QueryBaseFeeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryBaseFeeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryBaseFeeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.feemarket.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'baseFee')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryBaseFeeResponse clone() => QueryBaseFeeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryBaseFeeResponse copyWith(void Function(QueryBaseFeeResponse) updates) => super.copyWith((message) => updates(message as QueryBaseFeeResponse)) as QueryBaseFeeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryBaseFeeResponse create() => QueryBaseFeeResponse._();
  QueryBaseFeeResponse createEmptyInstance() => create();
  static $pb.PbList<QueryBaseFeeResponse> createRepeated() => $pb.PbList<QueryBaseFeeResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryBaseFeeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryBaseFeeResponse>(create);
  static QueryBaseFeeResponse? _defaultInstance;

  /// base_fee is the EIP1559 base fee
  @$pb.TagNumber(1)
  $core.String get baseFee => $_getSZ(0);
  @$pb.TagNumber(1)
  set baseFee($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBaseFee() => $_has(0);
  @$pb.TagNumber(1)
  void clearBaseFee() => clearField(1);
}

/// QueryBlockGasRequest defines the request type for querying the EIP1559 base
/// fee.
class QueryBlockGasRequest extends $pb.GeneratedMessage {
  factory QueryBlockGasRequest() => create();
  QueryBlockGasRequest._() : super();
  factory QueryBlockGasRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryBlockGasRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryBlockGasRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.feemarket.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryBlockGasRequest clone() => QueryBlockGasRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryBlockGasRequest copyWith(void Function(QueryBlockGasRequest) updates) => super.copyWith((message) => updates(message as QueryBlockGasRequest)) as QueryBlockGasRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryBlockGasRequest create() => QueryBlockGasRequest._();
  QueryBlockGasRequest createEmptyInstance() => create();
  static $pb.PbList<QueryBlockGasRequest> createRepeated() => $pb.PbList<QueryBlockGasRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryBlockGasRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryBlockGasRequest>(create);
  static QueryBlockGasRequest? _defaultInstance;
}

/// QueryBlockGasResponse returns block gas used for a given height.
class QueryBlockGasResponse extends $pb.GeneratedMessage {
  factory QueryBlockGasResponse({
    $fixnum.Int64? gas,
  }) {
    final $result = create();
    if (gas != null) {
      $result.gas = gas;
    }
    return $result;
  }
  QueryBlockGasResponse._() : super();
  factory QueryBlockGasResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryBlockGasResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryBlockGasResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.feemarket.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'gas')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryBlockGasResponse clone() => QueryBlockGasResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryBlockGasResponse copyWith(void Function(QueryBlockGasResponse) updates) => super.copyWith((message) => updates(message as QueryBlockGasResponse)) as QueryBlockGasResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryBlockGasResponse create() => QueryBlockGasResponse._();
  QueryBlockGasResponse createEmptyInstance() => create();
  static $pb.PbList<QueryBlockGasResponse> createRepeated() => $pb.PbList<QueryBlockGasResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryBlockGasResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryBlockGasResponse>(create);
  static QueryBlockGasResponse? _defaultInstance;

  /// gas is the returned block gas
  @$pb.TagNumber(1)
  $fixnum.Int64 get gas => $_getI64(0);
  @$pb.TagNumber(1)
  set gas($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGas() => $_has(0);
  @$pb.TagNumber(1)
  void clearGas() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
