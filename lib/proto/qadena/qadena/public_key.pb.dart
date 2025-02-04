//
//  Generated code. Do not modify.
//  source: qadena/qadena/public_key.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'share.pb.dart' as $23;

class PublicKey extends $pb.GeneratedMessage {
  factory PublicKey({
    $core.String? pubKID,
    $core.String? pubKType,
    $core.String? pubK,
    $core.Iterable<$23.Share>? shares,
    $core.String? remoteReport,
  }) {
    final $result = create();
    if (pubKID != null) {
      $result.pubKID = pubKID;
    }
    if (pubKType != null) {
      $result.pubKType = pubKType;
    }
    if (pubK != null) {
      $result.pubK = pubK;
    }
    if (shares != null) {
      $result.shares.addAll(shares);
    }
    if (remoteReport != null) {
      $result.remoteReport = remoteReport;
    }
    return $result;
  }
  PublicKey._() : super();
  factory PublicKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PublicKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PublicKey', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'pubKID', protoName: 'pubKID')
    ..aOS(2, _omitFieldNames ? '' : 'pubKType', protoName: 'pubKType')
    ..aOS(3, _omitFieldNames ? '' : 'pubK', protoName: 'pubK')
    ..pc<$23.Share>(4, _omitFieldNames ? '' : 'shares', $pb.PbFieldType.PM, subBuilder: $23.Share.create)
    ..aOS(5, _omitFieldNames ? '' : 'remoteReport', protoName: 'remoteReport')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PublicKey clone() => PublicKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PublicKey copyWith(void Function(PublicKey) updates) => super.copyWith((message) => updates(message as PublicKey)) as PublicKey;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PublicKey create() => PublicKey._();
  PublicKey createEmptyInstance() => create();
  static $pb.PbList<PublicKey> createRepeated() => $pb.PbList<PublicKey>();
  @$core.pragma('dart2js:noInline')
  static PublicKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PublicKey>(create);
  static PublicKey? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pubKID => $_getSZ(0);
  @$pb.TagNumber(1)
  set pubKID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPubKID() => $_has(0);
  @$pb.TagNumber(1)
  void clearPubKID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get pubKType => $_getSZ(1);
  @$pb.TagNumber(2)
  set pubKType($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPubKType() => $_has(1);
  @$pb.TagNumber(2)
  void clearPubKType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get pubK => $_getSZ(2);
  @$pb.TagNumber(3)
  set pubK($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPubK() => $_has(2);
  @$pb.TagNumber(3)
  void clearPubK() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$23.Share> get shares => $_getList(3);

  @$pb.TagNumber(5)
  $core.String get remoteReport => $_getSZ(4);
  @$pb.TagNumber(5)
  set remoteReport($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRemoteReport() => $_has(4);
  @$pb.TagNumber(5)
  void clearRemoteReport() => clearField(5);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
