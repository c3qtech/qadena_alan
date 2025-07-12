//
//  Generated code. Do not modify.
//  source: qadena/qadena/credential.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'b_pedersen_commit.pb.dart' as $19;
import 'v_share_bind_data.pb.dart' as $21;

class Credential extends $pb.GeneratedMessage {
  factory Credential({
    $core.String? credentialID,
    $core.String? credentialType,
    $core.String? walletID,
    $19.BPedersenCommit? credentialPedersenCommit,
    $core.List<$core.int>? encCredentialHashVShare,
    $21.VShareBindData? credentialHashVShareBind,
    $core.List<$core.int>? encCredentialInfoVShare,
    $21.VShareBindData? credentialInfoVShareBind,
    $19.BPedersenCommit? findCredentialPedersenCommit,
    $core.String? providerWalletID,
    $core.String? referenceCredentialID,
  }) {
    final $result = create();
    if (credentialID != null) {
      $result.credentialID = credentialID;
    }
    if (credentialType != null) {
      $result.credentialType = credentialType;
    }
    if (walletID != null) {
      $result.walletID = walletID;
    }
    if (credentialPedersenCommit != null) {
      $result.credentialPedersenCommit = credentialPedersenCommit;
    }
    if (encCredentialHashVShare != null) {
      $result.encCredentialHashVShare = encCredentialHashVShare;
    }
    if (credentialHashVShareBind != null) {
      $result.credentialHashVShareBind = credentialHashVShareBind;
    }
    if (encCredentialInfoVShare != null) {
      $result.encCredentialInfoVShare = encCredentialInfoVShare;
    }
    if (credentialInfoVShareBind != null) {
      $result.credentialInfoVShareBind = credentialInfoVShareBind;
    }
    if (findCredentialPedersenCommit != null) {
      $result.findCredentialPedersenCommit = findCredentialPedersenCommit;
    }
    if (providerWalletID != null) {
      $result.providerWalletID = providerWalletID;
    }
    if (referenceCredentialID != null) {
      $result.referenceCredentialID = referenceCredentialID;
    }
    return $result;
  }
  Credential._() : super();
  factory Credential.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Credential.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Credential', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'credentialID', protoName: 'credentialID')
    ..aOS(2, _omitFieldNames ? '' : 'credentialType', protoName: 'credentialType')
    ..aOS(3, _omitFieldNames ? '' : 'walletID', protoName: 'walletID')
    ..aOM<$19.BPedersenCommit>(4, _omitFieldNames ? '' : 'credentialPedersenCommit', protoName: 'credentialPedersenCommit', subBuilder: $19.BPedersenCommit.create)
    ..a<$core.List<$core.int>>(5, _omitFieldNames ? '' : 'encCredentialHashVShare', $pb.PbFieldType.OY, protoName: 'encCredentialHashVShare')
    ..aOM<$21.VShareBindData>(6, _omitFieldNames ? '' : 'credentialHashVShareBind', protoName: 'credentialHashVShareBind', subBuilder: $21.VShareBindData.create)
    ..a<$core.List<$core.int>>(7, _omitFieldNames ? '' : 'encCredentialInfoVShare', $pb.PbFieldType.OY, protoName: 'encCredentialInfoVShare')
    ..aOM<$21.VShareBindData>(8, _omitFieldNames ? '' : 'credentialInfoVShareBind', protoName: 'credentialInfoVShareBind', subBuilder: $21.VShareBindData.create)
    ..aOM<$19.BPedersenCommit>(9, _omitFieldNames ? '' : 'findCredentialPedersenCommit', protoName: 'findCredentialPedersenCommit', subBuilder: $19.BPedersenCommit.create)
    ..aOS(10, _omitFieldNames ? '' : 'providerWalletID', protoName: 'providerWalletID')
    ..aOS(11, _omitFieldNames ? '' : 'referenceCredentialID', protoName: 'referenceCredentialID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Credential clone() => Credential()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Credential copyWith(void Function(Credential) updates) => super.copyWith((message) => updates(message as Credential)) as Credential;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Credential create() => Credential._();
  Credential createEmptyInstance() => create();
  static $pb.PbList<Credential> createRepeated() => $pb.PbList<Credential>();
  @$core.pragma('dart2js:noInline')
  static Credential getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Credential>(create);
  static Credential? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get credentialID => $_getSZ(0);
  @$pb.TagNumber(1)
  set credentialID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCredentialID() => $_has(0);
  @$pb.TagNumber(1)
  void clearCredentialID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get credentialType => $_getSZ(1);
  @$pb.TagNumber(2)
  set credentialType($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCredentialType() => $_has(1);
  @$pb.TagNumber(2)
  void clearCredentialType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get walletID => $_getSZ(2);
  @$pb.TagNumber(3)
  set walletID($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWalletID() => $_has(2);
  @$pb.TagNumber(3)
  void clearWalletID() => clearField(3);

  @$pb.TagNumber(4)
  $19.BPedersenCommit get credentialPedersenCommit => $_getN(3);
  @$pb.TagNumber(4)
  set credentialPedersenCommit($19.BPedersenCommit v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCredentialPedersenCommit() => $_has(3);
  @$pb.TagNumber(4)
  void clearCredentialPedersenCommit() => clearField(4);
  @$pb.TagNumber(4)
  $19.BPedersenCommit ensureCredentialPedersenCommit() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.List<$core.int> get encCredentialHashVShare => $_getN(4);
  @$pb.TagNumber(5)
  set encCredentialHashVShare($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEncCredentialHashVShare() => $_has(4);
  @$pb.TagNumber(5)
  void clearEncCredentialHashVShare() => clearField(5);

  @$pb.TagNumber(6)
  $21.VShareBindData get credentialHashVShareBind => $_getN(5);
  @$pb.TagNumber(6)
  set credentialHashVShareBind($21.VShareBindData v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasCredentialHashVShareBind() => $_has(5);
  @$pb.TagNumber(6)
  void clearCredentialHashVShareBind() => clearField(6);
  @$pb.TagNumber(6)
  $21.VShareBindData ensureCredentialHashVShareBind() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.List<$core.int> get encCredentialInfoVShare => $_getN(6);
  @$pb.TagNumber(7)
  set encCredentialInfoVShare($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasEncCredentialInfoVShare() => $_has(6);
  @$pb.TagNumber(7)
  void clearEncCredentialInfoVShare() => clearField(7);

  @$pb.TagNumber(8)
  $21.VShareBindData get credentialInfoVShareBind => $_getN(7);
  @$pb.TagNumber(8)
  set credentialInfoVShareBind($21.VShareBindData v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasCredentialInfoVShareBind() => $_has(7);
  @$pb.TagNumber(8)
  void clearCredentialInfoVShareBind() => clearField(8);
  @$pb.TagNumber(8)
  $21.VShareBindData ensureCredentialInfoVShareBind() => $_ensure(7);

  @$pb.TagNumber(9)
  $19.BPedersenCommit get findCredentialPedersenCommit => $_getN(8);
  @$pb.TagNumber(9)
  set findCredentialPedersenCommit($19.BPedersenCommit v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasFindCredentialPedersenCommit() => $_has(8);
  @$pb.TagNumber(9)
  void clearFindCredentialPedersenCommit() => clearField(9);
  @$pb.TagNumber(9)
  $19.BPedersenCommit ensureFindCredentialPedersenCommit() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.String get providerWalletID => $_getSZ(9);
  @$pb.TagNumber(10)
  set providerWalletID($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasProviderWalletID() => $_has(9);
  @$pb.TagNumber(10)
  void clearProviderWalletID() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get referenceCredentialID => $_getSZ(10);
  @$pb.TagNumber(11)
  set referenceCredentialID($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasReferenceCredentialID() => $_has(10);
  @$pb.TagNumber(11)
  void clearReferenceCredentialID() => clearField(11);
}

/// clone alert, this is also in nameservice/tx.proto!!!!
class MsgBindCredential extends $pb.GeneratedMessage {
  factory MsgBindCredential({
    $core.String? creator,
    $core.String? credentialType,
    $core.String? credentialInfo,
    $19.BPedersenCommit? proofPedersenCommit,
  }) {
    final $result = create();
    if (creator != null) {
      $result.creator = creator;
    }
    if (credentialType != null) {
      $result.credentialType = credentialType;
    }
    if (credentialInfo != null) {
      $result.credentialInfo = credentialInfo;
    }
    if (proofPedersenCommit != null) {
      $result.proofPedersenCommit = proofPedersenCommit;
    }
    return $result;
  }
  MsgBindCredential._() : super();
  factory MsgBindCredential.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgBindCredential.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgBindCredential', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'creator')
    ..aOS(2, _omitFieldNames ? '' : 'credentialType', protoName: 'credentialType')
    ..aOS(3, _omitFieldNames ? '' : 'credentialInfo', protoName: 'credentialInfo')
    ..aOM<$19.BPedersenCommit>(4, _omitFieldNames ? '' : 'proofPedersenCommit', protoName: 'proofPedersenCommit', subBuilder: $19.BPedersenCommit.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgBindCredential clone() => MsgBindCredential()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgBindCredential copyWith(void Function(MsgBindCredential) updates) => super.copyWith((message) => updates(message as MsgBindCredential)) as MsgBindCredential;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgBindCredential create() => MsgBindCredential._();
  MsgBindCredential createEmptyInstance() => create();
  static $pb.PbList<MsgBindCredential> createRepeated() => $pb.PbList<MsgBindCredential>();
  @$core.pragma('dart2js:noInline')
  static MsgBindCredential getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgBindCredential>(create);
  static MsgBindCredential? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get credentialType => $_getSZ(1);
  @$pb.TagNumber(2)
  set credentialType($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCredentialType() => $_has(1);
  @$pb.TagNumber(2)
  void clearCredentialType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get credentialInfo => $_getSZ(2);
  @$pb.TagNumber(3)
  set credentialInfo($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCredentialInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearCredentialInfo() => clearField(3);

  @$pb.TagNumber(4)
  $19.BPedersenCommit get proofPedersenCommit => $_getN(3);
  @$pb.TagNumber(4)
  set proofPedersenCommit($19.BPedersenCommit v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasProofPedersenCommit() => $_has(3);
  @$pb.TagNumber(4)
  void clearProofPedersenCommit() => clearField(4);
  @$pb.TagNumber(4)
  $19.BPedersenCommit ensureProofPedersenCommit() => $_ensure(3);
}

class MsgBindCredentialResponse extends $pb.GeneratedMessage {
  factory MsgBindCredentialResponse() => create();
  MsgBindCredentialResponse._() : super();
  factory MsgBindCredentialResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgBindCredentialResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgBindCredentialResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgBindCredentialResponse clone() => MsgBindCredentialResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgBindCredentialResponse copyWith(void Function(MsgBindCredentialResponse) updates) => super.copyWith((message) => updates(message as MsgBindCredentialResponse)) as MsgBindCredentialResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgBindCredentialResponse create() => MsgBindCredentialResponse._();
  MsgBindCredentialResponse createEmptyInstance() => create();
  static $pb.PbList<MsgBindCredentialResponse> createRepeated() => $pb.PbList<MsgBindCredentialResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgBindCredentialResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgBindCredentialResponse>(create);
  static MsgBindCredentialResponse? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
