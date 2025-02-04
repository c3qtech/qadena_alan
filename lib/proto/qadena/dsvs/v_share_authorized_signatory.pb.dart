//
//  Generated code. Do not modify.
//  source: qadena/dsvs/v_share_authorized_signatory.proto
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

class VShareAuthorizedSignatory extends $pb.GeneratedMessage {
  factory VShareAuthorizedSignatory({
    $core.List<$core.int>? encAuthorizedSignatoryVShare,
    $5.VShareBindData? authorizedSignatoryVShareBind,
    $6.Timestamp? time,
  }) {
    final $result = create();
    if (encAuthorizedSignatoryVShare != null) {
      $result.encAuthorizedSignatoryVShare = encAuthorizedSignatoryVShare;
    }
    if (authorizedSignatoryVShareBind != null) {
      $result.authorizedSignatoryVShareBind = authorizedSignatoryVShareBind;
    }
    if (time != null) {
      $result.time = time;
    }
    return $result;
  }
  VShareAuthorizedSignatory._() : super();
  factory VShareAuthorizedSignatory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VShareAuthorizedSignatory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VShareAuthorizedSignatory', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.dsvs'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'encAuthorizedSignatoryVShare', $pb.PbFieldType.OY, protoName: 'encAuthorizedSignatoryVShare')
    ..aOM<$5.VShareBindData>(2, _omitFieldNames ? '' : 'authorizedSignatoryVShareBind', protoName: 'authorizedSignatoryVShareBind', subBuilder: $5.VShareBindData.create)
    ..aOM<$6.Timestamp>(3, _omitFieldNames ? '' : 'time', subBuilder: $6.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VShareAuthorizedSignatory clone() => VShareAuthorizedSignatory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VShareAuthorizedSignatory copyWith(void Function(VShareAuthorizedSignatory) updates) => super.copyWith((message) => updates(message as VShareAuthorizedSignatory)) as VShareAuthorizedSignatory;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VShareAuthorizedSignatory create() => VShareAuthorizedSignatory._();
  VShareAuthorizedSignatory createEmptyInstance() => create();
  static $pb.PbList<VShareAuthorizedSignatory> createRepeated() => $pb.PbList<VShareAuthorizedSignatory>();
  @$core.pragma('dart2js:noInline')
  static VShareAuthorizedSignatory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VShareAuthorizedSignatory>(create);
  static VShareAuthorizedSignatory? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get encAuthorizedSignatoryVShare => $_getN(0);
  @$pb.TagNumber(1)
  set encAuthorizedSignatoryVShare($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEncAuthorizedSignatoryVShare() => $_has(0);
  @$pb.TagNumber(1)
  void clearEncAuthorizedSignatoryVShare() => clearField(1);

  @$pb.TagNumber(2)
  $5.VShareBindData get authorizedSignatoryVShareBind => $_getN(1);
  @$pb.TagNumber(2)
  set authorizedSignatoryVShareBind($5.VShareBindData v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAuthorizedSignatoryVShareBind() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuthorizedSignatoryVShareBind() => clearField(2);
  @$pb.TagNumber(2)
  $5.VShareBindData ensureAuthorizedSignatoryVShareBind() => $_ensure(1);

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
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
