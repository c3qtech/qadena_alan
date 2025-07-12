//
//  Generated code. Do not modify.
//  source: qadena/qadena/inner_prod_arg.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'bigint.pb.dart' as $14;
import 'ec_point.pb.dart' as $13;

class BInnerProductProof extends $pb.GeneratedMessage {
  factory BInnerProductProof({
    $core.Iterable<$13.BECPoint>? l,
    $core.Iterable<$13.BECPoint>? r,
    $14.BInt? a,
    $14.BInt? b,
  }) {
    final $result = create();
    if (l != null) {
      $result.l.addAll(l);
    }
    if (r != null) {
      $result.r.addAll(r);
    }
    if (a != null) {
      $result.a = a;
    }
    if (b != null) {
      $result.b = b;
    }
    return $result;
  }
  BInnerProductProof._() : super();
  factory BInnerProductProof.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BInnerProductProof.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BInnerProductProof', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..pc<$13.BECPoint>(1, _omitFieldNames ? '' : 'l', $pb.PbFieldType.PM, subBuilder: $13.BECPoint.create)
    ..pc<$13.BECPoint>(2, _omitFieldNames ? '' : 'r', $pb.PbFieldType.PM, subBuilder: $13.BECPoint.create)
    ..aOM<$14.BInt>(3, _omitFieldNames ? '' : 'a', subBuilder: $14.BInt.create)
    ..aOM<$14.BInt>(4, _omitFieldNames ? '' : 'b', subBuilder: $14.BInt.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BInnerProductProof clone() => BInnerProductProof()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BInnerProductProof copyWith(void Function(BInnerProductProof) updates) => super.copyWith((message) => updates(message as BInnerProductProof)) as BInnerProductProof;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BInnerProductProof create() => BInnerProductProof._();
  BInnerProductProof createEmptyInstance() => create();
  static $pb.PbList<BInnerProductProof> createRepeated() => $pb.PbList<BInnerProductProof>();
  @$core.pragma('dart2js:noInline')
  static BInnerProductProof getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BInnerProductProof>(create);
  static BInnerProductProof? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$13.BECPoint> get l => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$13.BECPoint> get r => $_getList(1);

  @$pb.TagNumber(3)
  $14.BInt get a => $_getN(2);
  @$pb.TagNumber(3)
  set a($14.BInt v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasA() => $_has(2);
  @$pb.TagNumber(3)
  void clearA() => clearField(3);
  @$pb.TagNumber(3)
  $14.BInt ensureA() => $_ensure(2);

  @$pb.TagNumber(4)
  $14.BInt get b => $_getN(3);
  @$pb.TagNumber(4)
  set b($14.BInt v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasB() => $_has(3);
  @$pb.TagNumber(4)
  void clearB() => clearField(4);
  @$pb.TagNumber(4)
  $14.BInt ensureB() => $_ensure(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
