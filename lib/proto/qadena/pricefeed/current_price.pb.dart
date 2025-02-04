//
//  Generated code. Do not modify.
//  source: qadena/pricefeed/current_price.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class CurrentPrice extends $pb.GeneratedMessage {
  factory CurrentPrice({
    $core.String? marketId,
    $core.String? price,
  }) {
    final $result = create();
    if (marketId != null) {
      $result.marketId = marketId;
    }
    if (price != null) {
      $result.price = price;
    }
    return $result;
  }
  CurrentPrice._() : super();
  factory CurrentPrice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CurrentPrice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CurrentPrice', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.pricefeed'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'marketId', protoName: 'marketId')
    ..aOS(2, _omitFieldNames ? '' : 'price')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CurrentPrice clone() => CurrentPrice()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CurrentPrice copyWith(void Function(CurrentPrice) updates) => super.copyWith((message) => updates(message as CurrentPrice)) as CurrentPrice;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CurrentPrice create() => CurrentPrice._();
  CurrentPrice createEmptyInstance() => create();
  static $pb.PbList<CurrentPrice> createRepeated() => $pb.PbList<CurrentPrice>();
  @$core.pragma('dart2js:noInline')
  static CurrentPrice getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CurrentPrice>(create);
  static CurrentPrice? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get marketId => $_getSZ(0);
  @$pb.TagNumber(1)
  set marketId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMarketId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMarketId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get price => $_getSZ(1);
  @$pb.TagNumber(2)
  set price($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPrice() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrice() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
