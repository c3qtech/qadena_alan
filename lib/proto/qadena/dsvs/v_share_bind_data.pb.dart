//
//  Generated code. Do not modify.
//  source: qadena/dsvs/v_share_bind_data.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'b_v_shared_secret.pb.dart' as $4;
import 'bigint.pb.dart' as $3;
import 'ec_point.pb.dart' as $2;

class VShareBindData extends $pb.GeneratedMessage {
  factory VShareBindData({
    $core.Iterable<VShareBindDataInternal>? data,
  }) {
    final $result = create();
    if (data != null) {
      $result.data.addAll(data);
    }
    return $result;
  }
  VShareBindData._() : super();
  factory VShareBindData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VShareBindData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VShareBindData', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.dsvs'), createEmptyInstance: create)
    ..pc<VShareBindDataInternal>(1, _omitFieldNames ? '' : 'Data', $pb.PbFieldType.PM, protoName: 'Data', subBuilder: VShareBindDataInternal.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VShareBindData clone() => VShareBindData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VShareBindData copyWith(void Function(VShareBindData) updates) => super.copyWith((message) => updates(message as VShareBindData)) as VShareBindData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VShareBindData create() => VShareBindData._();
  VShareBindData createEmptyInstance() => create();
  static $pb.PbList<VShareBindData> createRepeated() => $pb.PbList<VShareBindData>();
  @$core.pragma('dart2js:noInline')
  static VShareBindData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VShareBindData>(create);
  static VShareBindData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<VShareBindDataInternal> get data => $_getList(0);
}

