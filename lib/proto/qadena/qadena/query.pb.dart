//
//  Generated code. Do not modify.
//  source: qadena/qadena/query.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../cosmos/base/query/v1beta1/pagination.pb.dart' as $26;
import '../../cosmos/base/v1beta1/coin.pb.dart' as $14;
import 'credential.pb.dart' as $6;
import 'interval_public_key_i_d.pb.dart' as $9;
import 'jar_regulator.pb.dart' as $8;
import 'params.pb.dart' as $19;
import 'pioneer_jar.pb.dart' as $10;
import 'protect_key.pb.dart' as $4;
import 'public_key.pb.dart' as $7;
import 'recover_key.pb.dart' as $5;
import 'suspicious_transaction.pb.dart' as $27;
import 'wallet.pb.dart' as $3;

/// QueryParamsRequest is request type for the Query/Params RPC method.
class QueryParamsRequest extends $pb.GeneratedMessage {
  factory QueryParamsRequest() => create();
  QueryParamsRequest._() : super();
  factory QueryParamsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryParamsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryParamsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryParamsRequest clone() => QueryParamsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryParamsRequest copyWith(void Function(QueryParamsRequest) updates) => super.copyWith((message) => updates(message as QueryParamsRequest)) as QueryParamsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryParamsRequest create() => QueryParamsRequest._();
  QueryParamsRequest createEmptyInstance() => create();
  static $pb.PbList<QueryParamsRequest> createRepeated() => $pb.PbList<QueryParamsRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryParamsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryParamsRequest>(create);
  static QueryParamsRequest? _defaultInstance;
}

