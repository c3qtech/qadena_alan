//
//  Generated code. Do not modify.
//  source: qadena/qadena/range_proof.proto
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
import 'inner_prod_arg.pb.dart' as $17;

class BRangeProof extends $pb.GeneratedMessage {
  factory BRangeProof({
    $13.BECPoint? a,
    $13.BECPoint? s,
    $core.Iterable<$13.BECPoint>? tCommits,
    $14.BInt? tauX,
    $14.BInt? mu,
    $14.BInt? t,
    $17.BInnerProductProof? iPP,
  }) {
    final $result = create();
    if (a != null) {
      $result.a = a;
    }
    if (s != null) {
      $result.s = s;
    }
    if (tCommits != null) {
      $result.tCommits.addAll(tCommits);
    }
    if (tauX != null) {
      $result.tauX = tauX;
    }
    if (mu != null) {
      $result.mu = mu;
    }
    if (t != null) {
      $result.t = t;
    }
    if (iPP != null) {
      $result.iPP = iPP;
    }
    return $result;
  }
  BRangeProof._() : super();
  factory BRangeProof.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BRangeProof.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BRangeProof', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOM<$13.BECPoint>(1, _omitFieldNames ? '' : 'a', subBuilder: $13.BECPoint.create)
    ..aOM<$13.BECPoint>(2, _omitFieldNames ? '' : 's', subBuilder: $13.BECPoint.create)
    ..pc<$13.BECPoint>(3, _omitFieldNames ? '' : 'tCommits', $pb.PbFieldType.PM, protoName: 'tCommits', subBuilder: $13.BECPoint.create)
    ..aOM<$14.BInt>(4, _omitFieldNames ? '' : 'tauX', protoName: 'tauX', subBuilder: $14.BInt.create)
    ..aOM<$14.BInt>(5, _omitFieldNames ? '' : 'mu', subBuilder: $14.BInt.create)
    ..aOM<$14.BInt>(6, _omitFieldNames ? '' : 't', subBuilder: $14.BInt.create)
    ..aOM<$17.BInnerProductProof>(7, _omitFieldNames ? '' : 'iPP', protoName: 'iPP', subBuilder: $17.BInnerProductProof.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BRangeProof clone() => BRangeProof()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BRangeProof copyWith(void Function(BRangeProof) updates) => super.copyWith((message) => updates(message as BRangeProof)) as BRangeProof;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BRangeProof create() => BRangeProof._();
  BRangeProof createEmptyInstance() => create();
  static $pb.PbList<BRangeProof> createRepeated() => $pb.PbList<BRangeProof>();
  @$core.pragma('dart2js:noInline')
  static BRangeProof getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BRangeProof>(create);
  static BRangeProof? _defaultInstance;

  @$pb.TagNumber(1)
  $13.BECPoint get a => $_getN(0);
  @$pb.TagNumber(1)
  set a($13.BECPoint v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasA() => $_has(0);
  @$pb.TagNumber(1)
  void clearA() => clearField(1);
  @$pb.TagNumber(1)
  $13.BECPoint ensureA() => $_ensure(0);

  @$pb.TagNumber(2)
  $13.BECPoint get s => $_getN(1);
  @$pb.TagNumber(2)
  set s($13.BECPoint v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasS() => $_has(1);
  @$pb.TagNumber(2)
  void clearS() => clearField(2);
  @$pb.TagNumber(2)
  $13.BECPoint ensureS() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<$13.BECPoint> get tCommits => $_getList(2);

  @$pb.TagNumber(4)
  $14.BInt get tauX => $_getN(3);
  @$pb.TagNumber(4)
  set tauX($14.BInt v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasTauX() => $_has(3);
  @$pb.TagNumber(4)
  void clearTauX() => clearField(4);
  @$pb.TagNumber(4)
  $14.BInt ensureTauX() => $_ensure(3);

  @$pb.TagNumber(5)
  $14.BInt get mu => $_getN(4);
  @$pb.TagNumber(5)
  set mu($14.BInt v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasMu() => $_has(4);
  @$pb.TagNumber(5)
  void clearMu() => clearField(5);
  @$pb.TagNumber(5)
  $14.BInt ensureMu() => $_ensure(4);

  @$pb.TagNumber(6)
  $14.BInt get t => $_getN(5);
  @$pb.TagNumber(6)
  set t($14.BInt v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasT() => $_has(5);
  @$pb.TagNumber(6)
  void clearT() => clearField(6);
  @$pb.TagNumber(6)
  $14.BInt ensureT() => $_ensure(5);

  @$pb.TagNumber(7)
  $17.BInnerProductProof get iPP => $_getN(6);
  @$pb.TagNumber(7)
  set iPP($17.BInnerProductProof v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasIPP() => $_has(6);
  @$pb.TagNumber(7)
  void clearIPP() => clearField(7);
  @$pb.TagNumber(7)
  $17.BInnerProductProof ensureIPP() => $_ensure(6);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
