//
//  Generated code. Do not modify.
//  source: qadena/pricefeed/posted_price.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/timestamp.pb.dart' as $4;

class PostedPrice extends $pb.GeneratedMessage {
  factory PostedPrice({
    $core.String? marketId,
    $core.List<$core.int>? oracleAddress,
    $core.String? price,
    $4.Timestamp? expiry,
  }) {
    final $result = create();
    if (marketId != null) {
      $result.marketId = marketId;
    }
    if (oracleAddress != null) {
      $result.oracleAddress = oracleAddress;
    }
    if (price != null) {
      $result.price = price;
    }
    if (expiry != null) {
      $result.expiry = expiry;
    }
    return $result;
  }
  PostedPrice._() : super();
  factory PostedPrice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PostedPrice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PostedPrice', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.pricefeed'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'marketId', protoName: 'marketId')
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'oracleAddress', $pb.PbFieldType.OY, protoName: 'oracleAddress')
    ..aOS(3, _omitFieldNames ? '' : 'price')
    ..aOM<$4.Timestamp>(4, _omitFieldNames ? '' : 'expiry', subBuilder: $4.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PostedPrice clone() => PostedPrice()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PostedPrice copyWith(void Function(PostedPrice) updates) => super.copyWith((message) => updates(message as PostedPrice)) as PostedPrice;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PostedPrice create() => PostedPrice._();
  PostedPrice createEmptyInstance() => create();
  static $pb.PbList<PostedPrice> createRepeated() => $pb.PbList<PostedPrice>();
  @$core.pragma('dart2js:noInline')
  static PostedPrice getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PostedPrice>(create);
  static PostedPrice? _defaultInstance;

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


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
