//
//  Generated code. Do not modify.
//  source: qadena/pricefeed/query.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../cosmos/base/query/v1beta1/pagination.pb.dart' as $6;
import 'current_price.pb.dart' as $7;
import 'market.pb.dart' as $2;
import 'params.pb.dart' as $3;
import 'posted_price.pb.dart' as $5;

/// QueryParamsRequest is request type for the Query/Params RPC method.
class QueryParamsRequest extends $pb.GeneratedMessage {
  factory QueryParamsRequest() => create();
  QueryParamsRequest._() : super();
  factory QueryParamsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryParamsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryParamsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.pricefeed'), createEmptyInstance: create)
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

/// QueryParamsResponse is response type for the Query/Params RPC method.
class QueryParamsResponse extends $pb.GeneratedMessage {
  factory QueryParamsResponse({
    $3.Params? params,
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryParamsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.pricefeed'), createEmptyInstance: create)
    ..aOM<$3.Params>(1, _omitFieldNames ? '' : 'params', subBuilder: $3.Params.create)
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

  /// params holds all the parameters of this module.
  @$pb.TagNumber(1)
  $3.Params get params => $_getN(0);
  @$pb.TagNumber(1)
  set params($3.Params v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasParams() => $_has(0);
  @$pb.TagNumber(1)
  void clearParams() => clearField(1);
  @$pb.TagNumber(1)
  $3.Params ensureParams() => $_ensure(0);
}

class QueryGetPostedPriceRequest extends $pb.GeneratedMessage {
  factory QueryGetPostedPriceRequest({
    $core.String? marketId,
    $core.List<$core.int>? oracleAddress,
  }) {
    final $result = create();
    if (marketId != null) {
      $result.marketId = marketId;
    }
    if (oracleAddress != null) {
      $result.oracleAddress = oracleAddress;
    }
    return $result;
  }
  QueryGetPostedPriceRequest._() : super();
  factory QueryGetPostedPriceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetPostedPriceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryGetPostedPriceRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.pricefeed'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'marketId', protoName: 'marketId')
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'oracleAddress', $pb.PbFieldType.OY, protoName: 'oracleAddress')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetPostedPriceRequest clone() => QueryGetPostedPriceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetPostedPriceRequest copyWith(void Function(QueryGetPostedPriceRequest) updates) => super.copyWith((message) => updates(message as QueryGetPostedPriceRequest)) as QueryGetPostedPriceRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryGetPostedPriceRequest create() => QueryGetPostedPriceRequest._();
  QueryGetPostedPriceRequest createEmptyInstance() => create();
  static $pb.PbList<QueryGetPostedPriceRequest> createRepeated() => $pb.PbList<QueryGetPostedPriceRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryGetPostedPriceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetPostedPriceRequest>(create);
  static QueryGetPostedPriceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get marketId => $_getSZ(0);
  @$pb.TagNumber(1)
  set marketId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMarketId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMarketId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get oracleAddress => $_getN(1);
  @$pb.TagNumber(2)
  set oracleAddress($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOracleAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearOracleAddress() => clearField(2);
}

class QueryGetPostedPriceResponse extends $pb.GeneratedMessage {
  factory QueryGetPostedPriceResponse({
    $5.PostedPrice? postedPrice,
  }) {
    final $result = create();
    if (postedPrice != null) {
      $result.postedPrice = postedPrice;
    }
    return $result;
  }
  QueryGetPostedPriceResponse._() : super();
  factory QueryGetPostedPriceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetPostedPriceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryGetPostedPriceResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.pricefeed'), createEmptyInstance: create)
    ..aOM<$5.PostedPrice>(1, _omitFieldNames ? '' : 'postedPrice', protoName: 'postedPrice', subBuilder: $5.PostedPrice.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetPostedPriceResponse clone() => QueryGetPostedPriceResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetPostedPriceResponse copyWith(void Function(QueryGetPostedPriceResponse) updates) => super.copyWith((message) => updates(message as QueryGetPostedPriceResponse)) as QueryGetPostedPriceResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryGetPostedPriceResponse create() => QueryGetPostedPriceResponse._();
  QueryGetPostedPriceResponse createEmptyInstance() => create();
  static $pb.PbList<QueryGetPostedPriceResponse> createRepeated() => $pb.PbList<QueryGetPostedPriceResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryGetPostedPriceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetPostedPriceResponse>(create);
  static QueryGetPostedPriceResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $5.PostedPrice get postedPrice => $_getN(0);
  @$pb.TagNumber(1)
  set postedPrice($5.PostedPrice v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPostedPrice() => $_has(0);
  @$pb.TagNumber(1)
  void clearPostedPrice() => clearField(1);
  @$pb.TagNumber(1)
  $5.PostedPrice ensurePostedPrice() => $_ensure(0);
}

class QueryAllPostedPriceRequest extends $pb.GeneratedMessage {
  factory QueryAllPostedPriceRequest({
    $6.PageRequest? pagination,
  }) {
    final $result = create();
    if (pagination != null) {
      $result.pagination = pagination;
    }
    return $result;
  }
  QueryAllPostedPriceRequest._() : super();
  factory QueryAllPostedPriceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAllPostedPriceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryAllPostedPriceRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.pricefeed'), createEmptyInstance: create)
    ..aOM<$6.PageRequest>(1, _omitFieldNames ? '' : 'pagination', subBuilder: $6.PageRequest.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAllPostedPriceRequest clone() => QueryAllPostedPriceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAllPostedPriceRequest copyWith(void Function(QueryAllPostedPriceRequest) updates) => super.copyWith((message) => updates(message as QueryAllPostedPriceRequest)) as QueryAllPostedPriceRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryAllPostedPriceRequest create() => QueryAllPostedPriceRequest._();
  QueryAllPostedPriceRequest createEmptyInstance() => create();
  static $pb.PbList<QueryAllPostedPriceRequest> createRepeated() => $pb.PbList<QueryAllPostedPriceRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryAllPostedPriceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAllPostedPriceRequest>(create);
  static QueryAllPostedPriceRequest? _defaultInstance;

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

class QueryAllPostedPriceResponse extends $pb.GeneratedMessage {
  factory QueryAllPostedPriceResponse({
    $core.Iterable<$5.PostedPrice>? postedPrice,
    $6.PageResponse? pagination,
  }) {
    final $result = create();
    if (postedPrice != null) {
      $result.postedPrice.addAll(postedPrice);
    }
    if (pagination != null) {
      $result.pagination = pagination;
    }
    return $result;
  }
  QueryAllPostedPriceResponse._() : super();
  factory QueryAllPostedPriceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAllPostedPriceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryAllPostedPriceResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.pricefeed'), createEmptyInstance: create)
    ..pc<$5.PostedPrice>(1, _omitFieldNames ? '' : 'postedPrice', $pb.PbFieldType.PM, protoName: 'postedPrice', subBuilder: $5.PostedPrice.create)
    ..aOM<$6.PageResponse>(2, _omitFieldNames ? '' : 'pagination', subBuilder: $6.PageResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAllPostedPriceResponse clone() => QueryAllPostedPriceResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAllPostedPriceResponse copyWith(void Function(QueryAllPostedPriceResponse) updates) => super.copyWith((message) => updates(message as QueryAllPostedPriceResponse)) as QueryAllPostedPriceResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryAllPostedPriceResponse create() => QueryAllPostedPriceResponse._();
  QueryAllPostedPriceResponse createEmptyInstance() => create();
  static $pb.PbList<QueryAllPostedPriceResponse> createRepeated() => $pb.PbList<QueryAllPostedPriceResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryAllPostedPriceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAllPostedPriceResponse>(create);
  static QueryAllPostedPriceResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$5.PostedPrice> get postedPrice => $_getList(0);

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

class QueryPriceRequest extends $pb.GeneratedMessage {
  factory QueryPriceRequest({
    $core.String? marketId,
  }) {
    final $result = create();
    if (marketId != null) {
      $result.marketId = marketId;
    }
    return $result;
  }
  QueryPriceRequest._() : super();
  factory QueryPriceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryPriceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryPriceRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.pricefeed'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'marketId', protoName: 'marketId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryPriceRequest clone() => QueryPriceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryPriceRequest copyWith(void Function(QueryPriceRequest) updates) => super.copyWith((message) => updates(message as QueryPriceRequest)) as QueryPriceRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryPriceRequest create() => QueryPriceRequest._();
  QueryPriceRequest createEmptyInstance() => create();
  static $pb.PbList<QueryPriceRequest> createRepeated() => $pb.PbList<QueryPriceRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryPriceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryPriceRequest>(create);
  static QueryPriceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get marketId => $_getSZ(0);
  @$pb.TagNumber(1)
  set marketId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMarketId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMarketId() => clearField(1);
}

class QueryPriceResponse extends $pb.GeneratedMessage {
  factory QueryPriceResponse({
    $7.CurrentPrice? price,
  }) {
    final $result = create();
    if (price != null) {
      $result.price = price;
    }
    return $result;
  }
  QueryPriceResponse._() : super();
  factory QueryPriceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryPriceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryPriceResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.pricefeed'), createEmptyInstance: create)
    ..aOM<$7.CurrentPrice>(1, _omitFieldNames ? '' : 'price', subBuilder: $7.CurrentPrice.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryPriceResponse clone() => QueryPriceResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryPriceResponse copyWith(void Function(QueryPriceResponse) updates) => super.copyWith((message) => updates(message as QueryPriceResponse)) as QueryPriceResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryPriceResponse create() => QueryPriceResponse._();
  QueryPriceResponse createEmptyInstance() => create();
  static $pb.PbList<QueryPriceResponse> createRepeated() => $pb.PbList<QueryPriceResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryPriceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryPriceResponse>(create);
  static QueryPriceResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $7.CurrentPrice get price => $_getN(0);
  @$pb.TagNumber(1)
  set price($7.CurrentPrice v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPrice() => $_has(0);
  @$pb.TagNumber(1)
  void clearPrice() => clearField(1);
  @$pb.TagNumber(1)
  $7.CurrentPrice ensurePrice() => $_ensure(0);
}

class QueryPricesRequest extends $pb.GeneratedMessage {
  factory QueryPricesRequest({
    $core.String? marketId,
  }) {
    final $result = create();
    if (marketId != null) {
      $result.marketId = marketId;
    }
    return $result;
  }
  QueryPricesRequest._() : super();
  factory QueryPricesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryPricesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryPricesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.pricefeed'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'marketId', protoName: 'marketId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryPricesRequest clone() => QueryPricesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryPricesRequest copyWith(void Function(QueryPricesRequest) updates) => super.copyWith((message) => updates(message as QueryPricesRequest)) as QueryPricesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryPricesRequest create() => QueryPricesRequest._();
  QueryPricesRequest createEmptyInstance() => create();
  static $pb.PbList<QueryPricesRequest> createRepeated() => $pb.PbList<QueryPricesRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryPricesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryPricesRequest>(create);
  static QueryPricesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get marketId => $_getSZ(0);
  @$pb.TagNumber(1)
  set marketId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMarketId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMarketId() => clearField(1);
}

class QueryPricesResponse extends $pb.GeneratedMessage {
  factory QueryPricesResponse({
    $core.Iterable<$7.CurrentPrice>? prices,
  }) {
    final $result = create();
    if (prices != null) {
      $result.prices.addAll(prices);
    }
    return $result;
  }
  QueryPricesResponse._() : super();
  factory QueryPricesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryPricesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryPricesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.pricefeed'), createEmptyInstance: create)
    ..pc<$7.CurrentPrice>(1, _omitFieldNames ? '' : 'prices', $pb.PbFieldType.PM, subBuilder: $7.CurrentPrice.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryPricesResponse clone() => QueryPricesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryPricesResponse copyWith(void Function(QueryPricesResponse) updates) => super.copyWith((message) => updates(message as QueryPricesResponse)) as QueryPricesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryPricesResponse create() => QueryPricesResponse._();
  QueryPricesResponse createEmptyInstance() => create();
  static $pb.PbList<QueryPricesResponse> createRepeated() => $pb.PbList<QueryPricesResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryPricesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryPricesResponse>(create);
  static QueryPricesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$7.CurrentPrice> get prices => $_getList(0);
}

class QueryRawPricesRequest extends $pb.GeneratedMessage {
  factory QueryRawPricesRequest({
    $core.String? marketId,
  }) {
    final $result = create();
    if (marketId != null) {
      $result.marketId = marketId;
    }
    return $result;
  }
  QueryRawPricesRequest._() : super();
  factory QueryRawPricesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryRawPricesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryRawPricesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.pricefeed'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'marketId', protoName: 'marketId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryRawPricesRequest clone() => QueryRawPricesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryRawPricesRequest copyWith(void Function(QueryRawPricesRequest) updates) => super.copyWith((message) => updates(message as QueryRawPricesRequest)) as QueryRawPricesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryRawPricesRequest create() => QueryRawPricesRequest._();
  QueryRawPricesRequest createEmptyInstance() => create();
  static $pb.PbList<QueryRawPricesRequest> createRepeated() => $pb.PbList<QueryRawPricesRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryRawPricesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryRawPricesRequest>(create);
  static QueryRawPricesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get marketId => $_getSZ(0);
  @$pb.TagNumber(1)
  set marketId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMarketId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMarketId() => clearField(1);
}

class QueryRawPricesResponse extends $pb.GeneratedMessage {
  factory QueryRawPricesResponse({
    $core.Iterable<$5.PostedPrice>? rawPrices,
  }) {
    final $result = create();
    if (rawPrices != null) {
      $result.rawPrices.addAll(rawPrices);
    }
    return $result;
  }
  QueryRawPricesResponse._() : super();
  factory QueryRawPricesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryRawPricesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryRawPricesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.pricefeed'), createEmptyInstance: create)
    ..pc<$5.PostedPrice>(1, _omitFieldNames ? '' : 'rawPrices', $pb.PbFieldType.PM, protoName: 'rawPrices', subBuilder: $5.PostedPrice.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryRawPricesResponse clone() => QueryRawPricesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryRawPricesResponse copyWith(void Function(QueryRawPricesResponse) updates) => super.copyWith((message) => updates(message as QueryRawPricesResponse)) as QueryRawPricesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryRawPricesResponse create() => QueryRawPricesResponse._();
  QueryRawPricesResponse createEmptyInstance() => create();
  static $pb.PbList<QueryRawPricesResponse> createRepeated() => $pb.PbList<QueryRawPricesResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryRawPricesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryRawPricesResponse>(create);
  static QueryRawPricesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$5.PostedPrice> get rawPrices => $_getList(0);
}

class QueryOraclesRequest extends $pb.GeneratedMessage {
  factory QueryOraclesRequest({
    $core.String? marketId,
  }) {
    final $result = create();
    if (marketId != null) {
      $result.marketId = marketId;
    }
    return $result;
  }
  QueryOraclesRequest._() : super();
  factory QueryOraclesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryOraclesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryOraclesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.pricefeed'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'marketId', protoName: 'marketId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryOraclesRequest clone() => QueryOraclesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryOraclesRequest copyWith(void Function(QueryOraclesRequest) updates) => super.copyWith((message) => updates(message as QueryOraclesRequest)) as QueryOraclesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryOraclesRequest create() => QueryOraclesRequest._();
  QueryOraclesRequest createEmptyInstance() => create();
  static $pb.PbList<QueryOraclesRequest> createRepeated() => $pb.PbList<QueryOraclesRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryOraclesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryOraclesRequest>(create);
  static QueryOraclesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get marketId => $_getSZ(0);
  @$pb.TagNumber(1)
  set marketId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMarketId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMarketId() => clearField(1);
}

class QueryOraclesResponse extends $pb.GeneratedMessage {
  factory QueryOraclesResponse({
    $core.Iterable<$core.String>? oracles,
  }) {
    final $result = create();
    if (oracles != null) {
      $result.oracles.addAll(oracles);
    }
    return $result;
  }
  QueryOraclesResponse._() : super();
  factory QueryOraclesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryOraclesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryOraclesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.pricefeed'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'oracles')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryOraclesResponse clone() => QueryOraclesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryOraclesResponse copyWith(void Function(QueryOraclesResponse) updates) => super.copyWith((message) => updates(message as QueryOraclesResponse)) as QueryOraclesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryOraclesResponse create() => QueryOraclesResponse._();
  QueryOraclesResponse createEmptyInstance() => create();
  static $pb.PbList<QueryOraclesResponse> createRepeated() => $pb.PbList<QueryOraclesResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryOraclesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryOraclesResponse>(create);
  static QueryOraclesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get oracles => $_getList(0);
}

class QueryMarketsRequest extends $pb.GeneratedMessage {
  factory QueryMarketsRequest() => create();
  QueryMarketsRequest._() : super();
  factory QueryMarketsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryMarketsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryMarketsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.pricefeed'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryMarketsRequest clone() => QueryMarketsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryMarketsRequest copyWith(void Function(QueryMarketsRequest) updates) => super.copyWith((message) => updates(message as QueryMarketsRequest)) as QueryMarketsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryMarketsRequest create() => QueryMarketsRequest._();
  QueryMarketsRequest createEmptyInstance() => create();
  static $pb.PbList<QueryMarketsRequest> createRepeated() => $pb.PbList<QueryMarketsRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryMarketsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryMarketsRequest>(create);
  static QueryMarketsRequest? _defaultInstance;
}

class QueryMarketsResponse extends $pb.GeneratedMessage {
  factory QueryMarketsResponse({
    $core.Iterable<$2.Market>? markets,
  }) {
    final $result = create();
    if (markets != null) {
      $result.markets.addAll(markets);
    }
    return $result;
  }
  QueryMarketsResponse._() : super();
  factory QueryMarketsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryMarketsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryMarketsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.pricefeed'), createEmptyInstance: create)
    ..pc<$2.Market>(1, _omitFieldNames ? '' : 'markets', $pb.PbFieldType.PM, subBuilder: $2.Market.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryMarketsResponse clone() => QueryMarketsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryMarketsResponse copyWith(void Function(QueryMarketsResponse) updates) => super.copyWith((message) => updates(message as QueryMarketsResponse)) as QueryMarketsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryMarketsResponse create() => QueryMarketsResponse._();
  QueryMarketsResponse createEmptyInstance() => create();
  static $pb.PbList<QueryMarketsResponse> createRepeated() => $pb.PbList<QueryMarketsResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryMarketsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryMarketsResponse>(create);
  static QueryMarketsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$2.Market> get markets => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