/// QueryParamsResponse is response type for the Query/Params RPC method.
class QueryParamsResponse extends $pb.GeneratedMessage {
  factory QueryParamsResponse({
    $19.Params? params,
  }) {
    final $result = create();
    if (params != null) {
      $result.params = params;
    }
    return $result;
  }
  QueryParamsResponse._() : super();
  factory QueryParamsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryParamsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryParamsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOM<$19.Params>(1, _omitFieldNames ? '' : 'params', subBuilder: $19.Params.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryParamsResponse clone() => QueryParamsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryParamsResponse copyWith(void Function(QueryParamsResponse) updates) => super.copyWith((message) => updates(message as QueryParamsResponse)) as QueryParamsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryParamsResponse create() => QueryParamsResponse._();
  QueryParamsResponse createEmptyInstance() => create();
  static $pb.PbList<QueryParamsResponse> createRepeated() => $pb.PbList<QueryParamsResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryParamsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryParamsResponse>(create);
  static QueryParamsResponse? _defaultInstance;

  /// params holds all the parameters of this module.
  @$pb.TagNumber(1)
  $19.Params get params => $_getN(0);
  @$pb.TagNumber(1)
  set params($19.Params v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasParams() => $_has(0);
  @$pb.TagNumber(1)
  void clearParams() => clearField(1);
  @$pb.TagNumber(1)
  $19.Params ensureParams() => $_ensure(0);
}

class QueryGetCredentialRequest extends $pb.GeneratedMessage {
  factory QueryGetCredentialRequest({
    $core.String? credentialID,
    $core.String? credentialType,
  }) {
    final $result = create();
    if (credentialID != null) {
      $result.credentialID = credentialID;
    }
    if (credentialType != null) {
      $result.credentialType = credentialType;
    }
    return $result;
  }
  QueryGetCredentialRequest._() : super();
  factory QueryGetCredentialRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetCredentialRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryGetCredentialRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'credentialID', protoName: 'credentialID')
    ..aOS(2, _omitFieldNames ? '' : 'credentialType', protoName: 'credentialType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetCredentialRequest clone() => QueryGetCredentialRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetCredentialRequest copyWith(void Function(QueryGetCredentialRequest) updates) => super.copyWith((message) => updates(message as QueryGetCredentialRequest)) as QueryGetCredentialRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryGetCredentialRequest create() => QueryGetCredentialRequest._();
  QueryGetCredentialRequest createEmptyInstance() => create();
  static $pb.PbList<QueryGetCredentialRequest> createRepeated() => $pb.PbList<QueryGetCredentialRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryGetCredentialRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetCredentialRequest>(create);
  static QueryGetCredentialRequest? _defaultInstance;

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
}

class QueryGetCredentialResponse extends $pb.GeneratedMessage {
  factory QueryGetCredentialResponse({
    $6.Credential? credential,
  }) {
    final $result = create();
    if (credential != null) {
      $result.credential = credential;
    }
    return $result;
  }
  QueryGetCredentialResponse._() : super();
  factory QueryGetCredentialResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetCredentialResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryGetCredentialResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOM<$6.Credential>(1, _omitFieldNames ? '' : 'credential', subBuilder: $6.Credential.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetCredentialResponse clone() => QueryGetCredentialResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetCredentialResponse copyWith(void Function(QueryGetCredentialResponse) updates) => super.copyWith((message) => updates(message as QueryGetCredentialResponse)) as QueryGetCredentialResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryGetCredentialResponse create() => QueryGetCredentialResponse._();
  QueryGetCredentialResponse createEmptyInstance() => create();
  static $pb.PbList<QueryGetCredentialResponse> createRepeated() => $pb.PbList<QueryGetCredentialResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryGetCredentialResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetCredentialResponse>(create);
  static QueryGetCredentialResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $6.Credential get credential => $_getN(0);
  @$pb.TagNumber(1)
  set credential($6.Credential v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCredential() => $_has(0);
  @$pb.TagNumber(1)
  void clearCredential() => clearField(1);
  @$pb.TagNumber(1)
  $6.Credential ensureCredential() => $_ensure(0);
}

class QueryAllCredentialRequest extends $pb.GeneratedMessage {
  factory QueryAllCredentialRequest({
    $26.PageRequest? pagination,
  }) {
    final $result = create();
    if (pagination != null) {
      $result.pagination = pagination;
    }
    return $result;
  }
  QueryAllCredentialRequest._() : super();
  factory QueryAllCredentialRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAllCredentialRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryAllCredentialRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOM<$26.PageRequest>(1, _omitFieldNames ? '' : 'pagination', subBuilder: $26.PageRequest.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAllCredentialRequest clone() => QueryAllCredentialRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAllCredentialRequest copyWith(void Function(QueryAllCredentialRequest) updates) => super.copyWith((message) => updates(message as QueryAllCredentialRequest)) as QueryAllCredentialRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryAllCredentialRequest create() => QueryAllCredentialRequest._();
  QueryAllCredentialRequest createEmptyInstance() => create();
  static $pb.PbList<QueryAllCredentialRequest> createRepeated() => $pb.PbList<QueryAllCredentialRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryAllCredentialRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAllCredentialRequest>(create);
  static QueryAllCredentialRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $26.PageRequest get pagination => $_getN(0);
  @$pb.TagNumber(1)
  set pagination($26.PageRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPagination() => $_has(0);
  @$pb.TagNumber(1)
  void clearPagination() => clearField(1);
  @$pb.TagNumber(1)
  $26.PageRequest ensurePagination() => $_ensure(0);
}

class QueryAllCredentialResponse extends $pb.GeneratedMessage {
  factory QueryAllCredentialResponse({
    $core.Iterable<$6.Credential>? credential,
    $26.PageResponse? pagination,
  }) {
    final $result = create();
    if (credential != null) {
      $result.credential.addAll(credential);
    }
    if (pagination != null) {
      $result.pagination = pagination;
    }
    return $result;
  }
  QueryAllCredentialResponse._() : super();
  factory QueryAllCredentialResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAllCredentialResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryAllCredentialResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..pc<$6.Credential>(1, _omitFieldNames ? '' : 'credential', $pb.PbFieldType.PM, subBuilder: $6.Credential.create)
    ..aOM<$26.PageResponse>(2, _omitFieldNames ? '' : 'pagination', subBuilder: $26.PageResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAllCredentialResponse clone() => QueryAllCredentialResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAllCredentialResponse copyWith(void Function(QueryAllCredentialResponse) updates) => super.copyWith((message) => updates(message as QueryAllCredentialResponse)) as QueryAllCredentialResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryAllCredentialResponse create() => QueryAllCredentialResponse._();
  QueryAllCredentialResponse createEmptyInstance() => create();
  static $pb.PbList<QueryAllCredentialResponse> createRepeated() => $pb.PbList<QueryAllCredentialResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryAllCredentialResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAllCredentialResponse>(create);
  static QueryAllCredentialResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$6.Credential> get credential => $_getList(0);

  @$pb.TagNumber(2)
  $26.PageResponse get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($26.PageResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $26.PageResponse ensurePagination() => $_ensure(1);
}

class QueryGetPublicKeyRequest extends $pb.GeneratedMessage {
  factory QueryGetPublicKeyRequest({
    $core.String? pubKID,
    $core.String? pubKType,
  }) {
    final $result = create();
    if (pubKID != null) {
      $result.pubKID = pubKID;
    }
    if (pubKType != null) {
      $result.pubKType = pubKType;
    }
    return $result;
  }
  QueryGetPublicKeyRequest._() : super();
  factory QueryGetPublicKeyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetPublicKeyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryGetPublicKeyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'pubKID', protoName: 'pubKID')
    ..aOS(2, _omitFieldNames ? '' : 'pubKType', protoName: 'pubKType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetPublicKeyRequest clone() => QueryGetPublicKeyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetPublicKeyRequest copyWith(void Function(QueryGetPublicKeyRequest) updates) => super.copyWith((message) => updates(message as QueryGetPublicKeyRequest)) as QueryGetPublicKeyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryGetPublicKeyRequest create() => QueryGetPublicKeyRequest._();
  QueryGetPublicKeyRequest createEmptyInstance() => create();
  static $pb.PbList<QueryGetPublicKeyRequest> createRepeated() => $pb.PbList<QueryGetPublicKeyRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryGetPublicKeyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetPublicKeyRequest>(create);
  static QueryGetPublicKeyRequest? _defaultInstance;

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
}

class QueryGetPublicKeyResponse extends $pb.GeneratedMessage {
  factory QueryGetPublicKeyResponse({
    $7.PublicKey? publicKey,
  }) {
    final $result = create();
    if (publicKey != null) {
      $result.publicKey = publicKey;
    }
    return $result;
  }
  QueryGetPublicKeyResponse._() : super();
  factory QueryGetPublicKeyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetPublicKeyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryGetPublicKeyResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOM<$7.PublicKey>(1, _omitFieldNames ? '' : 'publicKey', protoName: 'publicKey', subBuilder: $7.PublicKey.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetPublicKeyResponse clone() => QueryGetPublicKeyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetPublicKeyResponse copyWith(void Function(QueryGetPublicKeyResponse) updates) => super.copyWith((message) => updates(message as QueryGetPublicKeyResponse)) as QueryGetPublicKeyResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryGetPublicKeyResponse create() => QueryGetPublicKeyResponse._();
  QueryGetPublicKeyResponse createEmptyInstance() => create();
  static $pb.PbList<QueryGetPublicKeyResponse> createRepeated() => $pb.PbList<QueryGetPublicKeyResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryGetPublicKeyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetPublicKeyResponse>(create);
  static QueryGetPublicKeyResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $7.PublicKey get publicKey => $_getN(0);
  @$pb.TagNumber(1)
  set publicKey($7.PublicKey v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPublicKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearPublicKey() => clearField(1);
  @$pb.TagNumber(1)
  $7.PublicKey ensurePublicKey() => $_ensure(0);
}

class QueryAllPublicKeyRequest extends $pb.GeneratedMessage {
  factory QueryAllPublicKeyRequest({
    $26.PageRequest? pagination,
  }) {
    final $result = create();
    if (pagination != null) {
      $result.pagination = pagination;
    }
    return $result;
  }
  QueryAllPublicKeyRequest._() : super();
  factory QueryAllPublicKeyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAllPublicKeyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryAllPublicKeyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOM<$26.PageRequest>(1, _omitFieldNames ? '' : 'pagination', subBuilder: $26.PageRequest.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAllPublicKeyRequest clone() => QueryAllPublicKeyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAllPublicKeyRequest copyWith(void Function(QueryAllPublicKeyRequest) updates) => super.copyWith((message) => updates(message as QueryAllPublicKeyRequest)) as QueryAllPublicKeyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryAllPublicKeyRequest create() => QueryAllPublicKeyRequest._();
  QueryAllPublicKeyRequest createEmptyInstance() => create();
  static $pb.PbList<QueryAllPublicKeyRequest> createRepeated() => $pb.PbList<QueryAllPublicKeyRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryAllPublicKeyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAllPublicKeyRequest>(create);
  static QueryAllPublicKeyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $26.PageRequest get pagination => $_getN(0);
  @$pb.TagNumber(1)
  set pagination($26.PageRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPagination() => $_has(0);
  @$pb.TagNumber(1)
  void clearPagination() => clearField(1);
  @$pb.TagNumber(1)
  $26.PageRequest ensurePagination() => $_ensure(0);
}

class QueryAllPublicKeyResponse extends $pb.GeneratedMessage {
  factory QueryAllPublicKeyResponse({
    $core.Iterable<$7.PublicKey>? publicKey,
    $26.PageResponse? pagination,
  }) {
    final $result = create();
    if (publicKey != null) {
      $result.publicKey.addAll(publicKey);
    }
    if (pagination != null) {
      $result.pagination = pagination;
    }
    return $result;
  }
  QueryAllPublicKeyResponse._() : super();
  factory QueryAllPublicKeyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAllPublicKeyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryAllPublicKeyResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..pc<$7.PublicKey>(1, _omitFieldNames ? '' : 'publicKey', $pb.PbFieldType.PM, protoName: 'publicKey', subBuilder: $7.PublicKey.create)
    ..aOM<$26.PageResponse>(2, _omitFieldNames ? '' : 'pagination', subBuilder: $26.PageResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAllPublicKeyResponse clone() => QueryAllPublicKeyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAllPublicKeyResponse copyWith(void Function(QueryAllPublicKeyResponse) updates) => super.copyWith((message) => updates(message as QueryAllPublicKeyResponse)) as QueryAllPublicKeyResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryAllPublicKeyResponse create() => QueryAllPublicKeyResponse._();
  QueryAllPublicKeyResponse createEmptyInstance() => create();
  static $pb.PbList<QueryAllPublicKeyResponse> createRepeated() => $pb.PbList<QueryAllPublicKeyResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryAllPublicKeyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAllPublicKeyResponse>(create);
  static QueryAllPublicKeyResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$7.PublicKey> get publicKey => $_getList(0);

  @$pb.TagNumber(2)
  $26.PageResponse get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($26.PageResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $26.PageResponse ensurePagination() => $_ensure(1);
}

class QueryGetWalletRequest extends $pb.GeneratedMessage {
  factory QueryGetWalletRequest({
    $core.String? walletID,
  }) {
    final $result = create();
    if (walletID != null) {
      $result.walletID = walletID;
    }
    return $result;
  }
  QueryGetWalletRequest._() : super();
  factory QueryGetWalletRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetWalletRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryGetWalletRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'walletID', protoName: 'walletID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetWalletRequest clone() => QueryGetWalletRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetWalletRequest copyWith(void Function(QueryGetWalletRequest) updates) => super.copyWith((message) => updates(message as QueryGetWalletRequest)) as QueryGetWalletRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryGetWalletRequest create() => QueryGetWalletRequest._();
  QueryGetWalletRequest createEmptyInstance() => create();
  static $pb.PbList<QueryGetWalletRequest> createRepeated() => $pb.PbList<QueryGetWalletRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryGetWalletRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetWalletRequest>(create);
  static QueryGetWalletRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get walletID => $_getSZ(0);
  @$pb.TagNumber(1)
  set walletID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWalletID() => $_has(0);
  @$pb.TagNumber(1)
  void clearWalletID() => clearField(1);
}

class QueryGetWalletResponse extends $pb.GeneratedMessage {
  factory QueryGetWalletResponse({
    $3.Wallet? wallet,
  }) {
    final $result = create();
    if (wallet != null) {
      $result.wallet = wallet;
    }
    return $result;
  }
  QueryGetWalletResponse._() : super();
  factory QueryGetWalletResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetWalletResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryGetWalletResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOM<$3.Wallet>(1, _omitFieldNames ? '' : 'wallet', subBuilder: $3.Wallet.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetWalletResponse clone() => QueryGetWalletResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetWalletResponse copyWith(void Function(QueryGetWalletResponse) updates) => super.copyWith((message) => updates(message as QueryGetWalletResponse)) as QueryGetWalletResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryGetWalletResponse create() => QueryGetWalletResponse._();
  QueryGetWalletResponse createEmptyInstance() => create();
  static $pb.PbList<QueryGetWalletResponse> createRepeated() => $pb.PbList<QueryGetWalletResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryGetWalletResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetWalletResponse>(create);
  static QueryGetWalletResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $3.Wallet get wallet => $_getN(0);
  @$pb.TagNumber(1)
  set wallet($3.Wallet v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasWallet() => $_has(0);
  @$pb.TagNumber(1)
  void clearWallet() => clearField(1);
  @$pb.TagNumber(1)
  $3.Wallet ensureWallet() => $_ensure(0);
}

class QueryAllWalletRequest extends $pb.GeneratedMessage {
  factory QueryAllWalletRequest({
    $26.PageRequest? pagination,
  }) {
    final $result = create();
    if (pagination != null) {
      $result.pagination = pagination;
    }
    return $result;
  }
  QueryAllWalletRequest._() : super();
  factory QueryAllWalletRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAllWalletRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryAllWalletRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOM<$26.PageRequest>(1, _omitFieldNames ? '' : 'pagination', subBuilder: $26.PageRequest.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAllWalletRequest clone() => QueryAllWalletRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAllWalletRequest copyWith(void Function(QueryAllWalletRequest) updates) => super.copyWith((message) => updates(message as QueryAllWalletRequest)) as QueryAllWalletRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryAllWalletRequest create() => QueryAllWalletRequest._();
  QueryAllWalletRequest createEmptyInstance() => create();
  static $pb.PbList<QueryAllWalletRequest> createRepeated() => $pb.PbList<QueryAllWalletRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryAllWalletRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAllWalletRequest>(create);
  static QueryAllWalletRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $26.PageRequest get pagination => $_getN(0);
  @$pb.TagNumber(1)
  set pagination($26.PageRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPagination() => $_has(0);
  @$pb.TagNumber(1)
  void clearPagination() => clearField(1);
  @$pb.TagNumber(1)
  $26.PageRequest ensurePagination() => $_ensure(0);
}

class QueryAllWalletResponse extends $pb.GeneratedMessage {
  factory QueryAllWalletResponse({
    $core.Iterable<$3.Wallet>? wallet,
    $26.PageResponse? pagination,
  }) {
    final $result = create();
    if (wallet != null) {
      $result.wallet.addAll(wallet);
    }
    if (pagination != null) {
      $result.pagination = pagination;
    }
    return $result;
  }
  QueryAllWalletResponse._() : super();
  factory QueryAllWalletResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAllWalletResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryAllWalletResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..pc<$3.Wallet>(1, _omitFieldNames ? '' : 'wallet', $pb.PbFieldType.PM, subBuilder: $3.Wallet.create)
    ..aOM<$26.PageResponse>(2, _omitFieldNames ? '' : 'pagination', subBuilder: $26.PageResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAllWalletResponse clone() => QueryAllWalletResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAllWalletResponse copyWith(void Function(QueryAllWalletResponse) updates) => super.copyWith((message) => updates(message as QueryAllWalletResponse)) as QueryAllWalletResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryAllWalletResponse create() => QueryAllWalletResponse._();
  QueryAllWalletResponse createEmptyInstance() => create();
  static $pb.PbList<QueryAllWalletResponse> createRepeated() => $pb.PbList<QueryAllWalletResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryAllWalletResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAllWalletResponse>(create);
  static QueryAllWalletResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$3.Wallet> get wallet => $_getList(0);

  @$pb.TagNumber(2)
  $26.PageResponse get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($26.PageResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $26.PageResponse ensurePagination() => $_ensure(1);
}

class QueryGetIntervalPublicKeyIDRequest extends $pb.GeneratedMessage {
  factory QueryGetIntervalPublicKeyIDRequest({
    $core.String? nodeID,
    $core.String? nodeType,
  }) {
    final $result = create();
    if (nodeID != null) {
      $result.nodeID = nodeID;
    }
    if (nodeType != null) {
      $result.nodeType = nodeType;
    }
    return $result;
  }
  QueryGetIntervalPublicKeyIDRequest._() : super();
  factory QueryGetIntervalPublicKeyIDRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetIntervalPublicKeyIDRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryGetIntervalPublicKeyIDRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'nodeID', protoName: 'nodeID')
    ..aOS(2, _omitFieldNames ? '' : 'nodeType', protoName: 'nodeType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetIntervalPublicKeyIDRequest clone() => QueryGetIntervalPublicKeyIDRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetIntervalPublicKeyIDRequest copyWith(void Function(QueryGetIntervalPublicKeyIDRequest) updates) => super.copyWith((message) => updates(message as QueryGetIntervalPublicKeyIDRequest)) as QueryGetIntervalPublicKeyIDRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryGetIntervalPublicKeyIDRequest create() => QueryGetIntervalPublicKeyIDRequest._();
  QueryGetIntervalPublicKeyIDRequest createEmptyInstance() => create();
  static $pb.PbList<QueryGetIntervalPublicKeyIDRequest> createRepeated() => $pb.PbList<QueryGetIntervalPublicKeyIDRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryGetIntervalPublicKeyIDRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetIntervalPublicKeyIDRequest>(create);
  static QueryGetIntervalPublicKeyIDRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nodeID => $_getSZ(0);
  @$pb.TagNumber(1)
  set nodeID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNodeID() => $_has(0);
  @$pb.TagNumber(1)
  void clearNodeID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nodeType => $_getSZ(1);
  @$pb.TagNumber(2)
  set nodeType($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNodeType() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeType() => clearField(2);
}

class QueryGetIntervalPublicKeyIDResponse extends $pb.GeneratedMessage {
  factory QueryGetIntervalPublicKeyIDResponse({
    $9.IntervalPublicKeyID? intervalPublicKeyID,
  }) {
    final $result = create();
    if (intervalPublicKeyID != null) {
      $result.intervalPublicKeyID = intervalPublicKeyID;
    }
    return $result;
  }
  QueryGetIntervalPublicKeyIDResponse._() : super();
  factory QueryGetIntervalPublicKeyIDResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetIntervalPublicKeyIDResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryGetIntervalPublicKeyIDResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOM<$9.IntervalPublicKeyID>(1, _omitFieldNames ? '' : 'intervalPublicKeyID', protoName: 'intervalPublicKeyID', subBuilder: $9.IntervalPublicKeyID.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetIntervalPublicKeyIDResponse clone() => QueryGetIntervalPublicKeyIDResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetIntervalPublicKeyIDResponse copyWith(void Function(QueryGetIntervalPublicKeyIDResponse) updates) => super.copyWith((message) => updates(message as QueryGetIntervalPublicKeyIDResponse)) as QueryGetIntervalPublicKeyIDResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryGetIntervalPublicKeyIDResponse create() => QueryGetIntervalPublicKeyIDResponse._();
  QueryGetIntervalPublicKeyIDResponse createEmptyInstance() => create();
  static $pb.PbList<QueryGetIntervalPublicKeyIDResponse> createRepeated() => $pb.PbList<QueryGetIntervalPublicKeyIDResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryGetIntervalPublicKeyIDResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetIntervalPublicKeyIDResponse>(create);
  static QueryGetIntervalPublicKeyIDResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $9.IntervalPublicKeyID get intervalPublicKeyID => $_getN(0);
  @$pb.TagNumber(1)
  set intervalPublicKeyID($9.IntervalPublicKeyID v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasIntervalPublicKeyID() => $_has(0);
  @$pb.TagNumber(1)
  void clearIntervalPublicKeyID() => clearField(1);
  @$pb.TagNumber(1)
  $9.IntervalPublicKeyID ensureIntervalPublicKeyID() => $_ensure(0);
}

class QueryAllIntervalPublicKeyIDRequest extends $pb.GeneratedMessage {
  factory QueryAllIntervalPublicKeyIDRequest({
    $26.PageRequest? pagination,
  }) {
    final $result = create();
    if (pagination != null) {
      $result.pagination = pagination;
    }
    return $result;
  }
  QueryAllIntervalPublicKeyIDRequest._() : super();
  factory QueryAllIntervalPublicKeyIDRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAllIntervalPublicKeyIDRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryAllIntervalPublicKeyIDRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOM<$26.PageRequest>(1, _omitFieldNames ? '' : 'pagination', subBuilder: $26.PageRequest.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAllIntervalPublicKeyIDRequest clone() => QueryAllIntervalPublicKeyIDRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAllIntervalPublicKeyIDRequest copyWith(void Function(QueryAllIntervalPublicKeyIDRequest) updates) => super.copyWith((message) => updates(message as QueryAllIntervalPublicKeyIDRequest)) as QueryAllIntervalPublicKeyIDRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryAllIntervalPublicKeyIDRequest create() => QueryAllIntervalPublicKeyIDRequest._();
  QueryAllIntervalPublicKeyIDRequest createEmptyInstance() => create();
  static $pb.PbList<QueryAllIntervalPublicKeyIDRequest> createRepeated() => $pb.PbList<QueryAllIntervalPublicKeyIDRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryAllIntervalPublicKeyIDRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAllIntervalPublicKeyIDRequest>(create);
  static QueryAllIntervalPublicKeyIDRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $26.PageRequest get pagination => $_getN(0);
  @$pb.TagNumber(1)
  set pagination($26.PageRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPagination() => $_has(0);
  @$pb.TagNumber(1)
  void clearPagination() => clearField(1);
  @$pb.TagNumber(1)
  $26.PageRequest ensurePagination() => $_ensure(0);
}

class QueryAllIntervalPublicKeyIDResponse extends $pb.GeneratedMessage {
  factory QueryAllIntervalPublicKeyIDResponse({
    $core.Iterable<$9.IntervalPublicKeyID>? intervalPublicKeyID,
    $26.PageResponse? pagination,
  }) {
    final $result = create();
    if (intervalPublicKeyID != null) {
      $result.intervalPublicKeyID.addAll(intervalPublicKeyID);
    }
    if (pagination != null) {
      $result.pagination = pagination;
    }
    return $result;
  }
  QueryAllIntervalPublicKeyIDResponse._() : super();
  factory QueryAllIntervalPublicKeyIDResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAllIntervalPublicKeyIDResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryAllIntervalPublicKeyIDResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..pc<$9.IntervalPublicKeyID>(1, _omitFieldNames ? '' : 'intervalPublicKeyID', $pb.PbFieldType.PM, protoName: 'intervalPublicKeyID', subBuilder: $9.IntervalPublicKeyID.create)
    ..aOM<$26.PageResponse>(2, _omitFieldNames ? '' : 'pagination', subBuilder: $26.PageResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAllIntervalPublicKeyIDResponse clone() => QueryAllIntervalPublicKeyIDResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAllIntervalPublicKeyIDResponse copyWith(void Function(QueryAllIntervalPublicKeyIDResponse) updates) => super.copyWith((message) => updates(message as QueryAllIntervalPublicKeyIDResponse)) as QueryAllIntervalPublicKeyIDResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryAllIntervalPublicKeyIDResponse create() => QueryAllIntervalPublicKeyIDResponse._();
  QueryAllIntervalPublicKeyIDResponse createEmptyInstance() => create();
  static $pb.PbList<QueryAllIntervalPublicKeyIDResponse> createRepeated() => $pb.PbList<QueryAllIntervalPublicKeyIDResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryAllIntervalPublicKeyIDResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAllIntervalPublicKeyIDResponse>(create);
  static QueryAllIntervalPublicKeyIDResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$9.IntervalPublicKeyID> get intervalPublicKeyID => $_getList(0);

  @$pb.TagNumber(2)
  $26.PageResponse get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($26.PageResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $26.PageResponse ensurePagination() => $_ensure(1);
}

class QueryGetPioneerJarRequest extends $pb.GeneratedMessage {
  factory QueryGetPioneerJarRequest({
    $core.String? pioneerID,
  }) {
    final $result = create();
    if (pioneerID != null) {
      $result.pioneerID = pioneerID;
    }
    return $result;
  }
  QueryGetPioneerJarRequest._() : super();
  factory QueryGetPioneerJarRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetPioneerJarRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryGetPioneerJarRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'pioneerID', protoName: 'pioneerID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetPioneerJarRequest clone() => QueryGetPioneerJarRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetPioneerJarRequest copyWith(void Function(QueryGetPioneerJarRequest) updates) => super.copyWith((message) => updates(message as QueryGetPioneerJarRequest)) as QueryGetPioneerJarRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryGetPioneerJarRequest create() => QueryGetPioneerJarRequest._();
  QueryGetPioneerJarRequest createEmptyInstance() => create();
  static $pb.PbList<QueryGetPioneerJarRequest> createRepeated() => $pb.PbList<QueryGetPioneerJarRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryGetPioneerJarRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetPioneerJarRequest>(create);
  static QueryGetPioneerJarRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pioneerID => $_getSZ(0);
  @$pb.TagNumber(1)
  set pioneerID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPioneerID() => $_has(0);
  @$pb.TagNumber(1)
  void clearPioneerID() => clearField(1);
}

class QueryGetPioneerJarResponse extends $pb.GeneratedMessage {
  factory QueryGetPioneerJarResponse({
    $10.PioneerJar? pioneerJar,
  }) {
    final $result = create();
    if (pioneerJar != null) {
      $result.pioneerJar = pioneerJar;
    }
    return $result;
  }
  QueryGetPioneerJarResponse._() : super();
  factory QueryGetPioneerJarResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetPioneerJarResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryGetPioneerJarResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOM<$10.PioneerJar>(1, _omitFieldNames ? '' : 'pioneerJar', protoName: 'pioneerJar', subBuilder: $10.PioneerJar.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetPioneerJarResponse clone() => QueryGetPioneerJarResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetPioneerJarResponse copyWith(void Function(QueryGetPioneerJarResponse) updates) => super.copyWith((message) => updates(message as QueryGetPioneerJarResponse)) as QueryGetPioneerJarResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryGetPioneerJarResponse create() => QueryGetPioneerJarResponse._();
  QueryGetPioneerJarResponse createEmptyInstance() => create();
  static $pb.PbList<QueryGetPioneerJarResponse> createRepeated() => $pb.PbList<QueryGetPioneerJarResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryGetPioneerJarResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetPioneerJarResponse>(create);
  static QueryGetPioneerJarResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $10.PioneerJar get pioneerJar => $_getN(0);
  @$pb.TagNumber(1)
  set pioneerJar($10.PioneerJar v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPioneerJar() => $_has(0);
  @$pb.TagNumber(1)
  void clearPioneerJar() => clearField(1);
  @$pb.TagNumber(1)
  $10.PioneerJar ensurePioneerJar() => $_ensure(0);
}

class QueryAllPioneerJarRequest extends $pb.GeneratedMessage {
  factory QueryAllPioneerJarRequest({
    $26.PageRequest? pagination,
  }) {
    final $result = create();
    if (pagination != null) {
      $result.pagination = pagination;
    }
    return $result;
  }
  QueryAllPioneerJarRequest._() : super();
  factory QueryAllPioneerJarRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAllPioneerJarRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryAllPioneerJarRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOM<$26.PageRequest>(1, _omitFieldNames ? '' : 'pagination', subBuilder: $26.PageRequest.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAllPioneerJarRequest clone() => QueryAllPioneerJarRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAllPioneerJarRequest copyWith(void Function(QueryAllPioneerJarRequest) updates) => super.copyWith((message) => updates(message as QueryAllPioneerJarRequest)) as QueryAllPioneerJarRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryAllPioneerJarRequest create() => QueryAllPioneerJarRequest._();
  QueryAllPioneerJarRequest createEmptyInstance() => create();
  static $pb.PbList<QueryAllPioneerJarRequest> createRepeated() => $pb.PbList<QueryAllPioneerJarRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryAllPioneerJarRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAllPioneerJarRequest>(create);
  static QueryAllPioneerJarRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $26.PageRequest get pagination => $_getN(0);
  @$pb.TagNumber(1)
  set pagination($26.PageRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPagination() => $_has(0);
  @$pb.TagNumber(1)
  void clearPagination() => clearField(1);
  @$pb.TagNumber(1)
  $26.PageRequest ensurePagination() => $_ensure(0);
}

class QueryAllPioneerJarResponse extends $pb.GeneratedMessage {
  factory QueryAllPioneerJarResponse({
    $core.Iterable<$10.PioneerJar>? pioneerJar,
    $26.PageResponse? pagination,
  }) {
    final $result = create();
    if (pioneerJar != null) {
      $result.pioneerJar.addAll(pioneerJar);
    }
    if (pagination != null) {
      $result.pagination = pagination;
    }
    return $result;
  }
  QueryAllPioneerJarResponse._() : super();
  factory QueryAllPioneerJarResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAllPioneerJarResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryAllPioneerJarResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..pc<$10.PioneerJar>(1, _omitFieldNames ? '' : 'pioneerJar', $pb.PbFieldType.PM, protoName: 'pioneerJar', subBuilder: $10.PioneerJar.create)
    ..aOM<$26.PageResponse>(2, _omitFieldNames ? '' : 'pagination', subBuilder: $26.PageResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAllPioneerJarResponse clone() => QueryAllPioneerJarResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAllPioneerJarResponse copyWith(void Function(QueryAllPioneerJarResponse) updates) => super.copyWith((message) => updates(message as QueryAllPioneerJarResponse)) as QueryAllPioneerJarResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryAllPioneerJarResponse create() => QueryAllPioneerJarResponse._();
  QueryAllPioneerJarResponse createEmptyInstance() => create();
  static $pb.PbList<QueryAllPioneerJarResponse> createRepeated() => $pb.PbList<QueryAllPioneerJarResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryAllPioneerJarResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAllPioneerJarResponse>(create);
  static QueryAllPioneerJarResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$10.PioneerJar> get pioneerJar => $_getList(0);

  @$pb.TagNumber(2)
  $26.PageResponse get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($26.PageResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $26.PageResponse ensurePagination() => $_ensure(1);
}

class QueryGetJarRegulatorRequest extends $pb.GeneratedMessage {
  factory QueryGetJarRegulatorRequest({
    $core.String? jarID,
  }) {
    final $result = create();
    if (jarID != null) {
      $result.jarID = jarID;
    }
    return $result;
  }
  QueryGetJarRegulatorRequest._() : super();
  factory QueryGetJarRegulatorRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetJarRegulatorRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryGetJarRegulatorRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'jarID', protoName: 'jarID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetJarRegulatorRequest clone() => QueryGetJarRegulatorRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetJarRegulatorRequest copyWith(void Function(QueryGetJarRegulatorRequest) updates) => super.copyWith((message) => updates(message as QueryGetJarRegulatorRequest)) as QueryGetJarRegulatorRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryGetJarRegulatorRequest create() => QueryGetJarRegulatorRequest._();
  QueryGetJarRegulatorRequest createEmptyInstance() => create();
  static $pb.PbList<QueryGetJarRegulatorRequest> createRepeated() => $pb.PbList<QueryGetJarRegulatorRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryGetJarRegulatorRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetJarRegulatorRequest>(create);
  static QueryGetJarRegulatorRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get jarID => $_getSZ(0);
  @$pb.TagNumber(1)
  set jarID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasJarID() => $_has(0);
  @$pb.TagNumber(1)
  void clearJarID() => clearField(1);
}

class QueryGetJarRegulatorResponse extends $pb.GeneratedMessage {
  factory QueryGetJarRegulatorResponse({
    $8.JarRegulator? jarRegulator,
  }) {
    final $result = create();
    if (jarRegulator != null) {
      $result.jarRegulator = jarRegulator;
    }
    return $result;
  }
  QueryGetJarRegulatorResponse._() : super();
  factory QueryGetJarRegulatorResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetJarRegulatorResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryGetJarRegulatorResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOM<$8.JarRegulator>(1, _omitFieldNames ? '' : 'jarRegulator', protoName: 'jarRegulator', subBuilder: $8.JarRegulator.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetJarRegulatorResponse clone() => QueryGetJarRegulatorResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetJarRegulatorResponse copyWith(void Function(QueryGetJarRegulatorResponse) updates) => super.copyWith((message) => updates(message as QueryGetJarRegulatorResponse)) as QueryGetJarRegulatorResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryGetJarRegulatorResponse create() => QueryGetJarRegulatorResponse._();
  QueryGetJarRegulatorResponse createEmptyInstance() => create();
  static $pb.PbList<QueryGetJarRegulatorResponse> createRepeated() => $pb.PbList<QueryGetJarRegulatorResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryGetJarRegulatorResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetJarRegulatorResponse>(create);
  static QueryGetJarRegulatorResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $8.JarRegulator get jarRegulator => $_getN(0);
  @$pb.TagNumber(1)
  set jarRegulator($8.JarRegulator v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasJarRegulator() => $_has(0);
  @$pb.TagNumber(1)
  void clearJarRegulator() => clearField(1);
  @$pb.TagNumber(1)
  $8.JarRegulator ensureJarRegulator() => $_ensure(0);
}

class QueryAllJarRegulatorRequest extends $pb.GeneratedMessage {
  factory QueryAllJarRegulatorRequest({
    $26.PageRequest? pagination,
  }) {
    final $result = create();
    if (pagination != null) {
      $result.pagination = pagination;
    }
    return $result;
  }
  QueryAllJarRegulatorRequest._() : super();
  factory QueryAllJarRegulatorRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAllJarRegulatorRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryAllJarRegulatorRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOM<$26.PageRequest>(1, _omitFieldNames ? '' : 'pagination', subBuilder: $26.PageRequest.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAllJarRegulatorRequest clone() => QueryAllJarRegulatorRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAllJarRegulatorRequest copyWith(void Function(QueryAllJarRegulatorRequest) updates) => super.copyWith((message) => updates(message as QueryAllJarRegulatorRequest)) as QueryAllJarRegulatorRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryAllJarRegulatorRequest create() => QueryAllJarRegulatorRequest._();
  QueryAllJarRegulatorRequest createEmptyInstance() => create();
  static $pb.PbList<QueryAllJarRegulatorRequest> createRepeated() => $pb.PbList<QueryAllJarRegulatorRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryAllJarRegulatorRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAllJarRegulatorRequest>(create);
  static QueryAllJarRegulatorRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $26.PageRequest get pagination => $_getN(0);
  @$pb.TagNumber(1)
  set pagination($26.PageRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPagination() => $_has(0);
  @$pb.TagNumber(1)
  void clearPagination() => clearField(1);
  @$pb.TagNumber(1)
  $26.PageRequest ensurePagination() => $_ensure(0);
}

class QueryAllJarRegulatorResponse extends $pb.GeneratedMessage {
  factory QueryAllJarRegulatorResponse({
    $core.Iterable<$8.JarRegulator>? jarRegulator,
    $26.PageResponse? pagination,
  }) {
    final $result = create();
    if (jarRegulator != null) {
      $result.jarRegulator.addAll(jarRegulator);
    }
    if (pagination != null) {
      $result.pagination = pagination;
    }
    return $result;
  }
  QueryAllJarRegulatorResponse._() : super();
  factory QueryAllJarRegulatorResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAllJarRegulatorResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryAllJarRegulatorResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..pc<$8.JarRegulator>(1, _omitFieldNames ? '' : 'jarRegulator', $pb.PbFieldType.PM, protoName: 'jarRegulator', subBuilder: $8.JarRegulator.create)
    ..aOM<$26.PageResponse>(2, _omitFieldNames ? '' : 'pagination', subBuilder: $26.PageResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAllJarRegulatorResponse clone() => QueryAllJarRegulatorResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAllJarRegulatorResponse copyWith(void Function(QueryAllJarRegulatorResponse) updates) => super.copyWith((message) => updates(message as QueryAllJarRegulatorResponse)) as QueryAllJarRegulatorResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryAllJarRegulatorResponse create() => QueryAllJarRegulatorResponse._();
  QueryAllJarRegulatorResponse createEmptyInstance() => create();
  static $pb.PbList<QueryAllJarRegulatorResponse> createRepeated() => $pb.PbList<QueryAllJarRegulatorResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryAllJarRegulatorResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAllJarRegulatorResponse>(create);
  static QueryAllJarRegulatorResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$8.JarRegulator> get jarRegulator => $_getList(0);

  @$pb.TagNumber(2)
  $26.PageResponse get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($26.PageResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $26.PageResponse ensurePagination() => $_ensure(1);
}

class QueryGetSuspiciousTransactionRequest extends $pb.GeneratedMessage {
  factory QueryGetSuspiciousTransactionRequest({
    $fixnum.Int64? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  QueryGetSuspiciousTransactionRequest._() : super();
  factory QueryGetSuspiciousTransactionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetSuspiciousTransactionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryGetSuspiciousTransactionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetSuspiciousTransactionRequest clone() => QueryGetSuspiciousTransactionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetSuspiciousTransactionRequest copyWith(void Function(QueryGetSuspiciousTransactionRequest) updates) => super.copyWith((message) => updates(message as QueryGetSuspiciousTransactionRequest)) as QueryGetSuspiciousTransactionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryGetSuspiciousTransactionRequest create() => QueryGetSuspiciousTransactionRequest._();
  QueryGetSuspiciousTransactionRequest createEmptyInstance() => create();
  static $pb.PbList<QueryGetSuspiciousTransactionRequest> createRepeated() => $pb.PbList<QueryGetSuspiciousTransactionRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryGetSuspiciousTransactionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetSuspiciousTransactionRequest>(create);
  static QueryGetSuspiciousTransactionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class QueryGetSuspiciousTransactionResponse extends $pb.GeneratedMessage {
  factory QueryGetSuspiciousTransactionResponse({
    $27.SuspiciousTransaction? suspiciousTransaction,
  }) {
    final $result = create();
    if (suspiciousTransaction != null) {
      $result.suspiciousTransaction = suspiciousTransaction;
    }
    return $result;
  }
  QueryGetSuspiciousTransactionResponse._() : super();
  factory QueryGetSuspiciousTransactionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetSuspiciousTransactionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryGetSuspiciousTransactionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOM<$27.SuspiciousTransaction>(1, _omitFieldNames ? '' : 'SuspiciousTransaction', protoName: 'SuspiciousTransaction', subBuilder: $27.SuspiciousTransaction.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetSuspiciousTransactionResponse clone() => QueryGetSuspiciousTransactionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetSuspiciousTransactionResponse copyWith(void Function(QueryGetSuspiciousTransactionResponse) updates) => super.copyWith((message) => updates(message as QueryGetSuspiciousTransactionResponse)) as QueryGetSuspiciousTransactionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryGetSuspiciousTransactionResponse create() => QueryGetSuspiciousTransactionResponse._();
  QueryGetSuspiciousTransactionResponse createEmptyInstance() => create();
  static $pb.PbList<QueryGetSuspiciousTransactionResponse> createRepeated() => $pb.PbList<QueryGetSuspiciousTransactionResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryGetSuspiciousTransactionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetSuspiciousTransactionResponse>(create);
  static QueryGetSuspiciousTransactionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $27.SuspiciousTransaction get suspiciousTransaction => $_getN(0);
  @$pb.TagNumber(1)
  set suspiciousTransaction($27.SuspiciousTransaction v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuspiciousTransaction() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuspiciousTransaction() => clearField(1);
  @$pb.TagNumber(1)
  $27.SuspiciousTransaction ensureSuspiciousTransaction() => $_ensure(0);
}

class QueryAllSuspiciousTransactionRequest extends $pb.GeneratedMessage {
  factory QueryAllSuspiciousTransactionRequest({
    $26.PageRequest? pagination,
  }) {
    final $result = create();
    if (pagination != null) {
      $result.pagination = pagination;
    }
    return $result;
  }
  QueryAllSuspiciousTransactionRequest._() : super();
  factory QueryAllSuspiciousTransactionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAllSuspiciousTransactionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryAllSuspiciousTransactionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOM<$26.PageRequest>(1, _omitFieldNames ? '' : 'pagination', subBuilder: $26.PageRequest.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAllSuspiciousTransactionRequest clone() => QueryAllSuspiciousTransactionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAllSuspiciousTransactionRequest copyWith(void Function(QueryAllSuspiciousTransactionRequest) updates) => super.copyWith((message) => updates(message as QueryAllSuspiciousTransactionRequest)) as QueryAllSuspiciousTransactionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryAllSuspiciousTransactionRequest create() => QueryAllSuspiciousTransactionRequest._();
  QueryAllSuspiciousTransactionRequest createEmptyInstance() => create();
  static $pb.PbList<QueryAllSuspiciousTransactionRequest> createRepeated() => $pb.PbList<QueryAllSuspiciousTransactionRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryAllSuspiciousTransactionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAllSuspiciousTransactionRequest>(create);
  static QueryAllSuspiciousTransactionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $26.PageRequest get pagination => $_getN(0);
  @$pb.TagNumber(1)
  set pagination($26.PageRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPagination() => $_has(0);
  @$pb.TagNumber(1)
  void clearPagination() => clearField(1);
  @$pb.TagNumber(1)
  $26.PageRequest ensurePagination() => $_ensure(0);
}

class QueryAllSuspiciousTransactionResponse extends $pb.GeneratedMessage {
  factory QueryAllSuspiciousTransactionResponse({
    $core.Iterable<$27.SuspiciousTransaction>? suspiciousTransaction,
    $26.PageResponse? pagination,
  }) {
    final $result = create();
    if (suspiciousTransaction != null) {
      $result.suspiciousTransaction.addAll(suspiciousTransaction);
    }
    if (pagination != null) {
      $result.pagination = pagination;
    }
    return $result;
  }
  QueryAllSuspiciousTransactionResponse._() : super();
  factory QueryAllSuspiciousTransactionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAllSuspiciousTransactionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryAllSuspiciousTransactionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..pc<$27.SuspiciousTransaction>(1, _omitFieldNames ? '' : 'SuspiciousTransaction', $pb.PbFieldType.PM, protoName: 'SuspiciousTransaction', subBuilder: $27.SuspiciousTransaction.create)
    ..aOM<$26.PageResponse>(2, _omitFieldNames ? '' : 'pagination', subBuilder: $26.PageResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAllSuspiciousTransactionResponse clone() => QueryAllSuspiciousTransactionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAllSuspiciousTransactionResponse copyWith(void Function(QueryAllSuspiciousTransactionResponse) updates) => super.copyWith((message) => updates(message as QueryAllSuspiciousTransactionResponse)) as QueryAllSuspiciousTransactionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryAllSuspiciousTransactionResponse create() => QueryAllSuspiciousTransactionResponse._();
  QueryAllSuspiciousTransactionResponse createEmptyInstance() => create();
  static $pb.PbList<QueryAllSuspiciousTransactionResponse> createRepeated() => $pb.PbList<QueryAllSuspiciousTransactionResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryAllSuspiciousTransactionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAllSuspiciousTransactionResponse>(create);
  static QueryAllSuspiciousTransactionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$27.SuspiciousTransaction> get suspiciousTransaction => $_getList(0);

  @$pb.TagNumber(2)
  $26.PageResponse get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($26.PageResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $26.PageResponse ensurePagination() => $_ensure(1);
}

class QueryGetProtectKeyRequest extends $pb.GeneratedMessage {
  factory QueryGetProtectKeyRequest({
    $core.String? walletID,
  }) {
    final $result = create();
    if (walletID != null) {
      $result.walletID = walletID;
    }
    return $result;
  }
  QueryGetProtectKeyRequest._() : super();
  factory QueryGetProtectKeyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetProtectKeyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryGetProtectKeyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'walletID', protoName: 'walletID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetProtectKeyRequest clone() => QueryGetProtectKeyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetProtectKeyRequest copyWith(void Function(QueryGetProtectKeyRequest) updates) => super.copyWith((message) => updates(message as QueryGetProtectKeyRequest)) as QueryGetProtectKeyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryGetProtectKeyRequest create() => QueryGetProtectKeyRequest._();
  QueryGetProtectKeyRequest createEmptyInstance() => create();
  static $pb.PbList<QueryGetProtectKeyRequest> createRepeated() => $pb.PbList<QueryGetProtectKeyRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryGetProtectKeyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetProtectKeyRequest>(create);
  static QueryGetProtectKeyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get walletID => $_getSZ(0);
  @$pb.TagNumber(1)
  set walletID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWalletID() => $_has(0);
  @$pb.TagNumber(1)
  void clearWalletID() => clearField(1);
}

class QueryGetProtectKeyResponse extends $pb.GeneratedMessage {
  factory QueryGetProtectKeyResponse({
    $4.ProtectKey? protectKey,
  }) {
    final $result = create();
    if (protectKey != null) {
      $result.protectKey = protectKey;
    }
    return $result;
  }
  QueryGetProtectKeyResponse._() : super();
  factory QueryGetProtectKeyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetProtectKeyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryGetProtectKeyResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOM<$4.ProtectKey>(1, _omitFieldNames ? '' : 'protectKey', protoName: 'protectKey', subBuilder: $4.ProtectKey.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetProtectKeyResponse clone() => QueryGetProtectKeyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetProtectKeyResponse copyWith(void Function(QueryGetProtectKeyResponse) updates) => super.copyWith((message) => updates(message as QueryGetProtectKeyResponse)) as QueryGetProtectKeyResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryGetProtectKeyResponse create() => QueryGetProtectKeyResponse._();
  QueryGetProtectKeyResponse createEmptyInstance() => create();
  static $pb.PbList<QueryGetProtectKeyResponse> createRepeated() => $pb.PbList<QueryGetProtectKeyResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryGetProtectKeyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetProtectKeyResponse>(create);
  static QueryGetProtectKeyResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $4.ProtectKey get protectKey => $_getN(0);
  @$pb.TagNumber(1)
  set protectKey($4.ProtectKey v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasProtectKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearProtectKey() => clearField(1);
  @$pb.TagNumber(1)
  $4.ProtectKey ensureProtectKey() => $_ensure(0);
}

class QueryAllProtectKeyRequest extends $pb.GeneratedMessage {
  factory QueryAllProtectKeyRequest({
    $26.PageRequest? pagination,
    $core.String? credentialID,
  }) {
    final $result = create();
    if (pagination != null) {
      $result.pagination = pagination;
    }
    if (credentialID != null) {
      $result.credentialID = credentialID;
    }
    return $result;
  }
  QueryAllProtectKeyRequest._() : super();
  factory QueryAllProtectKeyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAllProtectKeyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryAllProtectKeyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOM<$26.PageRequest>(1, _omitFieldNames ? '' : 'pagination', subBuilder: $26.PageRequest.create)
    ..aOS(2, _omitFieldNames ? '' : 'credentialID', protoName: 'credentialID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAllProtectKeyRequest clone() => QueryAllProtectKeyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAllProtectKeyRequest copyWith(void Function(QueryAllProtectKeyRequest) updates) => super.copyWith((message) => updates(message as QueryAllProtectKeyRequest)) as QueryAllProtectKeyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryAllProtectKeyRequest create() => QueryAllProtectKeyRequest._();
  QueryAllProtectKeyRequest createEmptyInstance() => create();
  static $pb.PbList<QueryAllProtectKeyRequest> createRepeated() => $pb.PbList<QueryAllProtectKeyRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryAllProtectKeyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAllProtectKeyRequest>(create);
  static QueryAllProtectKeyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $26.PageRequest get pagination => $_getN(0);
  @$pb.TagNumber(1)
  set pagination($26.PageRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPagination() => $_has(0);
  @$pb.TagNumber(1)
  void clearPagination() => clearField(1);
  @$pb.TagNumber(1)
  $26.PageRequest ensurePagination() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get credentialID => $_getSZ(1);
  @$pb.TagNumber(2)
  set credentialID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCredentialID() => $_has(1);
  @$pb.TagNumber(2)
  void clearCredentialID() => clearField(2);
}

class QueryAllProtectKeyResponse extends $pb.GeneratedMessage {
  factory QueryAllProtectKeyResponse({
    $core.Iterable<$4.ProtectKey>? protectKey,
    $26.PageResponse? pagination,
  }) {
    final $result = create();
    if (protectKey != null) {
      $result.protectKey.addAll(protectKey);
    }
    if (pagination != null) {
      $result.pagination = pagination;
    }
    return $result;
  }
  QueryAllProtectKeyResponse._() : super();
  factory QueryAllProtectKeyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAllProtectKeyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryAllProtectKeyResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..pc<$4.ProtectKey>(1, _omitFieldNames ? '' : 'protectKey', $pb.PbFieldType.PM, protoName: 'protectKey', subBuilder: $4.ProtectKey.create)
    ..aOM<$26.PageResponse>(2, _omitFieldNames ? '' : 'pagination', subBuilder: $26.PageResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAllProtectKeyResponse clone() => QueryAllProtectKeyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAllProtectKeyResponse copyWith(void Function(QueryAllProtectKeyResponse) updates) => super.copyWith((message) => updates(message as QueryAllProtectKeyResponse)) as QueryAllProtectKeyResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryAllProtectKeyResponse create() => QueryAllProtectKeyResponse._();
  QueryAllProtectKeyResponse createEmptyInstance() => create();
  static $pb.PbList<QueryAllProtectKeyResponse> createRepeated() => $pb.PbList<QueryAllProtectKeyResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryAllProtectKeyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAllProtectKeyResponse>(create);
  static QueryAllProtectKeyResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$4.ProtectKey> get protectKey => $_getList(0);

  @$pb.TagNumber(2)
  $26.PageResponse get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($26.PageResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $26.PageResponse ensurePagination() => $_ensure(1);
}

class QueryGetRecoverKeyRequest extends $pb.GeneratedMessage {
  factory QueryGetRecoverKeyRequest({
    $core.String? walletID,
  }) {
    final $result = create();
    if (walletID != null) {
      $result.walletID = walletID;
    }
    return $result;
  }
  QueryGetRecoverKeyRequest._() : super();
  factory QueryGetRecoverKeyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetRecoverKeyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryGetRecoverKeyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'walletID', protoName: 'walletID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetRecoverKeyRequest clone() => QueryGetRecoverKeyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetRecoverKeyRequest copyWith(void Function(QueryGetRecoverKeyRequest) updates) => super.copyWith((message) => updates(message as QueryGetRecoverKeyRequest)) as QueryGetRecoverKeyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryGetRecoverKeyRequest create() => QueryGetRecoverKeyRequest._();
  QueryGetRecoverKeyRequest createEmptyInstance() => create();
  static $pb.PbList<QueryGetRecoverKeyRequest> createRepeated() => $pb.PbList<QueryGetRecoverKeyRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryGetRecoverKeyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetRecoverKeyRequest>(create);
  static QueryGetRecoverKeyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get walletID => $_getSZ(0);
  @$pb.TagNumber(1)
  set walletID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWalletID() => $_has(0);
  @$pb.TagNumber(1)
  void clearWalletID() => clearField(1);
}

class QueryGetRecoverKeyResponse extends $pb.GeneratedMessage {
  factory QueryGetRecoverKeyResponse({
    $5.RecoverKey? recoverKey,
  }) {
    final $result = create();
    if (recoverKey != null) {
      $result.recoverKey = recoverKey;
    }
    return $result;
  }
  QueryGetRecoverKeyResponse._() : super();
  factory QueryGetRecoverKeyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetRecoverKeyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryGetRecoverKeyResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOM<$5.RecoverKey>(1, _omitFieldNames ? '' : 'recoverKey', protoName: 'recoverKey', subBuilder: $5.RecoverKey.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetRecoverKeyResponse clone() => QueryGetRecoverKeyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetRecoverKeyResponse copyWith(void Function(QueryGetRecoverKeyResponse) updates) => super.copyWith((message) => updates(message as QueryGetRecoverKeyResponse)) as QueryGetRecoverKeyResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryGetRecoverKeyResponse create() => QueryGetRecoverKeyResponse._();
  QueryGetRecoverKeyResponse createEmptyInstance() => create();
  static $pb.PbList<QueryGetRecoverKeyResponse> createRepeated() => $pb.PbList<QueryGetRecoverKeyResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryGetRecoverKeyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetRecoverKeyResponse>(create);
  static QueryGetRecoverKeyResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $5.RecoverKey get recoverKey => $_getN(0);
  @$pb.TagNumber(1)
  set recoverKey($5.RecoverKey v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRecoverKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearRecoverKey() => clearField(1);
  @$pb.TagNumber(1)
  $5.RecoverKey ensureRecoverKey() => $_ensure(0);
}

class QueryAllRecoverKeyRequest extends $pb.GeneratedMessage {
  factory QueryAllRecoverKeyRequest({
    $26.PageRequest? pagination,
    $core.String? credentialID,
  }) {
    final $result = create();
    if (pagination != null) {
      $result.pagination = pagination;
    }
    if (credentialID != null) {
      $result.credentialID = credentialID;
    }
    return $result;
  }
  QueryAllRecoverKeyRequest._() : super();
  factory QueryAllRecoverKeyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAllRecoverKeyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryAllRecoverKeyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOM<$26.PageRequest>(1, _omitFieldNames ? '' : 'pagination', subBuilder: $26.PageRequest.create)
    ..aOS(2, _omitFieldNames ? '' : 'credentialID', protoName: 'credentialID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAllRecoverKeyRequest clone() => QueryAllRecoverKeyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAllRecoverKeyRequest copyWith(void Function(QueryAllRecoverKeyRequest) updates) => super.copyWith((message) => updates(message as QueryAllRecoverKeyRequest)) as QueryAllRecoverKeyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryAllRecoverKeyRequest create() => QueryAllRecoverKeyRequest._();
  QueryAllRecoverKeyRequest createEmptyInstance() => create();
  static $pb.PbList<QueryAllRecoverKeyRequest> createRepeated() => $pb.PbList<QueryAllRecoverKeyRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryAllRecoverKeyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAllRecoverKeyRequest>(create);
  static QueryAllRecoverKeyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $26.PageRequest get pagination => $_getN(0);
  @$pb.TagNumber(1)
  set pagination($26.PageRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPagination() => $_has(0);
  @$pb.TagNumber(1)
  void clearPagination() => clearField(1);
  @$pb.TagNumber(1)
  $26.PageRequest ensurePagination() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get credentialID => $_getSZ(1);
  @$pb.TagNumber(2)
  set credentialID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCredentialID() => $_has(1);
  @$pb.TagNumber(2)
  void clearCredentialID() => clearField(2);
}

class QueryAllRecoverKeyResponse extends $pb.GeneratedMessage {
  factory QueryAllRecoverKeyResponse({
    $core.Iterable<$5.RecoverKey>? recoverKey,
    $26.PageResponse? pagination,
  }) {
    final $result = create();
    if (recoverKey != null) {
      $result.recoverKey.addAll(recoverKey);
    }
    if (pagination != null) {
      $result.pagination = pagination;
    }
    return $result;
  }
  QueryAllRecoverKeyResponse._() : super();
  factory QueryAllRecoverKeyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAllRecoverKeyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryAllRecoverKeyResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..pc<$5.RecoverKey>(1, _omitFieldNames ? '' : 'recoverKey', $pb.PbFieldType.PM, protoName: 'recoverKey', subBuilder: $5.RecoverKey.create)
    ..aOM<$26.PageResponse>(2, _omitFieldNames ? '' : 'pagination', subBuilder: $26.PageResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAllRecoverKeyResponse clone() => QueryAllRecoverKeyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAllRecoverKeyResponse copyWith(void Function(QueryAllRecoverKeyResponse) updates) => super.copyWith((message) => updates(message as QueryAllRecoverKeyResponse)) as QueryAllRecoverKeyResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryAllRecoverKeyResponse create() => QueryAllRecoverKeyResponse._();
  QueryAllRecoverKeyResponse createEmptyInstance() => create();
  static $pb.PbList<QueryAllRecoverKeyResponse> createRepeated() => $pb.PbList<QueryAllRecoverKeyResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryAllRecoverKeyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAllRecoverKeyResponse>(create);
  static QueryAllRecoverKeyResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$5.RecoverKey> get recoverKey => $_getList(0);

  @$pb.TagNumber(2)
  $26.PageResponse get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($26.PageResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $26.PageResponse ensurePagination() => $_ensure(1);
}

class QueryTreasuryRequest extends $pb.GeneratedMessage {
  factory QueryTreasuryRequest() => create();
  QueryTreasuryRequest._() : super();
  factory QueryTreasuryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryTreasuryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryTreasuryRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryTreasuryRequest clone() => QueryTreasuryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryTreasuryRequest copyWith(void Function(QueryTreasuryRequest) updates) => super.copyWith((message) => updates(message as QueryTreasuryRequest)) as QueryTreasuryRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryTreasuryRequest create() => QueryTreasuryRequest._();
  QueryTreasuryRequest createEmptyInstance() => create();
  static $pb.PbList<QueryTreasuryRequest> createRepeated() => $pb.PbList<QueryTreasuryRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryTreasuryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryTreasuryRequest>(create);
  static QueryTreasuryRequest? _defaultInstance;
}

class QueryTreasuryResponse extends $pb.GeneratedMessage {
  factory QueryTreasuryResponse({
    $14.Coin? totalBalance,
    $14.Coin? encryptedBalance,
  }) {
    final $result = create();
    if (totalBalance != null) {
      $result.totalBalance = totalBalance;
    }
    if (encryptedBalance != null) {
      $result.encryptedBalance = encryptedBalance;
    }
    return $result;
  }
  QueryTreasuryResponse._() : super();
  factory QueryTreasuryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryTreasuryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryTreasuryResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOM<$14.Coin>(1, _omitFieldNames ? '' : 'totalBalance', protoName: 'totalBalance', subBuilder: $14.Coin.create)
    ..aOM<$14.Coin>(2, _omitFieldNames ? '' : 'encryptedBalance', protoName: 'encryptedBalance', subBuilder: $14.Coin.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryTreasuryResponse clone() => QueryTreasuryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryTreasuryResponse copyWith(void Function(QueryTreasuryResponse) updates) => super.copyWith((message) => updates(message as QueryTreasuryResponse)) as QueryTreasuryResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryTreasuryResponse create() => QueryTreasuryResponse._();
  QueryTreasuryResponse createEmptyInstance() => create();
  static $pb.PbList<QueryTreasuryResponse> createRepeated() => $pb.PbList<QueryTreasuryResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryTreasuryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryTreasuryResponse>(create);
  static QueryTreasuryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $14.Coin get totalBalance => $_getN(0);
  @$pb.TagNumber(1)
  set totalBalance($14.Coin v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTotalBalance() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotalBalance() => clearField(1);
  @$pb.TagNumber(1)
  $14.Coin ensureTotalBalance() => $_ensure(0);

  @$pb.TagNumber(2)
  $14.Coin get encryptedBalance => $_getN(1);
  @$pb.TagNumber(2)
  set encryptedBalance($14.Coin v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEncryptedBalance() => $_has(1);
  @$pb.TagNumber(2)
  void clearEncryptedBalance() => clearField(2);
  @$pb.TagNumber(2)
  $14.Coin ensureEncryptedBalance() => $_ensure(1);
}

class QueryAccountRequest extends $pb.GeneratedMessage {
  factory QueryAccountRequest({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  QueryAccountRequest._() : super();
  factory QueryAccountRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAccountRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryAccountRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAccountRequest clone() => QueryAccountRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAccountRequest copyWith(void Function(QueryAccountRequest) updates) => super.copyWith((message) => updates(message as QueryAccountRequest)) as QueryAccountRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryAccountRequest create() => QueryAccountRequest._();
  QueryAccountRequest createEmptyInstance() => create();
  static $pb.PbList<QueryAccountRequest> createRepeated() => $pb.PbList<QueryAccountRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryAccountRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAccountRequest>(create);
  static QueryAccountRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class QueryAccountResponse extends $pb.GeneratedMessage {
  factory QueryAccountResponse({
    $core.String? transparentBalance,
    $core.String? encryptedBalance,
  }) {
    final $result = create();
    if (transparentBalance != null) {
      $result.transparentBalance = transparentBalance;
    }
    if (encryptedBalance != null) {
      $result.encryptedBalance = encryptedBalance;
    }
    return $result;
  }
  QueryAccountResponse._() : super();
  factory QueryAccountResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAccountResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryAccountResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'transparentBalance', protoName: 'transparentBalance')
    ..aOS(2, _omitFieldNames ? '' : 'encryptedBalance', protoName: 'encryptedBalance')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAccountResponse clone() => QueryAccountResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAccountResponse copyWith(void Function(QueryAccountResponse) updates) => super.copyWith((message) => updates(message as QueryAccountResponse)) as QueryAccountResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryAccountResponse create() => QueryAccountResponse._();
  QueryAccountResponse createEmptyInstance() => create();
  static $pb.PbList<QueryAccountResponse> createRepeated() => $pb.PbList<QueryAccountResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryAccountResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAccountResponse>(create);
  static QueryAccountResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get transparentBalance => $_getSZ(0);
  @$pb.TagNumber(1)
  set transparentBalance($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTransparentBalance() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransparentBalance() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get encryptedBalance => $_getSZ(1);
  @$pb.TagNumber(2)
  set encryptedBalance($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEncryptedBalance() => $_has(1);
  @$pb.TagNumber(2)
  void clearEncryptedBalance() => clearField(2);
}

class QueryIncentivesRequest extends $pb.GeneratedMessage {
  factory QueryIncentivesRequest() => create();
  QueryIncentivesRequest._() : super();
  factory QueryIncentivesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryIncentivesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryIncentivesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryIncentivesRequest clone() => QueryIncentivesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryIncentivesRequest copyWith(void Function(QueryIncentivesRequest) updates) => super.copyWith((message) => updates(message as QueryIncentivesRequest)) as QueryIncentivesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryIncentivesRequest create() => QueryIncentivesRequest._();
  QueryIncentivesRequest createEmptyInstance() => create();
  static $pb.PbList<QueryIncentivesRequest> createRepeated() => $pb.PbList<QueryIncentivesRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryIncentivesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryIncentivesRequest>(create);
  static QueryIncentivesRequest? _defaultInstance;
}

class QueryIncentivesResponse extends $pb.GeneratedMessage {
  factory QueryIncentivesResponse({
    $14.Coin? createWalletIncentive,
    $14.Coin? createEphemeralWalletIncentive,
    $14.Coin? createWalletTransparentIncentive,
    $14.Coin? createEphemeralWalletTransparentIncentive,
  }) {
    final $result = create();
    if (createWalletIncentive != null) {
      $result.createWalletIncentive = createWalletIncentive;
    }
    if (createEphemeralWalletIncentive != null) {
      $result.createEphemeralWalletIncentive = createEphemeralWalletIncentive;
    }
    if (createWalletTransparentIncentive != null) {
      $result.createWalletTransparentIncentive = createWalletTransparentIncentive;
    }
    if (createEphemeralWalletTransparentIncentive != null) {
      $result.createEphemeralWalletTransparentIncentive = createEphemeralWalletTransparentIncentive;
    }
    return $result;
  }
  QueryIncentivesResponse._() : super();
  factory QueryIncentivesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryIncentivesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryIncentivesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOM<$14.Coin>(1, _omitFieldNames ? '' : 'createWalletIncentive', protoName: 'createWalletIncentive', subBuilder: $14.Coin.create)
    ..aOM<$14.Coin>(2, _omitFieldNames ? '' : 'createEphemeralWalletIncentive', protoName: 'createEphemeralWalletIncentive', subBuilder: $14.Coin.create)
    ..aOM<$14.Coin>(3, _omitFieldNames ? '' : 'createWalletTransparentIncentive', protoName: 'createWalletTransparentIncentive', subBuilder: $14.Coin.create)
    ..aOM<$14.Coin>(4, _omitFieldNames ? '' : 'createEphemeralWalletTransparentIncentive', protoName: 'createEphemeralWalletTransparentIncentive', subBuilder: $14.Coin.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryIncentivesResponse clone() => QueryIncentivesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryIncentivesResponse copyWith(void Function(QueryIncentivesResponse) updates) => super.copyWith((message) => updates(message as QueryIncentivesResponse)) as QueryIncentivesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryIncentivesResponse create() => QueryIncentivesResponse._();
  QueryIncentivesResponse createEmptyInstance() => create();
  static $pb.PbList<QueryIncentivesResponse> createRepeated() => $pb.PbList<QueryIncentivesResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryIncentivesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryIncentivesResponse>(create);
  static QueryIncentivesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $14.Coin get createWalletIncentive => $_getN(0);
  @$pb.TagNumber(1)
  set createWalletIncentive($14.Coin v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreateWalletIncentive() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreateWalletIncentive() => clearField(1);
  @$pb.TagNumber(1)
  $14.Coin ensureCreateWalletIncentive() => $_ensure(0);

  @$pb.TagNumber(2)
  $14.Coin get createEphemeralWalletIncentive => $_getN(1);
  @$pb.TagNumber(2)
  set createEphemeralWalletIncentive($14.Coin v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreateEphemeralWalletIncentive() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreateEphemeralWalletIncentive() => clearField(2);
  @$pb.TagNumber(2)
  $14.Coin ensureCreateEphemeralWalletIncentive() => $_ensure(1);

  @$pb.TagNumber(3)
  $14.Coin get createWalletTransparentIncentive => $_getN(2);
  @$pb.TagNumber(3)
  set createWalletTransparentIncentive($14.Coin v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCreateWalletTransparentIncentive() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreateWalletTransparentIncentive() => clearField(3);
  @$pb.TagNumber(3)
  $14.Coin ensureCreateWalletTransparentIncentive() => $_ensure(2);

  @$pb.TagNumber(4)
  $14.Coin get createEphemeralWalletTransparentIncentive => $_getN(3);
  @$pb.TagNumber(4)
  set createEphemeralWalletTransparentIncentive($14.Coin v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCreateEphemeralWalletTransparentIncentive() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreateEphemeralWalletTransparentIncentive() => clearField(4);
  @$pb.TagNumber(4)
  $14.Coin ensureCreateEphemeralWalletTransparentIncentive() => $_ensure(3);
}

class QuerySyncEnclaveRequest extends $pb.GeneratedMessage {
  factory QuerySyncEnclaveRequest({
    $core.String? remoteReport,
    $core.String? enclavePubK,
  }) {
    final $result = create();
    if (remoteReport != null) {
      $result.remoteReport = remoteReport;
    }
    if (enclavePubK != null) {
      $result.enclavePubK = enclavePubK;
    }
    return $result;
  }
  QuerySyncEnclaveRequest._() : super();
  factory QuerySyncEnclaveRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuerySyncEnclaveRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QuerySyncEnclaveRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'remoteReport', protoName: 'remoteReport')
    ..aOS(2, _omitFieldNames ? '' : 'enclavePubK', protoName: 'enclavePubK')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QuerySyncEnclaveRequest clone() => QuerySyncEnclaveRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QuerySyncEnclaveRequest copyWith(void Function(QuerySyncEnclaveRequest) updates) => super.copyWith((message) => updates(message as QuerySyncEnclaveRequest)) as QuerySyncEnclaveRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QuerySyncEnclaveRequest create() => QuerySyncEnclaveRequest._();
  QuerySyncEnclaveRequest createEmptyInstance() => create();
  static $pb.PbList<QuerySyncEnclaveRequest> createRepeated() => $pb.PbList<QuerySyncEnclaveRequest>();
  @$core.pragma('dart2js:noInline')
  static QuerySyncEnclaveRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QuerySyncEnclaveRequest>(create);
  static QuerySyncEnclaveRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get remoteReport => $_getSZ(0);
  @$pb.TagNumber(1)
  set remoteReport($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRemoteReport() => $_has(0);
  @$pb.TagNumber(1)
  void clearRemoteReport() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get enclavePubK => $_getSZ(1);
  @$pb.TagNumber(2)
  set enclavePubK($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEnclavePubK() => $_has(1);
  @$pb.TagNumber(2)
  void clearEnclavePubK() => clearField(2);
}

class QuerySyncEnclaveResponse extends $pb.GeneratedMessage {
  factory QuerySyncEnclaveResponse({
    $core.String? remoteReport,
    $core.List<$core.int>? encEnclaveParamsEnclavePubK,
  }) {
    final $result = create();
    if (remoteReport != null) {
      $result.remoteReport = remoteReport;
    }
    if (encEnclaveParamsEnclavePubK != null) {
      $result.encEnclaveParamsEnclavePubK = encEnclaveParamsEnclavePubK;
    }
    return $result;
  }
  QuerySyncEnclaveResponse._() : super();
  factory QuerySyncEnclaveResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuerySyncEnclaveResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QuerySyncEnclaveResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'remoteReport', protoName: 'remoteReport')
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'encEnclaveParamsEnclavePubK', $pb.PbFieldType.OY, protoName: 'encEnclaveParamsEnclavePubK')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QuerySyncEnclaveResponse clone() => QuerySyncEnclaveResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QuerySyncEnclaveResponse copyWith(void Function(QuerySyncEnclaveResponse) updates) => super.copyWith((message) => updates(message as QuerySyncEnclaveResponse)) as QuerySyncEnclaveResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QuerySyncEnclaveResponse create() => QuerySyncEnclaveResponse._();
  QuerySyncEnclaveResponse createEmptyInstance() => create();
  static $pb.PbList<QuerySyncEnclaveResponse> createRepeated() => $pb.PbList<QuerySyncEnclaveResponse>();
  @$core.pragma('dart2js:noInline')
  static QuerySyncEnclaveResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QuerySyncEnclaveResponse>(create);
  static QuerySyncEnclaveResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get remoteReport => $_getSZ(0);
  @$pb.TagNumber(1)
  set remoteReport($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRemoteReport() => $_has(0);
  @$pb.TagNumber(1)
  void clearRemoteReport() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get encEnclaveParamsEnclavePubK => $_getN(1);
  @$pb.TagNumber(2)
  set encEnclaveParamsEnclavePubK($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEncEnclaveParamsEnclavePubK() => $_has(1);
  @$pb.TagNumber(2)
  void clearEncEnclaveParamsEnclavePubK() => clearField(2);
}

class QueryEnclaveSecretShareRequest extends $pb.GeneratedMessage {
  factory QueryEnclaveSecretShareRequest({
    $core.String? remoteReport,
    $core.String? enclavePubK,
    $core.String? pubKID,
  }) {
    final $result = create();
    if (remoteReport != null) {
      $result.remoteReport = remoteReport;
    }
    if (enclavePubK != null) {
      $result.enclavePubK = enclavePubK;
    }
    if (pubKID != null) {
      $result.pubKID = pubKID;
    }
    return $result;
  }
  QueryEnclaveSecretShareRequest._() : super();
  factory QueryEnclaveSecretShareRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryEnclaveSecretShareRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryEnclaveSecretShareRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'remoteReport', protoName: 'remoteReport')
    ..aOS(2, _omitFieldNames ? '' : 'enclavePubK', protoName: 'enclavePubK')
    ..aOS(3, _omitFieldNames ? '' : 'pubKID', protoName: 'pubKID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryEnclaveSecretShareRequest clone() => QueryEnclaveSecretShareRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryEnclaveSecretShareRequest copyWith(void Function(QueryEnclaveSecretShareRequest) updates) => super.copyWith((message) => updates(message as QueryEnclaveSecretShareRequest)) as QueryEnclaveSecretShareRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryEnclaveSecretShareRequest create() => QueryEnclaveSecretShareRequest._();
  QueryEnclaveSecretShareRequest createEmptyInstance() => create();
  static $pb.PbList<QueryEnclaveSecretShareRequest> createRepeated() => $pb.PbList<QueryEnclaveSecretShareRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryEnclaveSecretShareRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryEnclaveSecretShareRequest>(create);
  static QueryEnclaveSecretShareRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get remoteReport => $_getSZ(0);
  @$pb.TagNumber(1)
  set remoteReport($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRemoteReport() => $_has(0);
  @$pb.TagNumber(1)
  void clearRemoteReport() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get enclavePubK => $_getSZ(1);
  @$pb.TagNumber(2)
  set enclavePubK($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEnclavePubK() => $_has(1);
  @$pb.TagNumber(2)
  void clearEnclavePubK() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get pubKID => $_getSZ(2);
  @$pb.TagNumber(3)
  set pubKID($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPubKID() => $_has(2);
  @$pb.TagNumber(3)
  void clearPubKID() => clearField(3);
}

class QueryEnclaveSecretShareResponse extends $pb.GeneratedMessage {
  factory QueryEnclaveSecretShareResponse({
    $core.String? remoteReport,
    $core.List<$core.int>? encSecretShareEnclavePubK,
  }) {
    final $result = create();
    if (remoteReport != null) {
      $result.remoteReport = remoteReport;
    }
    if (encSecretShareEnclavePubK != null) {
      $result.encSecretShareEnclavePubK = encSecretShareEnclavePubK;
    }
    return $result;
  }
  QueryEnclaveSecretShareResponse._() : super();
  factory QueryEnclaveSecretShareResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryEnclaveSecretShareResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryEnclaveSecretShareResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'remoteReport', protoName: 'remoteReport')
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'encSecretShareEnclavePubK', $pb.PbFieldType.OY, protoName: 'encSecretShareEnclavePubK')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryEnclaveSecretShareResponse clone() => QueryEnclaveSecretShareResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryEnclaveSecretShareResponse copyWith(void Function(QueryEnclaveSecretShareResponse) updates) => super.copyWith((message) => updates(message as QueryEnclaveSecretShareResponse)) as QueryEnclaveSecretShareResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryEnclaveSecretShareResponse create() => QueryEnclaveSecretShareResponse._();
  QueryEnclaveSecretShareResponse createEmptyInstance() => create();
  static $pb.PbList<QueryEnclaveSecretShareResponse> createRepeated() => $pb.PbList<QueryEnclaveSecretShareResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryEnclaveSecretShareResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryEnclaveSecretShareResponse>(create);
  static QueryEnclaveSecretShareResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get remoteReport => $_getSZ(0);
  @$pb.TagNumber(1)
  set remoteReport($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRemoteReport() => $_has(0);
  @$pb.TagNumber(1)
  void clearRemoteReport() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get encSecretShareEnclavePubK => $_getN(1);
  @$pb.TagNumber(2)
  set encSecretShareEnclavePubK($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEncSecretShareEnclavePubK() => $_has(1);
  @$pb.TagNumber(2)
  void clearEncSecretShareEnclavePubK() => clearField(2);
}

class QueryEnclaveRecoverKeyShareRequest extends $pb.GeneratedMessage {
  factory QueryEnclaveRecoverKeyShareRequest({
    $core.String? remoteReport,
    $core.String? newWalletID,
    $core.String? shareWalletID,
    $core.List<$core.int>? encShareWalletPubK,
  }) {
    final $result = create();
    if (remoteReport != null) {
      $result.remoteReport = remoteReport;
    }
    if (newWalletID != null) {
      $result.newWalletID = newWalletID;
    }
    if (shareWalletID != null) {
      $result.shareWalletID = shareWalletID;
    }
    if (encShareWalletPubK != null) {
      $result.encShareWalletPubK = encShareWalletPubK;
    }
    return $result;
  }
  QueryEnclaveRecoverKeyShareRequest._() : super();
  factory QueryEnclaveRecoverKeyShareRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryEnclaveRecoverKeyShareRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryEnclaveRecoverKeyShareRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'remoteReport', protoName: 'remoteReport')
    ..aOS(2, _omitFieldNames ? '' : 'newWalletID', protoName: 'newWalletID')
    ..aOS(3, _omitFieldNames ? '' : 'shareWalletID', protoName: 'shareWalletID')
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'encShareWalletPubK', $pb.PbFieldType.OY, protoName: 'encShareWalletPubK')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryEnclaveRecoverKeyShareRequest clone() => QueryEnclaveRecoverKeyShareRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryEnclaveRecoverKeyShareRequest copyWith(void Function(QueryEnclaveRecoverKeyShareRequest) updates) => super.copyWith((message) => updates(message as QueryEnclaveRecoverKeyShareRequest)) as QueryEnclaveRecoverKeyShareRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryEnclaveRecoverKeyShareRequest create() => QueryEnclaveRecoverKeyShareRequest._();
  QueryEnclaveRecoverKeyShareRequest createEmptyInstance() => create();
  static $pb.PbList<QueryEnclaveRecoverKeyShareRequest> createRepeated() => $pb.PbList<QueryEnclaveRecoverKeyShareRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryEnclaveRecoverKeyShareRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryEnclaveRecoverKeyShareRequest>(create);
  static QueryEnclaveRecoverKeyShareRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get remoteReport => $_getSZ(0);
  @$pb.TagNumber(1)
  set remoteReport($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRemoteReport() => $_has(0);
  @$pb.TagNumber(1)
  void clearRemoteReport() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get newWalletID => $_getSZ(1);
  @$pb.TagNumber(2)
  set newWalletID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNewWalletID() => $_has(1);
  @$pb.TagNumber(2)
  void clearNewWalletID() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get shareWalletID => $_getSZ(2);
  @$pb.TagNumber(3)
  set shareWalletID($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasShareWalletID() => $_has(2);
  @$pb.TagNumber(3)
  void clearShareWalletID() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get encShareWalletPubK => $_getN(3);
  @$pb.TagNumber(4)
  set encShareWalletPubK($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEncShareWalletPubK() => $_has(3);
  @$pb.TagNumber(4)
  void clearEncShareWalletPubK() => clearField(4);
}

class QueryEnclaveRecoverKeyShareResponse extends $pb.GeneratedMessage {
  factory QueryEnclaveRecoverKeyShareResponse({
    $core.String? remoteReport,
    $core.List<$core.int>? encShareWalletPubK,
  }) {
    final $result = create();
    if (remoteReport != null) {
      $result.remoteReport = remoteReport;
    }
    if (encShareWalletPubK != null) {
      $result.encShareWalletPubK = encShareWalletPubK;
    }
    return $result;
  }
  QueryEnclaveRecoverKeyShareResponse._() : super();
  factory QueryEnclaveRecoverKeyShareResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryEnclaveRecoverKeyShareResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryEnclaveRecoverKeyShareResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'remoteReport', protoName: 'remoteReport')
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'encShareWalletPubK', $pb.PbFieldType.OY, protoName: 'encShareWalletPubK')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryEnclaveRecoverKeyShareResponse clone() => QueryEnclaveRecoverKeyShareResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryEnclaveRecoverKeyShareResponse copyWith(void Function(QueryEnclaveRecoverKeyShareResponse) updates) => super.copyWith((message) => updates(message as QueryEnclaveRecoverKeyShareResponse)) as QueryEnclaveRecoverKeyShareResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryEnclaveRecoverKeyShareResponse create() => QueryEnclaveRecoverKeyShareResponse._();
  QueryEnclaveRecoverKeyShareResponse createEmptyInstance() => create();
  static $pb.PbList<QueryEnclaveRecoverKeyShareResponse> createRepeated() => $pb.PbList<QueryEnclaveRecoverKeyShareResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryEnclaveRecoverKeyShareResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryEnclaveRecoverKeyShareResponse>(create);
  static QueryEnclaveRecoverKeyShareResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get remoteReport => $_getSZ(0);
  @$pb.TagNumber(1)
  set remoteReport($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRemoteReport() => $_has(0);
  @$pb.TagNumber(1)
  void clearRemoteReport() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get encShareWalletPubK => $_getN(1);
  @$pb.TagNumber(2)
  set encShareWalletPubK($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEncShareWalletPubK() => $_has(1);
  @$pb.TagNumber(2)
  void clearEncShareWalletPubK() => clearField(2);
}

class QueryFindCredentialRequest extends $pb.GeneratedMessage {
  factory QueryFindCredentialRequest({
    $core.List<$core.int>? credentialPC,
    $core.String? credentialType,
    $core.String? sSIntervalPubKID,
    $core.List<$core.int>? encUserCredentialPubKSSIntervalPubK,
    $core.List<$core.int>? encProofPCSSIntervalPubK,
    $core.List<$core.int>? encCheckPCSSIntervalPubK,
  }) {
    final $result = create();
    if (credentialPC != null) {
      $result.credentialPC = credentialPC;
    }
    if (credentialType != null) {
      $result.credentialType = credentialType;
    }
    if (sSIntervalPubKID != null) {
      $result.sSIntervalPubKID = sSIntervalPubKID;
    }
    if (encUserCredentialPubKSSIntervalPubK != null) {
      $result.encUserCredentialPubKSSIntervalPubK = encUserCredentialPubKSSIntervalPubK;
    }
    if (encProofPCSSIntervalPubK != null) {
      $result.encProofPCSSIntervalPubK = encProofPCSSIntervalPubK;
    }
    if (encCheckPCSSIntervalPubK != null) {
      $result.encCheckPCSSIntervalPubK = encCheckPCSSIntervalPubK;
    }
    return $result;
  }
  QueryFindCredentialRequest._() : super();
  factory QueryFindCredentialRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryFindCredentialRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryFindCredentialRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'credentialPC', $pb.PbFieldType.OY, protoName: 'credentialPC')
    ..aOS(2, _omitFieldNames ? '' : 'credentialType', protoName: 'credentialType')
    ..aOS(3, _omitFieldNames ? '' : 'sSIntervalPubKID', protoName: 'sSIntervalPubKID')
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'encUserCredentialPubKSSIntervalPubK', $pb.PbFieldType.OY, protoName: 'encUserCredentialPubKSSIntervalPubK')
    ..a<$core.List<$core.int>>(5, _omitFieldNames ? '' : 'encProofPCSSIntervalPubK', $pb.PbFieldType.OY, protoName: 'encProofPCSSIntervalPubK')
    ..a<$core.List<$core.int>>(6, _omitFieldNames ? '' : 'encCheckPCSSIntervalPubK', $pb.PbFieldType.OY, protoName: 'encCheckPCSSIntervalPubK')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryFindCredentialRequest clone() => QueryFindCredentialRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryFindCredentialRequest copyWith(void Function(QueryFindCredentialRequest) updates) => super.copyWith((message) => updates(message as QueryFindCredentialRequest)) as QueryFindCredentialRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryFindCredentialRequest create() => QueryFindCredentialRequest._();
  QueryFindCredentialRequest createEmptyInstance() => create();
  static $pb.PbList<QueryFindCredentialRequest> createRepeated() => $pb.PbList<QueryFindCredentialRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryFindCredentialRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryFindCredentialRequest>(create);
  static QueryFindCredentialRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get credentialPC => $_getN(0);
  @$pb.TagNumber(1)
  set credentialPC($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCredentialPC() => $_has(0);
  @$pb.TagNumber(1)
  void clearCredentialPC() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get credentialType => $_getSZ(1);
  @$pb.TagNumber(2)
  set credentialType($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCredentialType() => $_has(1);
  @$pb.TagNumber(2)
  void clearCredentialType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get sSIntervalPubKID => $_getSZ(2);
  @$pb.TagNumber(3)
  set sSIntervalPubKID($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSSIntervalPubKID() => $_has(2);
  @$pb.TagNumber(3)
  void clearSSIntervalPubKID() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get encUserCredentialPubKSSIntervalPubK => $_getN(3);
  @$pb.TagNumber(4)
  set encUserCredentialPubKSSIntervalPubK($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEncUserCredentialPubKSSIntervalPubK() => $_has(3);
  @$pb.TagNumber(4)
  void clearEncUserCredentialPubKSSIntervalPubK() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get encProofPCSSIntervalPubK => $_getN(4);
  @$pb.TagNumber(5)
  set encProofPCSSIntervalPubK($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEncProofPCSSIntervalPubK() => $_has(4);
  @$pb.TagNumber(5)
  void clearEncProofPCSSIntervalPubK() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get encCheckPCSSIntervalPubK => $_getN(5);
  @$pb.TagNumber(6)
  set encCheckPCSSIntervalPubK($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasEncCheckPCSSIntervalPubK() => $_has(5);
  @$pb.TagNumber(6)
  void clearEncCheckPCSSIntervalPubK() => clearField(6);
}

class QueryFindCredentialResponse extends $pb.GeneratedMessage {
  factory QueryFindCredentialResponse({
    $core.List<$core.int>? encPersonalInfoUserCredentialPubK,
    $core.List<$core.int>? encCredentialIDUserCredentialPubK,
  }) {
    final $result = create();
    if (encPersonalInfoUserCredentialPubK != null) {
      $result.encPersonalInfoUserCredentialPubK = encPersonalInfoUserCredentialPubK;
    }
    if (encCredentialIDUserCredentialPubK != null) {
      $result.encCredentialIDUserCredentialPubK = encCredentialIDUserCredentialPubK;
    }
    return $result;
  }
  QueryFindCredentialResponse._() : super();
  factory QueryFindCredentialResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryFindCredentialResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryFindCredentialResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'encPersonalInfoUserCredentialPubK', $pb.PbFieldType.OY, protoName: 'encPersonalInfoUserCredentialPubK')
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'encCredentialIDUserCredentialPubK', $pb.PbFieldType.OY, protoName: 'encCredentialIDUserCredentialPubK')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryFindCredentialResponse clone() => QueryFindCredentialResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryFindCredentialResponse copyWith(void Function(QueryFindCredentialResponse) updates) => super.copyWith((message) => updates(message as QueryFindCredentialResponse)) as QueryFindCredentialResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryFindCredentialResponse create() => QueryFindCredentialResponse._();
  QueryFindCredentialResponse createEmptyInstance() => create();
  static $pb.PbList<QueryFindCredentialResponse> createRepeated() => $pb.PbList<QueryFindCredentialResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryFindCredentialResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryFindCredentialResponse>(create);
  static QueryFindCredentialResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get encPersonalInfoUserCredentialPubK => $_getN(0);
  @$pb.TagNumber(1)
  set encPersonalInfoUserCredentialPubK($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEncPersonalInfoUserCredentialPubK() => $_has(0);
  @$pb.TagNumber(1)
  void clearEncPersonalInfoUserCredentialPubK() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get encCredentialIDUserCredentialPubK => $_getN(1);
  @$pb.TagNumber(2)
  set encCredentialIDUserCredentialPubK($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEncCredentialIDUserCredentialPubK() => $_has(1);
  @$pb.TagNumber(2)
  void clearEncCredentialIDUserCredentialPubK() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
