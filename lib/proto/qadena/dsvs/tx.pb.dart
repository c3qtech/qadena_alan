//
//  Generated code. Do not modify.
//  source: qadena/dsvs/tx.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'params.pb.dart' as $7;
import 'v_share_authorized_signatory.pb.dart' as $9;
import 'v_share_signatory.pb.dart' as $8;

/// MsgUpdateParams is the Msg/UpdateParams request type.
class MsgUpdateParams extends $pb.GeneratedMessage {
  factory MsgUpdateParams({
    $core.String? authority,
    $7.Params? params,
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgUpdateParams', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.dsvs'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'authority')
    ..aOM<$7.Params>(2, _omitFieldNames ? '' : 'params', subBuilder: $7.Params.create)
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
  $7.Params get params => $_getN(1);
  @$pb.TagNumber(2)
  set params($7.Params v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasParams() => $_has(1);
  @$pb.TagNumber(2)
  void clearParams() => clearField(2);
  @$pb.TagNumber(2)
  $7.Params ensureParams() => $_ensure(1);
}

/// MsgUpdateParamsResponse defines the response structure for executing a
/// MsgUpdateParams message.
class MsgUpdateParamsResponse extends $pb.GeneratedMessage {
  factory MsgUpdateParamsResponse() => create();
  MsgUpdateParamsResponse._() : super();
  factory MsgUpdateParamsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgUpdateParamsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgUpdateParamsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.dsvs'), createEmptyInstance: create)
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

class MsgCreateDocument extends $pb.GeneratedMessage {
  factory MsgCreateDocument({
    $core.String? creator,
    $core.String? documentID,
    $core.String? documentType,
    $core.String? companyName,
    $core.Iterable<$8.VShareSignatory>? requiredSignatory,
    $core.List<$core.int>? hash,
  }) {
    final $result = create();
    if (creator != null) {
      $result.creator = creator;
    }
    if (documentID != null) {
      $result.documentID = documentID;
    }
    if (documentType != null) {
      $result.documentType = documentType;
    }
    if (companyName != null) {
      $result.companyName = companyName;
    }
    if (requiredSignatory != null) {
      $result.requiredSignatory.addAll(requiredSignatory);
    }
    if (hash != null) {
      $result.hash = hash;
    }
    return $result;
  }
  MsgCreateDocument._() : super();
  factory MsgCreateDocument.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgCreateDocument.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgCreateDocument', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.dsvs'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'creator')
    ..aOS(2, _omitFieldNames ? '' : 'documentID', protoName: 'documentID')
    ..aOS(3, _omitFieldNames ? '' : 'documentType', protoName: 'documentType')
    ..aOS(4, _omitFieldNames ? '' : 'companyName', protoName: 'companyName')
    ..pc<$8.VShareSignatory>(5, _omitFieldNames ? '' : 'requiredSignatory', $pb.PbFieldType.PM, protoName: 'requiredSignatory', subBuilder: $8.VShareSignatory.create)
    ..a<$core.List<$core.int>>(6, _omitFieldNames ? '' : 'hash', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgCreateDocument clone() => MsgCreateDocument()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgCreateDocument copyWith(void Function(MsgCreateDocument) updates) => super.copyWith((message) => updates(message as MsgCreateDocument)) as MsgCreateDocument;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgCreateDocument create() => MsgCreateDocument._();
  MsgCreateDocument createEmptyInstance() => create();
  static $pb.PbList<MsgCreateDocument> createRepeated() => $pb.PbList<MsgCreateDocument>();
  @$core.pragma('dart2js:noInline')
  static MsgCreateDocument getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgCreateDocument>(create);
  static MsgCreateDocument? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get documentID => $_getSZ(1);
  @$pb.TagNumber(2)
  set documentID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDocumentID() => $_has(1);
  @$pb.TagNumber(2)
  void clearDocumentID() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get documentType => $_getSZ(2);
  @$pb.TagNumber(3)
  set documentType($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDocumentType() => $_has(2);
  @$pb.TagNumber(3)
  void clearDocumentType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get companyName => $_getSZ(3);
  @$pb.TagNumber(4)
  set companyName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCompanyName() => $_has(3);
  @$pb.TagNumber(4)
  void clearCompanyName() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$8.VShareSignatory> get requiredSignatory => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<$core.int> get hash => $_getN(5);
  @$pb.TagNumber(6)
  set hash($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasHash() => $_has(5);
  @$pb.TagNumber(6)
  void clearHash() => clearField(6);
}

class MsgCreateDocumentResponse extends $pb.GeneratedMessage {
  factory MsgCreateDocumentResponse() => create();
  MsgCreateDocumentResponse._() : super();
  factory MsgCreateDocumentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgCreateDocumentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgCreateDocumentResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.dsvs'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgCreateDocumentResponse clone() => MsgCreateDocumentResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgCreateDocumentResponse copyWith(void Function(MsgCreateDocumentResponse) updates) => super.copyWith((message) => updates(message as MsgCreateDocumentResponse)) as MsgCreateDocumentResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgCreateDocumentResponse create() => MsgCreateDocumentResponse._();
  MsgCreateDocumentResponse createEmptyInstance() => create();
  static $pb.PbList<MsgCreateDocumentResponse> createRepeated() => $pb.PbList<MsgCreateDocumentResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgCreateDocumentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgCreateDocumentResponse>(create);
  static MsgCreateDocumentResponse? _defaultInstance;
}

class MsgSignDocument extends $pb.GeneratedMessage {
  factory MsgSignDocument({
    $core.String? creator,
    $8.VShareSignatory? completedSignatory,
    $core.List<$core.int>? currentHash,
    $core.List<$core.int>? hash,
  }) {
    final $result = create();
    if (creator != null) {
      $result.creator = creator;
    }
    if (completedSignatory != null) {
      $result.completedSignatory = completedSignatory;
    }
    if (currentHash != null) {
      $result.currentHash = currentHash;
    }
    if (hash != null) {
      $result.hash = hash;
    }
    return $result;
  }
  MsgSignDocument._() : super();
  factory MsgSignDocument.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgSignDocument.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgSignDocument', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.dsvs'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'creator')
    ..aOM<$8.VShareSignatory>(2, _omitFieldNames ? '' : 'completedSignatory', protoName: 'completedSignatory', subBuilder: $8.VShareSignatory.create)
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'currentHash', $pb.PbFieldType.OY, protoName: 'currentHash')
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'hash', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgSignDocument clone() => MsgSignDocument()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgSignDocument copyWith(void Function(MsgSignDocument) updates) => super.copyWith((message) => updates(message as MsgSignDocument)) as MsgSignDocument;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgSignDocument create() => MsgSignDocument._();
  MsgSignDocument createEmptyInstance() => create();
  static $pb.PbList<MsgSignDocument> createRepeated() => $pb.PbList<MsgSignDocument>();
  @$core.pragma('dart2js:noInline')
  static MsgSignDocument getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgSignDocument>(create);
  static MsgSignDocument? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  $8.VShareSignatory get completedSignatory => $_getN(1);
  @$pb.TagNumber(2)
  set completedSignatory($8.VShareSignatory v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCompletedSignatory() => $_has(1);
  @$pb.TagNumber(2)
  void clearCompletedSignatory() => clearField(2);
  @$pb.TagNumber(2)
  $8.VShareSignatory ensureCompletedSignatory() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get currentHash => $_getN(2);
  @$pb.TagNumber(3)
  set currentHash($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCurrentHash() => $_has(2);
  @$pb.TagNumber(3)
  void clearCurrentHash() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get hash => $_getN(3);
  @$pb.TagNumber(4)
  set hash($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasHash() => $_has(3);
  @$pb.TagNumber(4)
  void clearHash() => clearField(4);
}

class MsgSignDocumentResponse extends $pb.GeneratedMessage {
  factory MsgSignDocumentResponse() => create();
  MsgSignDocumentResponse._() : super();
  factory MsgSignDocumentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgSignDocumentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgSignDocumentResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.dsvs'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgSignDocumentResponse clone() => MsgSignDocumentResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgSignDocumentResponse copyWith(void Function(MsgSignDocumentResponse) updates) => super.copyWith((message) => updates(message as MsgSignDocumentResponse)) as MsgSignDocumentResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgSignDocumentResponse create() => MsgSignDocumentResponse._();
  MsgSignDocumentResponse createEmptyInstance() => create();
  static $pb.PbList<MsgSignDocumentResponse> createRepeated() => $pb.PbList<MsgSignDocumentResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgSignDocumentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgSignDocumentResponse>(create);
  static MsgSignDocumentResponse? _defaultInstance;
}

class MsgRegisterAuthorizedSignatory extends $pb.GeneratedMessage {
  factory MsgRegisterAuthorizedSignatory({
    $core.String? creator,
    $9.VShareAuthorizedSignatory? vShareAuthorizedSignatory,
  }) {
    final $result = create();
    if (creator != null) {
      $result.creator = creator;
    }
    if (vShareAuthorizedSignatory != null) {
      $result.vShareAuthorizedSignatory = vShareAuthorizedSignatory;
    }
    return $result;
  }
  MsgRegisterAuthorizedSignatory._() : super();
  factory MsgRegisterAuthorizedSignatory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgRegisterAuthorizedSignatory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgRegisterAuthorizedSignatory', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.dsvs'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'creator')
    ..aOM<$9.VShareAuthorizedSignatory>(2, _omitFieldNames ? '' : 'vShareAuthorizedSignatory', protoName: 'vShareAuthorizedSignatory', subBuilder: $9.VShareAuthorizedSignatory.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgRegisterAuthorizedSignatory clone() => MsgRegisterAuthorizedSignatory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgRegisterAuthorizedSignatory copyWith(void Function(MsgRegisterAuthorizedSignatory) updates) => super.copyWith((message) => updates(message as MsgRegisterAuthorizedSignatory)) as MsgRegisterAuthorizedSignatory;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgRegisterAuthorizedSignatory create() => MsgRegisterAuthorizedSignatory._();
  MsgRegisterAuthorizedSignatory createEmptyInstance() => create();
  static $pb.PbList<MsgRegisterAuthorizedSignatory> createRepeated() => $pb.PbList<MsgRegisterAuthorizedSignatory>();
  @$core.pragma('dart2js:noInline')
  static MsgRegisterAuthorizedSignatory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgRegisterAuthorizedSignatory>(create);
  static MsgRegisterAuthorizedSignatory? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  $9.VShareAuthorizedSignatory get vShareAuthorizedSignatory => $_getN(1);
  @$pb.TagNumber(2)
  set vShareAuthorizedSignatory($9.VShareAuthorizedSignatory v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasVShareAuthorizedSignatory() => $_has(1);
  @$pb.TagNumber(2)
  void clearVShareAuthorizedSignatory() => clearField(2);
  @$pb.TagNumber(2)
  $9.VShareAuthorizedSignatory ensureVShareAuthorizedSignatory() => $_ensure(1);
}

class MsgRegisterAuthorizedSignatoryResponse extends $pb.GeneratedMessage {
  factory MsgRegisterAuthorizedSignatoryResponse() => create();
  MsgRegisterAuthorizedSignatoryResponse._() : super();
  factory MsgRegisterAuthorizedSignatoryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgRegisterAuthorizedSignatoryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgRegisterAuthorizedSignatoryResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.dsvs'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgRegisterAuthorizedSignatoryResponse clone() => MsgRegisterAuthorizedSignatoryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgRegisterAuthorizedSignatoryResponse copyWith(void Function(MsgRegisterAuthorizedSignatoryResponse) updates) => super.copyWith((message) => updates(message as MsgRegisterAuthorizedSignatoryResponse)) as MsgRegisterAuthorizedSignatoryResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgRegisterAuthorizedSignatoryResponse create() => MsgRegisterAuthorizedSignatoryResponse._();
  MsgRegisterAuthorizedSignatoryResponse createEmptyInstance() => create();
  static $pb.PbList<MsgRegisterAuthorizedSignatoryResponse> createRepeated() => $pb.PbList<MsgRegisterAuthorizedSignatoryResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgRegisterAuthorizedSignatoryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgRegisterAuthorizedSignatoryResponse>(create);
  static MsgRegisterAuthorizedSignatoryResponse? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
