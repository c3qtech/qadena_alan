//
//  Generated code. Do not modify.
//  source: cosmos/protocolpool/v1/query.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../base/v1beta1/coin.pb.dart' as $3;
import 'types.pb.dart' as $4;

/// QueryCommunityPoolRequest is the request type for the Query/CommunityPool RPC
/// method.
class QueryCommunityPoolRequest extends $pb.GeneratedMessage {
  factory QueryCommunityPoolRequest() => create();
  QueryCommunityPoolRequest._() : super();
  factory QueryCommunityPoolRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryCommunityPoolRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryCommunityPoolRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.protocolpool.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryCommunityPoolRequest clone() => QueryCommunityPoolRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryCommunityPoolRequest copyWith(void Function(QueryCommunityPoolRequest) updates) => super.copyWith((message) => updates(message as QueryCommunityPoolRequest)) as QueryCommunityPoolRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryCommunityPoolRequest create() => QueryCommunityPoolRequest._();
  QueryCommunityPoolRequest createEmptyInstance() => create();
  static $pb.PbList<QueryCommunityPoolRequest> createRepeated() => $pb.PbList<QueryCommunityPoolRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryCommunityPoolRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryCommunityPoolRequest>(create);
  static QueryCommunityPoolRequest? _defaultInstance;
}

/// QueryCommunityPoolResponse is the response type for the Query/CommunityPool
/// RPC method.
class QueryCommunityPoolResponse extends $pb.GeneratedMessage {
  factory QueryCommunityPoolResponse({
    $core.Iterable<$3.Coin>? pool,
  }) {
    final $result = create();
    if (pool != null) {
      $result.pool.addAll(pool);
    }
    return $result;
  }
  QueryCommunityPoolResponse._() : super();
  factory QueryCommunityPoolResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryCommunityPoolResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryCommunityPoolResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.protocolpool.v1'), createEmptyInstance: create)
    ..pc<$3.Coin>(1, _omitFieldNames ? '' : 'pool', $pb.PbFieldType.PM, subBuilder: $3.Coin.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryCommunityPoolResponse clone() => QueryCommunityPoolResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryCommunityPoolResponse copyWith(void Function(QueryCommunityPoolResponse) updates) => super.copyWith((message) => updates(message as QueryCommunityPoolResponse)) as QueryCommunityPoolResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryCommunityPoolResponse create() => QueryCommunityPoolResponse._();
  QueryCommunityPoolResponse createEmptyInstance() => create();
  static $pb.PbList<QueryCommunityPoolResponse> createRepeated() => $pb.PbList<QueryCommunityPoolResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryCommunityPoolResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryCommunityPoolResponse>(create);
  static QueryCommunityPoolResponse? _defaultInstance;

  /// pool defines community pool's coins.
  @$pb.TagNumber(1)
  $core.List<$3.Coin> get pool => $_getList(0);
}

/// QueryContinuousFundRequest is the request type for the Query/ContinuousFund
/// RPC method.
class QueryContinuousFundRequest extends $pb.GeneratedMessage {
  factory QueryContinuousFundRequest({
    $core.String? recipient,
  }) {
    final $result = create();
    if (recipient != null) {
      $result.recipient = recipient;
    }
    return $result;
  }
  QueryContinuousFundRequest._() : super();
  factory QueryContinuousFundRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryContinuousFundRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryContinuousFundRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.protocolpool.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'recipient')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryContinuousFundRequest clone() => QueryContinuousFundRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryContinuousFundRequest copyWith(void Function(QueryContinuousFundRequest) updates) => super.copyWith((message) => updates(message as QueryContinuousFundRequest)) as QueryContinuousFundRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryContinuousFundRequest create() => QueryContinuousFundRequest._();
  QueryContinuousFundRequest createEmptyInstance() => create();
  static $pb.PbList<QueryContinuousFundRequest> createRepeated() => $pb.PbList<QueryContinuousFundRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryContinuousFundRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryContinuousFundRequest>(create);
  static QueryContinuousFundRequest? _defaultInstance;

