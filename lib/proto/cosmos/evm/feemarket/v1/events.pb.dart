//
//  Generated code. Do not modify.
//  source: cosmos/evm/feemarket/v1/events.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// EventFeeMarket is the event type for the feemarket module
class EventFeeMarket extends $pb.GeneratedMessage {
  factory EventFeeMarket({
    $core.String? baseFee,
  }) {
    final $result = create();
    if (baseFee != null) {
      $result.baseFee = baseFee;
    }
    return $result;
  }
  EventFeeMarket._() : super();
  factory EventFeeMarket.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventFeeMarket.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EventFeeMarket', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.feemarket.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'baseFee')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EventFeeMarket clone() => EventFeeMarket()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EventFeeMarket copyWith(void Function(EventFeeMarket) updates) => super.copyWith((message) => updates(message as EventFeeMarket)) as EventFeeMarket;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EventFeeMarket create() => EventFeeMarket._();
  EventFeeMarket createEmptyInstance() => create();
  static $pb.PbList<EventFeeMarket> createRepeated() => $pb.PbList<EventFeeMarket>();
  @$core.pragma('dart2js:noInline')
  static EventFeeMarket getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventFeeMarket>(create);
  static EventFeeMarket? _defaultInstance;

  /// base_fee for EIP-1559 blocks
  @$pb.TagNumber(1)
  $core.String get baseFee => $_getSZ(0);
  @$pb.TagNumber(1)
  set baseFee($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBaseFee() => $_has(0);
  @$pb.TagNumber(1)
  void clearBaseFee() => clearField(1);
}

/// EventBlockGas defines an Ethereum block gas event
class EventBlockGas extends $pb.GeneratedMessage {
  factory EventBlockGas({
    $core.String? height,
    $core.String? amount,
  }) {
    final $result = create();
    if (height != null) {
      $result.height = height;
    }
    if (amount != null) {
      $result.amount = amount;
    }
    return $result;
  }
  EventBlockGas._() : super();
  factory EventBlockGas.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventBlockGas.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EventBlockGas', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.feemarket.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'height')
    ..aOS(2, _omitFieldNames ? '' : 'amount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EventBlockGas clone() => EventBlockGas()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EventBlockGas copyWith(void Function(EventBlockGas) updates) => super.copyWith((message) => updates(message as EventBlockGas)) as EventBlockGas;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EventBlockGas create() => EventBlockGas._();
  EventBlockGas createEmptyInstance() => create();
  static $pb.PbList<EventBlockGas> createRepeated() => $pb.PbList<EventBlockGas>();
  @$core.pragma('dart2js:noInline')
  static EventBlockGas getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventBlockGas>(create);
  static EventBlockGas? _defaultInstance;

  /// height of the block
  @$pb.TagNumber(1)
  $core.String get height => $_getSZ(0);
  @$pb.TagNumber(1)
  set height($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeight() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeight() => clearField(1);

  /// amount of gas wanted by the block
  @$pb.TagNumber(2)
  $core.String get amount => $_getSZ(1);
  @$pb.TagNumber(2)
  set amount($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
