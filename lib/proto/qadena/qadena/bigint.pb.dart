//
//  Generated code. Do not modify.
//  source: qadena/qadena/bigint.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class BInt extends $pb.GeneratedMessage {
  factory BInt({
    $core.List<$core.int>? i,
  }) {
    final $result = create();
    if (i != null) {
      $result.i = i;
    }
    return $result;
  }
  BInt._() : super();
  factory BInt.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BInt.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BInt', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'i', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BInt clone() => BInt()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BInt copyWith(void Function(BInt) updates) => super.copyWith((message) => updates(message as BInt)) as BInt;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BInt create() => BInt._();
  BInt createEmptyInstance() => create();
  static $pb.PbList<BInt> createRepeated() => $pb.PbList<BInt>();
  @$core.pragma('dart2js:noInline')
  static BInt getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BInt>(create);
  static BInt? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get i => $_getN(0);
  @$pb.TagNumber(1)
  set i($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasI() => $_has(0);
  @$pb.TagNumber(1)
  void clearI() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