  /// recipient is the recipient address to query unclaimed budget amount for.
  @$pb.TagNumber(1)
  $core.String get recipient => $_getSZ(0);
  @$pb.TagNumber(1)
  set recipient($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRecipient() => $_has(0);
  @$pb.TagNumber(1)
  void clearRecipient() => clearField(1);
}

/// QueryUnclaimedBudgetResponse is the response type for the Query/ContinuousFund
/// RPC method.
class QueryContinuousFundResponse extends $pb.GeneratedMessage {
  factory QueryContinuousFundResponse({
    $4.ContinuousFund? continuousFund,
  }) {
    final $result = create();
    if (continuousFund != null) {
      $result.continuousFund = continuousFund;
    }
    return $result;
  }
  QueryContinuousFundResponse._() : super();
  factory QueryContinuousFundResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryContinuousFundResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryContinuousFundResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.protocolpool.v1'), createEmptyInstance: create)
    ..aOM<$4.ContinuousFund>(1, _omitFieldNames ? '' : 'continuousFund', subBuilder: $4.ContinuousFund.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryContinuousFundResponse clone() => QueryContinuousFundResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryContinuousFundResponse copyWith(void Function(QueryContinuousFundResponse) updates) => super.copyWith((message) => updates(message as QueryContinuousFundResponse)) as QueryContinuousFundResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryContinuousFundResponse create() => QueryContinuousFundResponse._();
  QueryContinuousFundResponse createEmptyInstance() => create();
  static $pb.PbList<QueryContinuousFundResponse> createRepeated() => $pb.PbList<QueryContinuousFundResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryContinuousFundResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryContinuousFundResponse>(create);
  static QueryContinuousFundResponse? _defaultInstance;

  /// ContinuousFunds is the given continuous fund returned in the query.
  @$pb.TagNumber(1)
  $4.ContinuousFund get continuousFund => $_getN(0);
  @$pb.TagNumber(1)
  set continuousFund($4.ContinuousFund v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasContinuousFund() => $_has(0);
  @$pb.TagNumber(1)
  void clearContinuousFund() => clearField(1);
  @$pb.TagNumber(1)
  $4.ContinuousFund ensureContinuousFund() => $_ensure(0);
}

/// QueryContinuousFundRequest is the request type for the Query/ContinuousFunds
/// RPC method.
class QueryContinuousFundsRequest extends $pb.GeneratedMessage {
  factory QueryContinuousFundsRequest() => create();
  QueryContinuousFundsRequest._() : super();
  factory QueryContinuousFundsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryContinuousFundsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryContinuousFundsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.protocolpool.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryContinuousFundsRequest clone() => QueryContinuousFundsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryContinuousFundsRequest copyWith(void Function(QueryContinuousFundsRequest) updates) => super.copyWith((message) => updates(message as QueryContinuousFundsRequest)) as QueryContinuousFundsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryContinuousFundsRequest create() => QueryContinuousFundsRequest._();
  QueryContinuousFundsRequest createEmptyInstance() => create();
  static $pb.PbList<QueryContinuousFundsRequest> createRepeated() => $pb.PbList<QueryContinuousFundsRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryContinuousFundsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryContinuousFundsRequest>(create);
  static QueryContinuousFundsRequest? _defaultInstance;
}

/// QueryUnclaimedBudgetResponse is the response type for the Query/ContinuousFunds
/// RPC method.
class QueryContinuousFundsResponse extends $pb.GeneratedMessage {
  factory QueryContinuousFundsResponse({
    $core.Iterable<$4.ContinuousFund>? continuousFunds,
  }) {
    final $result = create();
    if (continuousFunds != null) {
      $result.continuousFunds.addAll(continuousFunds);
    }
    return $result;
  }
  QueryContinuousFundsResponse._() : super();
  factory QueryContinuousFundsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryContinuousFundsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryContinuousFundsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.protocolpool.v1'), createEmptyInstance: create)
    ..pc<$4.ContinuousFund>(1, _omitFieldNames ? '' : 'continuousFunds', $pb.PbFieldType.PM, subBuilder: $4.ContinuousFund.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryContinuousFundsResponse clone() => QueryContinuousFundsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryContinuousFundsResponse copyWith(void Function(QueryContinuousFundsResponse) updates) => super.copyWith((message) => updates(message as QueryContinuousFundsResponse)) as QueryContinuousFundsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryContinuousFundsResponse create() => QueryContinuousFundsResponse._();
  QueryContinuousFundsResponse createEmptyInstance() => create();
  static $pb.PbList<QueryContinuousFundsResponse> createRepeated() => $pb.PbList<QueryContinuousFundsResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryContinuousFundsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryContinuousFundsResponse>(create);
  static QueryContinuousFundsResponse? _defaultInstance;

  /// ContinuousFunds defines all continuous funds in state.
  @$pb.TagNumber(1)
  $core.List<$4.ContinuousFund> get continuousFunds => $_getList(0);
}

/// QueryParamsRequest is the response type for the Query/Params RPC method.
class QueryParamsRequest extends $pb.GeneratedMessage {
  factory QueryParamsRequest() => create();
  QueryParamsRequest._() : super();
  factory QueryParamsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryParamsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryParamsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.protocolpool.v1'), createEmptyInstance: create)
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

/// QueryParamsResponse is the response type for the Query/Params RPC method.
class QueryParamsResponse extends $pb.GeneratedMessage {
  factory QueryParamsResponse({
    $4.Params? params,
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryParamsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.protocolpool.v1'), createEmptyInstance: create)
    ..aOM<$4.Params>(1, _omitFieldNames ? '' : 'params', subBuilder: $4.Params.create)
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

  @$pb.TagNumber(1)
  $4.Params get params => $_getN(0);
  @$pb.TagNumber(1)
  set params($4.Params v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasParams() => $_has(0);
  @$pb.TagNumber(1)
  void clearParams() => clearField(1);
  @$pb.TagNumber(1)
  $4.Params ensureParams() => $_ensure(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