class BECPointInfo extends $pb.GeneratedMessage {
  factory BECPointInfo({
    $2.BECPoint? eCPoint,
    $core.String? nodeType,
    $core.String? nodeID,
  }) {
    final $result = create();
    if (eCPoint != null) {
      $result.eCPoint = eCPoint;
    }
    if (nodeType != null) {
      $result.nodeType = nodeType;
    }
    if (nodeID != null) {
      $result.nodeID = nodeID;
    }
    return $result;
  }
  BECPointInfo._() : super();
  factory BECPointInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BECPointInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BECPointInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.dsvs'), createEmptyInstance: create)
    ..aOM<$2.BECPoint>(1, _omitFieldNames ? '' : 'ECPoint', protoName: 'ECPoint', subBuilder: $2.BECPoint.create)
    ..aOS(2, _omitFieldNames ? '' : 'NodeType', protoName: 'NodeType')
    ..aOS(3, _omitFieldNames ? '' : 'NodeID', protoName: 'NodeID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BECPointInfo clone() => BECPointInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BECPointInfo copyWith(void Function(BECPointInfo) updates) => super.copyWith((message) => updates(message as BECPointInfo)) as BECPointInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BECPointInfo create() => BECPointInfo._();
  BECPointInfo createEmptyInstance() => create();
  static $pb.PbList<BECPointInfo> createRepeated() => $pb.PbList<BECPointInfo>();
  @$core.pragma('dart2js:noInline')
  static BECPointInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BECPointInfo>(create);
  static BECPointInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $2.BECPoint get eCPoint => $_getN(0);
  @$pb.TagNumber(1)
  set eCPoint($2.BECPoint v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasECPoint() => $_has(0);
  @$pb.TagNumber(1)
  void clearECPoint() => clearField(1);
  @$pb.TagNumber(1)
  $2.BECPoint ensureECPoint() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get nodeType => $_getSZ(1);
  @$pb.TagNumber(2)
  set nodeType($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNodeType() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get nodeID => $_getSZ(2);
  @$pb.TagNumber(3)
  set nodeID($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNodeID() => $_has(2);
  @$pb.TagNumber(3)
  void clearNodeID() => clearField(3);
}

class VShareBindDataInternal extends $pb.GeneratedMessage {
  factory VShareBindDataInternal({
    $3.BInt? w,
    $3.BInt? z,
    $2.BECPoint? c,
    BECPointInfo? y,
    $core.Iterable<BECPointInfo>? cc,
    $4.BVSharedSecret? r,
    $core.Iterable<$4.BVSharedSecret>? rr,
  }) {
    final $result = create();
    if (w != null) {
      $result.w = w;
    }
    if (z != null) {
      $result.z = z;
    }
    if (c != null) {
      $result.c = c;
    }
    if (y != null) {
      $result.y = y;
    }
    if (cc != null) {
      $result.cc.addAll(cc);
    }
    if (r != null) {
      $result.r = r;
    }
    if (rr != null) {
      $result.rr.addAll(rr);
    }
    return $result;
  }
  VShareBindDataInternal._() : super();
  factory VShareBindDataInternal.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VShareBindDataInternal.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VShareBindDataInternal', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.dsvs'), createEmptyInstance: create)
    ..aOM<$3.BInt>(1, _omitFieldNames ? '' : 'W', protoName: 'W', subBuilder: $3.BInt.create)
    ..aOM<$3.BInt>(2, _omitFieldNames ? '' : 'Z', protoName: 'Z', subBuilder: $3.BInt.create)
    ..aOM<$2.BECPoint>(3, _omitFieldNames ? '' : 'C', protoName: 'C', subBuilder: $2.BECPoint.create)
    ..aOM<BECPointInfo>(4, _omitFieldNames ? '' : 'Y', protoName: 'Y', subBuilder: BECPointInfo.create)
    ..pc<BECPointInfo>(5, _omitFieldNames ? '' : 'Cc', $pb.PbFieldType.PM, protoName: 'Cc', subBuilder: BECPointInfo.create)
    ..aOM<$4.BVSharedSecret>(6, _omitFieldNames ? '' : 'R', protoName: 'R', subBuilder: $4.BVSharedSecret.create)
    ..pc<$4.BVSharedSecret>(7, _omitFieldNames ? '' : 'Rr', $pb.PbFieldType.PM, protoName: 'Rr', subBuilder: $4.BVSharedSecret.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VShareBindDataInternal clone() => VShareBindDataInternal()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VShareBindDataInternal copyWith(void Function(VShareBindDataInternal) updates) => super.copyWith((message) => updates(message as VShareBindDataInternal)) as VShareBindDataInternal;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VShareBindDataInternal create() => VShareBindDataInternal._();
  VShareBindDataInternal createEmptyInstance() => create();
  static $pb.PbList<VShareBindDataInternal> createRepeated() => $pb.PbList<VShareBindDataInternal>();
  @$core.pragma('dart2js:noInline')
  static VShareBindDataInternal getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VShareBindDataInternal>(create);
  static VShareBindDataInternal? _defaultInstance;

  @$pb.TagNumber(1)
  $3.BInt get w => $_getN(0);
  @$pb.TagNumber(1)
  set w($3.BInt v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasW() => $_has(0);
  @$pb.TagNumber(1)
  void clearW() => clearField(1);
  @$pb.TagNumber(1)
  $3.BInt ensureW() => $_ensure(0);

  @$pb.TagNumber(2)
  $3.BInt get z => $_getN(1);
  @$pb.TagNumber(2)
  set z($3.BInt v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasZ() => $_has(1);
  @$pb.TagNumber(2)
  void clearZ() => clearField(2);
  @$pb.TagNumber(2)
  $3.BInt ensureZ() => $_ensure(1);

  @$pb.TagNumber(3)
  $2.BECPoint get c => $_getN(2);
  @$pb.TagNumber(3)
  set c($2.BECPoint v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasC() => $_has(2);
  @$pb.TagNumber(3)
  void clearC() => clearField(3);
  @$pb.TagNumber(3)
  $2.BECPoint ensureC() => $_ensure(2);

  @$pb.TagNumber(4)
  BECPointInfo get y => $_getN(3);
  @$pb.TagNumber(4)
  set y(BECPointInfo v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasY() => $_has(3);
  @$pb.TagNumber(4)
  void clearY() => clearField(4);
  @$pb.TagNumber(4)
  BECPointInfo ensureY() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.List<BECPointInfo> get cc => $_getList(4);

  @$pb.TagNumber(6)
  $4.BVSharedSecret get r => $_getN(5);
  @$pb.TagNumber(6)
  set r($4.BVSharedSecret v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasR() => $_has(5);
  @$pb.TagNumber(6)
  void clearR() => clearField(6);
  @$pb.TagNumber(6)
  $4.BVSharedSecret ensureR() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.List<$4.BVSharedSecret> get rr => $_getList(6);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
