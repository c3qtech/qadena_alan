//
//  Generated code. Do not modify.
//  source: qadena/pricefeed/tx.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/timestamp.pb.dart' as $4;
import 'params.pb.dart' as $3;

/// MsgUpdateParams is the Msg/UpdateParams request type.
class MsgUpdateParams extends $pb.GeneratedMessage {
  factory MsgUpdateParams({
    $core.String? authority,
    $3.Params? params,
  }) {
    final $result = create();
    if (authority != null) {
      $result.authority = authority;
    }
    if (params != null) {
      $result.params = params;
    }
    return $result;
  }
  MsgUpdateParams._() : super();
  factory MsgUpdateParams.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgUpdateParams.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgUpdateParams', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.pricefeed'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'authority')
    ..aOM<$3.Params>(2, _omitFieldNames ? '' : 'params', subBuilder: $3.Params.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgUpdateParams clone() => MsgUpdateParams()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgUpdateParams copyWith(void Function(MsgUpdateParams) updates) => super.copyWith((message) => updates(message as MsgUpdateParams)) as MsgUpdateParams;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgUpdateParams create() => MsgUpdateParams._();
  MsgUpdateParams createEmptyInstance() => create();
  static $pb.PbList<MsgUpdateParams> createRepeated() => $pb.PbList<MsgUpdateParams>();
  @$core.pragma('dart2js:noInline')
  static MsgUpdateParams getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgUpdateParams>(create);
  static MsgUpdateParams? _defaultInstance;

  /// authority is the address that controls the module (defaults to x/gov unless overwritten).
  @$pb.TagNumber(1)
  $core.String get authority => $_getSZ(0);
  @$pb.TagNumber(1)
  set authority($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAuthority() => $_has(0);
  @$pb.TagNumber(1)
  void clearAuthority() => clearField(1);

  /// NOTE: All parameters must be supplied.
  @$pb.TagNumber(2)
  $3.Params get params => $_getN(1);
  @$pb.TagNumber(2)
  set params($3.Params v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasParams() => $_has(1);
  @$pb.TagNumber(2)
  void clearParams() => clearField(2);
  @$pb.TagNumber(2)
  $3.Params ensureParams() => $_ensure(1);
}

/// MsgUpdateParamsResponse defines the response structure for executing a
/// MsgUpdateParams message.
class MsgUpdateParamsResponse extends $pb.GeneratedMessage {
  factory MsgUpdateParamsResponse() => create();
  MsgUpdateParamsResponse._() : super();
  factory MsgUpdateParamsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgUpdateParamsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgUpdateParamsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.pricefeed'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgUpdateParamsResponse clone() => MsgUpdateParamsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgUpdateParamsResponse copyWith(void Function(MsgUpdateParamsResponse) updates) => super.copyWith((message) => updates(message as MsgUpdateParamsResponse)) as MsgUpdateParamsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgUpdateParamsResponse create() => MsgUpdateParamsResponse._();
  MsgUpdateParamsResponse createEmptyInstance() => create();
  static $pb.PbList<MsgUpdateParamsResponse> createRepeated() => $pb.PbList<MsgUpdateParamsResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgUpdateParamsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgUpdateParamsResponse>(create);
  static MsgUpdateParamsResponse? _defaultInstance;
}

class MsgPostPrice extends $pb.GeneratedMessage {
  factory MsgPostPrice({
    $core.String? creator,
    $core.String? marketId,
    $core.String? price,
    $4.Timestamp? expiry,
  }) {
    final $result = create();
    if (creator != null) {
      $result.creator = creator;
    }
    if (marketId != null) {
      $result.marketId = marketId;
    }
    if (price != null) {
      $result.price = price;
    }
    if (expiry != null) {
      $result.expiry = expiry;
    }
    return $result;
  }
  MsgPostPrice._() : super();
  factory MsgPostPrice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgPostPrice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgPostPrice', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.pricefeed'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'creator')
    ..aOS(2, _omitFieldNames ? '' : 'marketId', protoName: 'marketId')
    ..aOS(3, _omitFieldNames ? '' : 'price')
    ..aOM<$4.Timestamp>(4, _omitFieldNames ? '' : 'expiry', subBuilder: $4.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgPostPrice clone() => MsgPostPrice()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgPostPrice copyWith(void Function(MsgPostPrice) updates) => super.copyWith((message) => updates(message as MsgPostPrice)) as MsgPostPrice;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgPostPrice create() => MsgPostPrice._();
  MsgPostPrice createEmptyInstance() => create();
  static $pb.PbList<MsgPostPrice> createRepeated() => $pb.PbList<MsgPostPrice>();
  @$core.pragma('dart2js:noInline')
  static MsgPostPrice getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgPostPrice>(create);
  static MsgPostPrice? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get marketId => $_getSZ(1);
  @$pb.TagNumber(2)
  set marketId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMarketId() => $_has(1);
  @$pb.TagNumber(2)
  void clearMarketId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get price => $_getSZ(2);
  @$pb.TagNumber(3)
  set price($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPrice() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrice() => clearField(3);

  @$pb.TagNumber(4)
  $4.Timestamp get expiry => $_getN(3);
  @$pb.TagNumber(4)
  set expiry($4.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasExpiry() => $_has(3);
  @$pb.TagNumber(4)
  void clearExpiry() => clearField(4);
  @$pb.TagNumber(4)
  $4.Timestamp ensureExpiry() => $_ensure(3);
}

class MsgPostPriceResponse extends $pb.GeneratedMessage {
  factory MsgPostPriceResponse() => create();
  MsgPostPriceResponse._() : super();
  factory MsgPostPriceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgPostPriceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgPostPriceResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.pricefeed'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgPostPriceResponse clone() => MsgPostPriceResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgPostPriceResponse copyWith(void Function(MsgPostPriceResponse) updates) => super.copyWith((message) => updates(message as MsgPostPriceResponse)) as MsgPostPriceResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgPostPriceResponse create() => MsgPostPriceResponse._();
  MsgPostPriceResponse createEmptyInstance() => create();
  static $pb.PbList<MsgPostPriceResponse> createRepeated() => $pb.PbList<MsgPostPriceResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgPostPriceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgPostPriceResponse>(create);
  static MsgPostPriceResponse? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
