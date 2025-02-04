//
//  Generated code. Do not modify.
//  source: qadena/dsvs/v_share_signatory.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/timestamp.pb.dart' as $6;
import 'v_share_bind_data.pb.dart' as $5;

class VShareSignatory extends $pb.GeneratedMessage {
  factory VShareSignatory({
    $core.List<$core.int>? encSignatoryVShare,
    $5.VShareBindData? signatoryVShareBind,
    $6.Timestamp? time,
    $core.String? walletID,
  }) {
    final $result = create();
    if (encSignatoryVShare != null) {
      $result.encSignatoryVShare = encSignatoryVShare;
    }
    if (signatoryVShareBind != null) {
      $result.signatoryVShareBind = signatoryVShareBind;
    }
    if (time != null) {
      $result.time = time;
    }
    if (walletID != null) {
      $result.walletID = walletID;
    }
    return $result;
  }
  VShareSignatory._() : super();
  factory VShareSignatory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VShareSignatory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VShareSignatory', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.dsvs'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'encSignatoryVShare', $pb.PbFieldType.OY, protoName: 'encSignatoryVShare')
    ..aOM<$5.VShareBindData>(2, _omitFieldNames ? '' : 'signatoryVShareBind', protoName: 'signatoryVShareBind', subBuilder: $5.VShareBindData.create)
    ..aOM<$6.Timestamp>(3, _omitFieldNames ? '' : 'time', subBuilder: $6.Timestamp.create)
    ..aOS(4, _omitFieldNames ? '' : 'WalletID', protoName: 'WalletID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VShareSignatory clone() => VShareSignatory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VShareSignatory copyWith(void Function(VShareSignatory) updates) => super.copyWith((message) => updates(message as VShareSignatory)) as VShareSignatory;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VShareSignatory create() => VShareSignatory._();
  VShareSignatory createEmptyInstance() => create();
  static $pb.PbList<VShareSignatory> createRepeated() => $pb.PbList<VShareSignatory>();
  @$core.pragma('dart2js:noInline')
  static VShareSignatory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VShareSignatory>(create);
  static VShareSignatory? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get encSignatoryVShare => $_getN(0);
  @$pb.TagNumber(1)
  set encSignatoryVShare($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEncSignatoryVShare() => $_has(0);
  @$pb.TagNumber(1)
  void clearEncSignatoryVShare() => clearField(1);

  @$pb.TagNumber(2)
  $5.VShareBindData get signatoryVShareBind => $_getN(1);
  @$pb.TagNumber(2)
  set signatoryVShareBind($5.VShareBindData v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSignatoryVShareBind() => $_has(1);
  @$pb.TagNumber(2)
  void clearSignatoryVShareBind() => clearField(2);
  @$pb.TagNumber(2)
  $5.VShareBindData ensureSignatoryVShareBind() => $_ensure(1);

  @$pb.TagNumber(3)
  $6.Timestamp get time => $_getN(2);
  @$pb.TagNumber(3)
  set time($6.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearTime() => clearField(3);
  @$pb.TagNumber(3)
  $6.Timestamp ensureTime() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get walletID => $_getSZ(3);
  @$pb.TagNumber(4)
  set walletID($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasWalletID() => $_has(3);
  @$pb.TagNumber(4)
  void clearWalletID() => clearField(4);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
