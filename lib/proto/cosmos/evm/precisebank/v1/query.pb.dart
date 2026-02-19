//
//  Generated code. Do not modify.
//  source: cosmos/evm/precisebank/v1/query.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../base/v1beta1/coin.pb.dart' as $1;

/// QueryRemainderRequest defines the request type for Query/Remainder method.
class QueryRemainderRequest extends $pb.GeneratedMessage {
  factory QueryRemainderRequest() => create();
  QueryRemainderRequest._() : super();
  factory QueryRemainderRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryRemainderRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryRemainderRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.precisebank.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryRemainderRequest clone() => QueryRemainderRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryRemainderRequest copyWith(void Function(QueryRemainderRequest) updates) => super.copyWith((message) => updates(message as QueryRemainderRequest)) as QueryRemainderRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryRemainderRequest create() => QueryRemainderRequest._();
  QueryRemainderRequest createEmptyInstance() => create();
  static $pb.PbList<QueryRemainderRequest> createRepeated() => $pb.PbList<QueryRemainderRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryRemainderRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryRemainderRequest>(create);
  static QueryRemainderRequest? _defaultInstance;
}

/// QueryRemainderResponse defines the response type for Query/Remainder method.
class QueryRemainderResponse extends $pb.GeneratedMessage {
  factory QueryRemainderResponse({
    $1.Coin? remainder,
  }) {
    final $result = create();
    if (remainder != null) {
      $result.remainder = remainder;
    }
    return $result;
  }
  QueryRemainderResponse._() : super();
  factory QueryRemainderResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryRemainderResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryRemainderResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.precisebank.v1'), createEmptyInstance: create)
    ..aOM<$1.Coin>(1, _omitFieldNames ? '' : 'remainder', subBuilder: $1.Coin.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryRemainderResponse clone() => QueryRemainderResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryRemainderResponse copyWith(void Function(QueryRemainderResponse) updates) => super.copyWith((message) => updates(message as QueryRemainderResponse)) as QueryRemainderResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryRemainderResponse create() => QueryRemainderResponse._();
  QueryRemainderResponse createEmptyInstance() => create();
  static $pb.PbList<QueryRemainderResponse> createRepeated() => $pb.PbList<QueryRemainderResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryRemainderResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryRemainderResponse>(create);
  static QueryRemainderResponse? _defaultInstance;

  /// remainder is the amount backed by the reserve, but not yet owned by any
  /// account, i.e. not in circulation.
  @$pb.TagNumber(1)
  $1.Coin get remainder => $_getN(0);
  @$pb.TagNumber(1)
  set remainder($1.Coin v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRemainder() => $_has(0);
  @$pb.TagNumber(1)
  void clearRemainder() => clearField(1);
  @$pb.TagNumber(1)
  $1.Coin ensureRemainder() => $_ensure(0);
}

/// QueryFractionalBalanceRequest defines the request type for
/// Query/FractionalBalance method.
class QueryFractionalBalanceRequest extends $pb.GeneratedMessage {
  factory QueryFractionalBalanceRequest({
    $core.String? address,
  }) {
    final $result = create();
    if (address != null) {
      $result.address = address;
    }
    return $result;
  }
  QueryFractionalBalanceRequest._() : super();
  factory QueryFractionalBalanceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryFractionalBalanceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryFractionalBalanceRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.precisebank.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'address')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryFractionalBalanceRequest clone() => QueryFractionalBalanceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryFractionalBalanceRequest copyWith(void Function(QueryFractionalBalanceRequest) updates) => super.copyWith((message) => updates(message as QueryFractionalBalanceRequest)) as QueryFractionalBalanceRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryFractionalBalanceRequest create() => QueryFractionalBalanceRequest._();
  QueryFractionalBalanceRequest createEmptyInstance() => create();
  static $pb.PbList<QueryFractionalBalanceRequest> createRepeated() => $pb.PbList<QueryFractionalBalanceRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryFractionalBalanceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryFractionalBalanceRequest>(create);
  static QueryFractionalBalanceRequest? _defaultInstance;

  /// address is the account address to query  fractional balance for.
  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);
}

/// QueryFractionalBalanceResponse defines the response type for
/// Query/FractionalBalance method.
class QueryFractionalBalanceResponse extends $pb.GeneratedMessage {
  factory QueryFractionalBalanceResponse({
    $1.Coin? fractionalBalance,
  }) {
    final $result = create();
    if (fractionalBalance != null) {
      $result.fractionalBalance = fractionalBalance;
    }
    return $result;
  }
  QueryFractionalBalanceResponse._() : super();
  factory QueryFractionalBalanceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryFractionalBalanceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryFractionalBalanceResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.precisebank.v1'), createEmptyInstance: create)
    ..aOM<$1.Coin>(1, _omitFieldNames ? '' : 'fractionalBalance', subBuilder: $1.Coin.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryFractionalBalanceResponse clone() => QueryFractionalBalanceResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryFractionalBalanceResponse copyWith(void Function(QueryFractionalBalanceResponse) updates) => super.copyWith((message) => updates(message as QueryFractionalBalanceResponse)) as QueryFractionalBalanceResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryFractionalBalanceResponse create() => QueryFractionalBalanceResponse._();
  QueryFractionalBalanceResponse createEmptyInstance() => create();
  static $pb.PbList<QueryFractionalBalanceResponse> createRepeated() => $pb.PbList<QueryFractionalBalanceResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryFractionalBalanceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryFractionalBalanceResponse>(create);
  static QueryFractionalBalanceResponse? _defaultInstance;

  /// fractional_balance is the fractional balance of the address.
  @$pb.TagNumber(1)
  $1.Coin get fractionalBalance => $_getN(0);
  @$pb.TagNumber(1)
  set fractionalBalance($1.Coin v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFractionalBalance() => $_has(0);
  @$pb.TagNumber(1)
  void clearFractionalBalance() => clearField(1);
  @$pb.TagNumber(1)
  $1.Coin ensureFractionalBalance() => $_ensure(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
