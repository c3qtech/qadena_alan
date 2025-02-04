//
//  Generated code. Do not modify.
//  source: qadena/qadena/protect_key.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'recover_share.pb.dart' as $24;

class ProtectKey extends $pb.GeneratedMessage {
  factory ProtectKey({
    $core.String? walletID,
    $core.int? threshold,
    $core.Iterable<$24.RecoverShare>? recoverShare,
  }) {
    final $result = create();
    if (walletID != null) {
      $result.walletID = walletID;
    }
    if (threshold != null) {
      $result.threshold = threshold;
    }
    if (recoverShare != null) {
      $result.recoverShare.addAll(recoverShare);
    }
    return $result;
  }
  ProtectKey._() : super();
  factory ProtectKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtectKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtectKey', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'walletID', protoName: 'walletID')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'threshold', $pb.PbFieldType.O3)
    ..pc<$24.RecoverShare>(3, _omitFieldNames ? '' : 'recoverShare', $pb.PbFieldType.PM, protoName: 'recoverShare', subBuilder: $24.RecoverShare.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtectKey clone() => ProtectKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtectKey copyWith(void Function(ProtectKey) updates) => super.copyWith((message) => updates(message as ProtectKey)) as ProtectKey;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtectKey create() => ProtectKey._();
  ProtectKey createEmptyInstance() => create();
  static $pb.PbList<ProtectKey> createRepeated() => $pb.PbList<ProtectKey>();
  @$core.pragma('dart2js:noInline')
  static ProtectKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtectKey>(create);
  static ProtectKey? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get walletID => $_getSZ(0);
  @$pb.TagNumber(1)
  set walletID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWalletID() => $_has(0);
  @$pb.TagNumber(1)
  void clearWalletID() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get threshold => $_getIZ(1);
  @$pb.TagNumber(2)
  set threshold($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasThreshold() => $_has(1);
  @$pb.TagNumber(2)
  void clearThreshold() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$24.RecoverShare> get recoverShare => $_getList(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
