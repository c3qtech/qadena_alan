//
//  Generated code. Do not modify.
//  source: qadena/nameservice/tx.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'params.pb.dart' as $3;
import 'pedersen_commit.pb.dart' as $4;

/// MsgUpdateParams is the Msg/UpdateParams request type.
class MsgUpdateParams extends $pb.GeneratedMessage {
  factory MsgUpdateParams({
    $core.String? authority,
    $3.Params? params,
  }) {
    final $result = create();
    if (authority != null) {
      $result.authority = authority;
    }
    if (params != null) {
      $result.params = params;
    }
    return $result;
  }
  MsgUpdateParams._() : super();
  factory MsgUpdateParams.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgUpdateParams.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgUpdateParams', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.nameservice'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'authority')
    ..aOM<$3.Params>(2, _omitFieldNames ? '' : 'params', subBuilder: $3.Params.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgUpdateParams clone() => MsgUpdateParams()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgUpdateParams copyWith(void Function(MsgUpdateParams) updates) => super.copyWith((message) => updates(message as MsgUpdateParams)) as MsgUpdateParams;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgUpdateParams create() => MsgUpdateParams._();
  MsgUpdateParams createEmptyInstance() => create();
  static $pb.PbList<MsgUpdateParams> createRepeated() => $pb.PbList<MsgUpdateParams>();
  @$core.pragma('dart2js:noInline')
  static MsgUpdateParams getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgUpdateParams>(create);
  static MsgUpdateParams? _defaultInstance;

  /// authority is the address that controls the module (defaults to x/gov unless overwritten).
  @$pb.TagNumber(1)
  $core.String get authority => $_getSZ(0);
  @$pb.TagNumber(1)
  set authority($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAuthority() => $_has(0);
  @$pb.TagNumber(1)
  void clearAuthority() => clearField(1);

  /// NOTE: All parameters must be supplied.
  @$pb.TagNumber(2)
  $3.Params get params => $_getN(1);
  @$pb.TagNumber(2)
  set params($3.Params v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasParams() => $_has(1);
  @$pb.TagNumber(2)
  void clearParams() => clearField(2);
  @$pb.TagNumber(2)
  $3.Params ensureParams() => $_ensure(1);
}

/// MsgUpdateParamsResponse defines the response structure for executing a
/// MsgUpdateParams message.
class MsgUpdateParamsResponse extends $pb.GeneratedMessage {
  factory MsgUpdateParamsResponse() => create();
  MsgUpdateParamsResponse._() : super();
  factory MsgUpdateParamsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgUpdateParamsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgUpdateParamsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.nameservice'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgUpdateParamsResponse clone() => MsgUpdateParamsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgUpdateParamsResponse copyWith(void Function(MsgUpdateParamsResponse) updates) => super.copyWith((message) => updates(message as MsgUpdateParamsResponse)) as MsgUpdateParamsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgUpdateParamsResponse create() => MsgUpdateParamsResponse._();
  MsgUpdateParamsResponse createEmptyInstance() => create();
  static $pb.PbList<MsgUpdateParamsResponse> createRepeated() => $pb.PbList<MsgUpdateParamsResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgUpdateParamsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgUpdateParamsResponse>(create);
  static MsgUpdateParamsResponse? _defaultInstance;
}

class MsgBindCredential extends $pb.GeneratedMessage {
  factory MsgBindCredential({
    $core.String? creator,
    $core.String? credentialType,
    $core.String? credentialInfo,
    $4.BPedersenCommit? credentialPedersenCommit,
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
    if (credentialPedersenCommit != null) {
      $result.credentialPedersenCommit = credentialPedersenCommit;
    }
    return $result;
  }
  MsgBindCredential._() : super();
  factory MsgBindCredential.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgBindCredential.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgBindCredential', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.nameservice'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'creator')
    ..aOS(2, _omitFieldNames ? '' : 'credentialType', protoName: 'credentialType')
    ..aOS(3, _omitFieldNames ? '' : 'credentialInfo', protoName: 'credentialInfo')
    ..aOM<$4.BPedersenCommit>(4, _omitFieldNames ? '' : 'credentialPedersenCommit', protoName: 'credentialPedersenCommit', subBuilder: $4.BPedersenCommit.create)
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
  $4.BPedersenCommit get credentialPedersenCommit => $_getN(3);
  @$pb.TagNumber(4)
  set credentialPedersenCommit($4.BPedersenCommit v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCredentialPedersenCommit() => $_has(3);
  @$pb.TagNumber(4)
  void clearCredentialPedersenCommit() => clearField(4);
  @$pb.TagNumber(4)
  $4.BPedersenCommit ensureCredentialPedersenCommit() => $_ensure(3);
}

class MsgBindCredentialResponse extends $pb.GeneratedMessage {
  factory MsgBindCredentialResponse() => create();
  MsgBindCredentialResponse._() : super();
  factory MsgBindCredentialResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgBindCredentialResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgBindCredentialResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.nameservice'), createEmptyInstance: create)
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
