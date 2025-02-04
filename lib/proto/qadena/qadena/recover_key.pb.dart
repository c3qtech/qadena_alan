//
//  Generated code. Do not modify.
//  source: qadena/qadena/recover_key.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'recover_share.pb.dart' as $24;
import 'v_share_bind_data.pb.dart' as $20;

class RecoverKey extends $pb.GeneratedMessage {
  factory RecoverKey({
    $core.String? walletID,
    $core.List<$core.int>? encNewWalletIDVShare,
    $20.VShareBindData? newWalletIDVShareBind,
    $core.Iterable<$core.String>? signatory,
    $core.Iterable<$24.RecoverShare>? recoverShare,
  }) {
    final $result = create();
    if (walletID != null) {
      $result.walletID = walletID;
    }
    if (encNewWalletIDVShare != null) {
      $result.encNewWalletIDVShare = encNewWalletIDVShare;
    }
    if (newWalletIDVShareBind != null) {
      $result.newWalletIDVShareBind = newWalletIDVShareBind;
    }
    if (signatory != null) {
      $result.signatory.addAll(signatory);
    }
    if (recoverShare != null) {
      $result.recoverShare.addAll(recoverShare);
    }
    return $result;
  }
  RecoverKey._() : super();
  factory RecoverKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RecoverKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RecoverKey', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'walletID', protoName: 'walletID')
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'encNewWalletIDVShare', $pb.PbFieldType.OY, protoName: 'encNewWalletIDVShare')
    ..aOM<$20.VShareBindData>(4, _omitFieldNames ? '' : 'NewWalletIDVShareBind', protoName: 'NewWalletIDVShareBind', subBuilder: $20.VShareBindData.create)
    ..pPS(5, _omitFieldNames ? '' : 'signatory')
    ..pc<$24.RecoverShare>(6, _omitFieldNames ? '' : 'recoverShare', $pb.PbFieldType.PM, protoName: 'recoverShare', subBuilder: $24.RecoverShare.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RecoverKey clone() => RecoverKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RecoverKey copyWith(void Function(RecoverKey) updates) => super.copyWith((message) => updates(message as RecoverKey)) as RecoverKey;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RecoverKey create() => RecoverKey._();
  RecoverKey createEmptyInstance() => create();
  static $pb.PbList<RecoverKey> createRepeated() => $pb.PbList<RecoverKey>();
  @$core.pragma('dart2js:noInline')
  static RecoverKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RecoverKey>(create);
  static RecoverKey? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get walletID => $_getSZ(0);
  @$pb.TagNumber(1)
  set walletID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWalletID() => $_has(0);
  @$pb.TagNumber(1)
  void clearWalletID() => clearField(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get encNewWalletIDVShare => $_getN(1);
  @$pb.TagNumber(3)
  set encNewWalletIDVShare($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasEncNewWalletIDVShare() => $_has(1);
  @$pb.TagNumber(3)
  void clearEncNewWalletIDVShare() => clearField(3);

  @$pb.TagNumber(4)
  $20.VShareBindData get newWalletIDVShareBind => $_getN(2);
  @$pb.TagNumber(4)
  set newWalletIDVShareBind($20.VShareBindData v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasNewWalletIDVShareBind() => $_has(2);
  @$pb.TagNumber(4)
  void clearNewWalletIDVShareBind() => clearField(4);
  @$pb.TagNumber(4)
  $20.VShareBindData ensureNewWalletIDVShareBind() => $_ensure(2);

  @$pb.TagNumber(5)
  $core.List<$core.String> get signatory => $_getList(3);

  @$pb.TagNumber(6)
  $core.List<$24.RecoverShare> get recoverShare => $_getList(4);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
