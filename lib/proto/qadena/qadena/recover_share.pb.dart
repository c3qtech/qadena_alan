//
//  Generated code. Do not modify.
//  source: qadena/qadena/recover_share.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class RecoverShare extends $pb.GeneratedMessage {
  factory RecoverShare({
    $core.String? walletID,
    $core.List<$core.int>? encWalletPubKShare,
  }) {
    final $result = create();
    if (walletID != null) {
      $result.walletID = walletID;
    }
    if (encWalletPubKShare != null) {
      $result.encWalletPubKShare = encWalletPubKShare;
    }
    return $result;
  }
  RecoverShare._() : super();
  factory RecoverShare.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RecoverShare.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RecoverShare', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'walletID', protoName: 'walletID')
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'encWalletPubKShare', $pb.PbFieldType.OY, protoName: 'encWalletPubKShare')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RecoverShare clone() => RecoverShare()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RecoverShare copyWith(void Function(RecoverShare) updates) => super.copyWith((message) => updates(message as RecoverShare)) as RecoverShare;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RecoverShare create() => RecoverShare._();
  RecoverShare createEmptyInstance() => create();
  static $pb.PbList<RecoverShare> createRepeated() => $pb.PbList<RecoverShare>();
  @$core.pragma('dart2js:noInline')
  static RecoverShare getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RecoverShare>(create);
  static RecoverShare? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get walletID => $_getSZ(0);
  @$pb.TagNumber(1)
  set walletID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWalletID() => $_has(0);
  @$pb.TagNumber(1)
  void clearWalletID() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get encWalletPubKShare => $_getN(1);
  @$pb.TagNumber(2)
  set encWalletPubKShare($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEncWalletPubKShare() => $_has(1);
  @$pb.TagNumber(2)
  void clearEncWalletPubKShare() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
