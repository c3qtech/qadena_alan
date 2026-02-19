//
//  Generated code. Do not modify.
//  source: cosmos/evm/erc20/v1/query.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../base/query/v1beta1/pagination.pb.dart' as $6;
import 'erc20.pb.dart' as $3;
import 'genesis.pb.dart' as $5;

/// QueryTokenPairsRequest is the request type for the Query/TokenPairs RPC
/// method.
class QueryTokenPairsRequest extends $pb.GeneratedMessage {
  factory QueryTokenPairsRequest({
    $6.PageRequest? pagination,
  }) {
    final $result = create();
    if (pagination != null) {
      $result.pagination = pagination;
    }
    return $result;
  }
  QueryTokenPairsRequest._() : super();
  factory QueryTokenPairsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryTokenPairsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryTokenPairsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.erc20.v1'), createEmptyInstance: create)
    ..aOM<$6.PageRequest>(1, _omitFieldNames ? '' : 'pagination', subBuilder: $6.PageRequest.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryTokenPairsRequest clone() => QueryTokenPairsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryTokenPairsRequest copyWith(void Function(QueryTokenPairsRequest) updates) => super.copyWith((message) => updates(message as QueryTokenPairsRequest)) as QueryTokenPairsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryTokenPairsRequest create() => QueryTokenPairsRequest._();
  QueryTokenPairsRequest createEmptyInstance() => create();
  static $pb.PbList<QueryTokenPairsRequest> createRepeated() => $pb.PbList<QueryTokenPairsRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryTokenPairsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryTokenPairsRequest>(create);
  static QueryTokenPairsRequest? _defaultInstance;

  /// pagination defines an optional pagination for the request.
  @$pb.TagNumber(1)
  $6.PageRequest get pagination => $_getN(0);
  @$pb.TagNumber(1)
  set pagination($6.PageRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPagination() => $_has(0);
  @$pb.TagNumber(1)
  void clearPagination() => clearField(1);
  @$pb.TagNumber(1)
  $6.PageRequest ensurePagination() => $_ensure(0);
}

/// QueryTokenPairsResponse is the response type for the Query/TokenPairs RPC
/// method.
class QueryTokenPairsResponse extends $pb.GeneratedMessage {
  factory QueryTokenPairsResponse({
    $core.Iterable<$3.TokenPair>? tokenPairs,
    $6.PageResponse? pagination,
  }) {
    final $result = create();
    if (tokenPairs != null) {
      $result.tokenPairs.addAll(tokenPairs);
    }
    if (pagination != null) {
      $result.pagination = pagination;
    }
    return $result;
  }
  QueryTokenPairsResponse._() : super();
  factory QueryTokenPairsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryTokenPairsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryTokenPairsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.erc20.v1'), createEmptyInstance: create)
    ..pc<$3.TokenPair>(1, _omitFieldNames ? '' : 'tokenPairs', $pb.PbFieldType.PM, subBuilder: $3.TokenPair.create)
    ..aOM<$6.PageResponse>(2, _omitFieldNames ? '' : 'pagination', subBuilder: $6.PageResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryTokenPairsResponse clone() => QueryTokenPairsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryTokenPairsResponse copyWith(void Function(QueryTokenPairsResponse) updates) => super.copyWith((message) => updates(message as QueryTokenPairsResponse)) as QueryTokenPairsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryTokenPairsResponse create() => QueryTokenPairsResponse._();
  QueryTokenPairsResponse createEmptyInstance() => create();
  static $pb.PbList<QueryTokenPairsResponse> createRepeated() => $pb.PbList<QueryTokenPairsResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryTokenPairsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryTokenPairsResponse>(create);
  static QueryTokenPairsResponse? _defaultInstance;

  /// token_pairs is a slice of registered token pairs for the erc20 module
  @$pb.TagNumber(1)
  $core.List<$3.TokenPair> get tokenPairs => $_getList(0);

  /// pagination defines the pagination in the response.
  @$pb.TagNumber(2)
  $6.PageResponse get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($6.PageResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $6.PageResponse ensurePagination() => $_ensure(1);
}

/// QueryTokenPairRequest is the request type for the Query/TokenPair RPC method.
class QueryTokenPairRequest extends $pb.GeneratedMessage {
  factory QueryTokenPairRequest({
    $core.String? token,
  }) {
    final $result = create();
    if (token != null) {
      $result.token = token;
    }
    return $result;
  }
  QueryTokenPairRequest._() : super();
  factory QueryTokenPairRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryTokenPairRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryTokenPairRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.erc20.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'token')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryTokenPairRequest clone() => QueryTokenPairRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryTokenPairRequest copyWith(void Function(QueryTokenPairRequest) updates) => super.copyWith((message) => updates(message as QueryTokenPairRequest)) as QueryTokenPairRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryTokenPairRequest create() => QueryTokenPairRequest._();
  QueryTokenPairRequest createEmptyInstance() => create();
  static $pb.PbList<QueryTokenPairRequest> createRepeated() => $pb.PbList<QueryTokenPairRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryTokenPairRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryTokenPairRequest>(create);
  static QueryTokenPairRequest? _defaultInstance;

  /// token identifier can be either the hex contract address of the ERC20 or the
  /// Cosmos base denomination
  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
}

/// QueryTokenPairResponse is the response type for the Query/TokenPair RPC
/// method.
class QueryTokenPairResponse extends $pb.GeneratedMessage {
  factory QueryTokenPairResponse({
    $3.TokenPair? tokenPair,
  }) {
    final $result = create();
    if (tokenPair != null) {
      $result.tokenPair = tokenPair;
    }
    return $result;
  }
  QueryTokenPairResponse._() : super();
  factory QueryTokenPairResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryTokenPairResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryTokenPairResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.erc20.v1'), createEmptyInstance: create)
    ..aOM<$3.TokenPair>(1, _omitFieldNames ? '' : 'tokenPair', subBuilder: $3.TokenPair.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryTokenPairResponse clone() => QueryTokenPairResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryTokenPairResponse copyWith(void Function(QueryTokenPairResponse) updates) => super.copyWith((message) => updates(message as QueryTokenPairResponse)) as QueryTokenPairResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryTokenPairResponse create() => QueryTokenPairResponse._();
  QueryTokenPairResponse createEmptyInstance() => create();
  static $pb.PbList<QueryTokenPairResponse> createRepeated() => $pb.PbList<QueryTokenPairResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryTokenPairResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryTokenPairResponse>(create);
  static QueryTokenPairResponse? _defaultInstance;

  /// token_pairs returns the info about a registered token pair for the erc20
  /// module
  @$pb.TagNumber(1)
  $3.TokenPair get tokenPair => $_getN(0);
  @$pb.TagNumber(1)
  set tokenPair($3.TokenPair v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTokenPair() => $_has(0);
  @$pb.TagNumber(1)
  void clearTokenPair() => clearField(1);
  @$pb.TagNumber(1)
  $3.TokenPair ensureTokenPair() => $_ensure(0);
}

/// QueryParamsRequest is the request type for the Query/Params RPC method.
class QueryParamsRequest extends $pb.GeneratedMessage {
  factory QueryParamsRequest() => create();
  QueryParamsRequest._() : super();
  factory QueryParamsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryParamsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryParamsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.erc20.v1'), createEmptyInstance: create)
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

/// QueryParamsResponse is the response type for the Query/Params RPC
/// method.
class QueryParamsResponse extends $pb.GeneratedMessage {
  factory QueryParamsResponse({
    $5.Params? params,
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryParamsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.erc20.v1'), createEmptyInstance: create)
    ..aOM<$5.Params>(1, _omitFieldNames ? '' : 'params', subBuilder: $5.Params.create)
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

  /// params are the erc20 module parameters
  @$pb.TagNumber(1)
  $5.Params get params => $_getN(0);
  @$pb.TagNumber(1)
  set params($5.Params v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasParams() => $_has(0);
  @$pb.TagNumber(1)
  void clearParams() => clearField(1);
  @$pb.TagNumber(1)
  $5.Params ensureParams() => $_ensure(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
