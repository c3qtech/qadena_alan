//
//  Generated code. Do not modify.
//  source: qadena/pricefeed/market.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Market extends $pb.GeneratedMessage {
  factory Market({
    $core.String? marketId,
    $core.String? baseAsset,
    $core.String? quoteAsset,
    $core.Iterable<$core.List<$core.int>>? oracles,
    $core.bool? active,
  }) {
    final $result = create();
    if (marketId != null) {
      $result.marketId = marketId;
    }
    if (baseAsset != null) {
      $result.baseAsset = baseAsset;
    }
    if (quoteAsset != null) {
      $result.quoteAsset = quoteAsset;
    }
    if (oracles != null) {
      $result.oracles.addAll(oracles);
    }
    if (active != null) {
      $result.active = active;
    }
    return $result;
  }
  Market._() : super();
  factory Market.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Market.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Market', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.pricefeed'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'marketId', protoName: 'marketId')
    ..aOS(2, _omitFieldNames ? '' : 'baseAsset', protoName: 'baseAsset')
    ..aOS(3, _omitFieldNames ? '' : 'quoteAsset', protoName: 'quoteAsset')
    ..p<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'oracles', $pb.PbFieldType.PY)
    ..aOB(5, _omitFieldNames ? '' : 'active')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Market clone() => Market()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Market copyWith(void Function(Market) updates) => super.copyWith((message) => updates(message as Market)) as Market;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Market create() => Market._();
  Market createEmptyInstance() => create();
  static $pb.PbList<Market> createRepeated() => $pb.PbList<Market>();
  @$core.pragma('dart2js:noInline')
  static Market getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Market>(create);
  static Market? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get marketId => $_getSZ(0);
  @$pb.TagNumber(1)
  set marketId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMarketId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMarketId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get baseAsset => $_getSZ(1);
  @$pb.TagNumber(2)
  set baseAsset($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBaseAsset() => $_has(1);
  @$pb.TagNumber(2)
  void clearBaseAsset() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get quoteAsset => $_getSZ(2);
  @$pb.TagNumber(3)
  set quoteAsset($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasQuoteAsset() => $_has(2);
  @$pb.TagNumber(3)
  void clearQuoteAsset() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.List<$core.int>> get oracles => $_getList(3);

  @$pb.TagNumber(5)
  $core.bool get active => $_getBF(4);
  @$pb.TagNumber(5)
  set active($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasActive() => $_has(4);
  @$pb.TagNumber(5)
  void clearActive() => clearField(5);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
