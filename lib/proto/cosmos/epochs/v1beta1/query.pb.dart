//
//  Generated code. Do not modify.
//  source: cosmos/epochs/v1beta1/query.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'genesis.pb.dart' as $3;

/// QueryEpochInfosRequest defines the gRPC request structure for
/// querying all epoch info.
class QueryEpochInfosRequest extends $pb.GeneratedMessage {
  factory QueryEpochInfosRequest() => create();
  QueryEpochInfosRequest._() : super();
  factory QueryEpochInfosRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryEpochInfosRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryEpochInfosRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.epochs.v1beta1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryEpochInfosRequest clone() => QueryEpochInfosRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryEpochInfosRequest copyWith(void Function(QueryEpochInfosRequest) updates) => super.copyWith((message) => updates(message as QueryEpochInfosRequest)) as QueryEpochInfosRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryEpochInfosRequest create() => QueryEpochInfosRequest._();
  QueryEpochInfosRequest createEmptyInstance() => create();
  static $pb.PbList<QueryEpochInfosRequest> createRepeated() => $pb.PbList<QueryEpochInfosRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryEpochInfosRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryEpochInfosRequest>(create);
  static QueryEpochInfosRequest? _defaultInstance;
}

/// QueryEpochInfosRequest defines the gRPC response structure for
/// querying all epoch info.
class QueryEpochInfosResponse extends $pb.GeneratedMessage {
  factory QueryEpochInfosResponse({
    $core.Iterable<$3.EpochInfo>? epochs,
  }) {
    final $result = create();
    if (epochs != null) {
      $result.epochs.addAll(epochs);
    }
    return $result;
  }
  QueryEpochInfosResponse._() : super();
  factory QueryEpochInfosResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryEpochInfosResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryEpochInfosResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.epochs.v1beta1'), createEmptyInstance: create)
    ..pc<$3.EpochInfo>(1, _omitFieldNames ? '' : 'epochs', $pb.PbFieldType.PM, subBuilder: $3.EpochInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryEpochInfosResponse clone() => QueryEpochInfosResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryEpochInfosResponse copyWith(void Function(QueryEpochInfosResponse) updates) => super.copyWith((message) => updates(message as QueryEpochInfosResponse)) as QueryEpochInfosResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryEpochInfosResponse create() => QueryEpochInfosResponse._();
  QueryEpochInfosResponse createEmptyInstance() => create();
  static $pb.PbList<QueryEpochInfosResponse> createRepeated() => $pb.PbList<QueryEpochInfosResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryEpochInfosResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryEpochInfosResponse>(create);
  static QueryEpochInfosResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$3.EpochInfo> get epochs => $_getList(0);
}

/// QueryCurrentEpochRequest defines the gRPC request structure for
/// querying an epoch by its identifier.
class QueryCurrentEpochRequest extends $pb.GeneratedMessage {
  factory QueryCurrentEpochRequest({
    $core.String? identifier,
  }) {
    final $result = create();
    if (identifier != null) {
      $result.identifier = identifier;
    }
    return $result;
  }
  QueryCurrentEpochRequest._() : super();
  factory QueryCurrentEpochRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryCurrentEpochRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryCurrentEpochRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.epochs.v1beta1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'identifier')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryCurrentEpochRequest clone() => QueryCurrentEpochRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryCurrentEpochRequest copyWith(void Function(QueryCurrentEpochRequest) updates) => super.copyWith((message) => updates(message as QueryCurrentEpochRequest)) as QueryCurrentEpochRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryCurrentEpochRequest create() => QueryCurrentEpochRequest._();
  QueryCurrentEpochRequest createEmptyInstance() => create();
  static $pb.PbList<QueryCurrentEpochRequest> createRepeated() => $pb.PbList<QueryCurrentEpochRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryCurrentEpochRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryCurrentEpochRequest>(create);
  static QueryCurrentEpochRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get identifier => $_getSZ(0);
  @$pb.TagNumber(1)
  set identifier($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdentifier() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdentifier() => clearField(1);
}

/// QueryCurrentEpochResponse defines the gRPC response structure for
/// querying an epoch by its identifier.
class QueryCurrentEpochResponse extends $pb.GeneratedMessage {
  factory QueryCurrentEpochResponse({
    $fixnum.Int64? currentEpoch,
  }) {
    final $result = create();
    if (currentEpoch != null) {
      $result.currentEpoch = currentEpoch;
    }
    return $result;
  }
  QueryCurrentEpochResponse._() : super();
  factory QueryCurrentEpochResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryCurrentEpochResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryCurrentEpochResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.epochs.v1beta1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'currentEpoch')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryCurrentEpochResponse clone() => QueryCurrentEpochResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryCurrentEpochResponse copyWith(void Function(QueryCurrentEpochResponse) updates) => super.copyWith((message) => updates(message as QueryCurrentEpochResponse)) as QueryCurrentEpochResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryCurrentEpochResponse create() => QueryCurrentEpochResponse._();
  QueryCurrentEpochResponse createEmptyInstance() => create();
  static $pb.PbList<QueryCurrentEpochResponse> createRepeated() => $pb.PbList<QueryCurrentEpochResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryCurrentEpochResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryCurrentEpochResponse>(create);
  static QueryCurrentEpochResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get currentEpoch => $_getI64(0);
  @$pb.TagNumber(1)
  set currentEpoch($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCurrentEpoch() => $_has(0);
  @$pb.TagNumber(1)
  void clearCurrentEpoch() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
