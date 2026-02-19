//
//  Generated code. Do not modify.
//  source: cosmos/evm/ante/v1/dynamic_fee.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// ExtensionOptionDynamicFeeTx is an extension option that specifies the
/// maxPrioPrice for cosmos tx
class ExtensionOptionDynamicFeeTx extends $pb.GeneratedMessage {
  factory ExtensionOptionDynamicFeeTx({
    $core.String? maxPriorityPrice,
  }) {
    final $result = create();
    if (maxPriorityPrice != null) {
      $result.maxPriorityPrice = maxPriorityPrice;
    }
    return $result;
  }
  ExtensionOptionDynamicFeeTx._() : super();
  factory ExtensionOptionDynamicFeeTx.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExtensionOptionDynamicFeeTx.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ExtensionOptionDynamicFeeTx', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.ante.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'maxPriorityPrice')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExtensionOptionDynamicFeeTx clone() => ExtensionOptionDynamicFeeTx()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExtensionOptionDynamicFeeTx copyWith(void Function(ExtensionOptionDynamicFeeTx) updates) => super.copyWith((message) => updates(message as ExtensionOptionDynamicFeeTx)) as ExtensionOptionDynamicFeeTx;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExtensionOptionDynamicFeeTx create() => ExtensionOptionDynamicFeeTx._();
  ExtensionOptionDynamicFeeTx createEmptyInstance() => create();
  static $pb.PbList<ExtensionOptionDynamicFeeTx> createRepeated() => $pb.PbList<ExtensionOptionDynamicFeeTx>();
  @$core.pragma('dart2js:noInline')
  static ExtensionOptionDynamicFeeTx getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExtensionOptionDynamicFeeTx>(create);
  static ExtensionOptionDynamicFeeTx? _defaultInstance;

  /// max_priority_price is the same as `max_priority_fee_per_gas` in eip-1559
  /// spec
  @$pb.TagNumber(1)
  $core.String get maxPriorityPrice => $_getSZ(0);
  @$pb.TagNumber(1)
  set maxPriorityPrice($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMaxPriorityPrice() => $_has(0);
  @$pb.TagNumber(1)
  void clearMaxPriorityPrice() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
