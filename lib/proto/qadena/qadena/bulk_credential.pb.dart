//
//  Generated code. Do not modify.
//  source: qadena/qadena/bulk_credential.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'b_pedersen_commit.pb.dart' as $18;

class BulkCredential extends $pb.GeneratedMessage {
  factory BulkCredential({
    $core.String? credentialID,
    $18.BPedersenCommit? credentialPedersenCommit,
    $core.List<$core.int>? encCredentialInfoVShare,
    $core.List<$core.int>? encCredentialHashVShare,
    $18.BPedersenCommit? findCredentialPedersenCommit,
  }) {
    final $result = create();
    if (credentialID != null) {
      $result.credentialID = credentialID;
    }
    if (credentialPedersenCommit != null) {
      $result.credentialPedersenCommit = credentialPedersenCommit;
    }
    if (encCredentialInfoVShare != null) {
      $result.encCredentialInfoVShare = encCredentialInfoVShare;
    }
    if (encCredentialHashVShare != null) {
      $result.encCredentialHashVShare = encCredentialHashVShare;
    }
    if (findCredentialPedersenCommit != null) {
      $result.findCredentialPedersenCommit = findCredentialPedersenCommit;
    }
    return $result;
  }
  BulkCredential._() : super();
  factory BulkCredential.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BulkCredential.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BulkCredential', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'credentialID', protoName: 'credentialID')
    ..aOM<$18.BPedersenCommit>(2, _omitFieldNames ? '' : 'credentialPedersenCommit', protoName: 'credentialPedersenCommit', subBuilder: $18.BPedersenCommit.create)
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'encCredentialInfoVShare', $pb.PbFieldType.OY, protoName: 'encCredentialInfoVShare')
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'encCredentialHashVShare', $pb.PbFieldType.OY, protoName: 'encCredentialHashVShare')
    ..aOM<$18.BPedersenCommit>(5, _omitFieldNames ? '' : 'findCredentialPedersenCommit', protoName: 'findCredentialPedersenCommit', subBuilder: $18.BPedersenCommit.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BulkCredential clone() => BulkCredential()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BulkCredential copyWith(void Function(BulkCredential) updates) => super.copyWith((message) => updates(message as BulkCredential)) as BulkCredential;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BulkCredential create() => BulkCredential._();
  BulkCredential createEmptyInstance() => create();
  static $pb.PbList<BulkCredential> createRepeated() => $pb.PbList<BulkCredential>();
  @$core.pragma('dart2js:noInline')
  static BulkCredential getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BulkCredential>(create);
  static BulkCredential? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get credentialID => $_getSZ(0);
  @$pb.TagNumber(1)
  set credentialID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCredentialID() => $_has(0);
  @$pb.TagNumber(1)
  void clearCredentialID() => clearField(1);

  @$pb.TagNumber(2)
  $18.BPedersenCommit get credentialPedersenCommit => $_getN(1);
  @$pb.TagNumber(2)
  set credentialPedersenCommit($18.BPedersenCommit v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCredentialPedersenCommit() => $_has(1);
  @$pb.TagNumber(2)
  void clearCredentialPedersenCommit() => clearField(2);
  @$pb.TagNumber(2)
  $18.BPedersenCommit ensureCredentialPedersenCommit() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get encCredentialInfoVShare => $_getN(2);
  @$pb.TagNumber(3)
  set encCredentialInfoVShare($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEncCredentialInfoVShare() => $_has(2);
  @$pb.TagNumber(3)
  void clearEncCredentialInfoVShare() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get encCredentialHashVShare => $_getN(3);
  @$pb.TagNumber(4)
  set encCredentialHashVShare($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEncCredentialHashVShare() => $_has(3);
  @$pb.TagNumber(4)
  void clearEncCredentialHashVShare() => clearField(4);

  @$pb.TagNumber(5)
  $18.BPedersenCommit get findCredentialPedersenCommit => $_getN(4);
  @$pb.TagNumber(5)
  set findCredentialPedersenCommit($18.BPedersenCommit v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasFindCredentialPedersenCommit() => $_has(4);
  @$pb.TagNumber(5)
  void clearFindCredentialPedersenCommit() => clearField(5);
  @$pb.TagNumber(5)
  $18.BPedersenCommit ensureFindCredentialPedersenCommit() => $_ensure(4);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
