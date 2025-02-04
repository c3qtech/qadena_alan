//
//  Generated code. Do not modify.
//  source: qadena/nameservice/query.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../cosmos/base/query/v1beta1/pagination.pb.dart' as $6;
import 'name_binding.pb.dart' as $5;
import 'params.pb.dart' as $3;

/// QueryParamsRequest is request type for the Query/Params RPC method.
class QueryParamsRequest extends $pb.GeneratedMessage {
  factory QueryParamsRequest() => create();
  QueryParamsRequest._() : super();
  factory QueryParamsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryParamsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryParamsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.nameservice'), createEmptyInstance: create)
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
    $3.Params? params,
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryParamsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.nameservice'), createEmptyInstance: create)
    ..aOM<$3.Params>(1, _omitFieldNames ? '' : 'params', subBuilder: $3.Params.create)
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
  $3.Params get params => $_getN(0);
  @$pb.TagNumber(1)
  set params($3.Params v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasParams() => $_has(0);
  @$pb.TagNumber(1)
  void clearParams() => clearField(1);
  @$pb.TagNumber(1)
  $3.Params ensureParams() => $_ensure(0);
}

class QueryGetNameBindingRequest extends $pb.GeneratedMessage {
  factory QueryGetNameBindingRequest({
    $core.String? credential,
    $core.String? credentialType,
  }) {
    final $result = create();
    if (credential != null) {
      $result.credential = credential;
    }
    if (credentialType != null) {
      $result.credentialType = credentialType;
    }
    return $result;
  }
  QueryGetNameBindingRequest._() : super();
  factory QueryGetNameBindingRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetNameBindingRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryGetNameBindingRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.nameservice'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'credential')
    ..aOS(2, _omitFieldNames ? '' : 'credentialType', protoName: 'credentialType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetNameBindingRequest clone() => QueryGetNameBindingRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetNameBindingRequest copyWith(void Function(QueryGetNameBindingRequest) updates) => super.copyWith((message) => updates(message as QueryGetNameBindingRequest)) as QueryGetNameBindingRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryGetNameBindingRequest create() => QueryGetNameBindingRequest._();
  QueryGetNameBindingRequest createEmptyInstance() => create();
  static $pb.PbList<QueryGetNameBindingRequest> createRepeated() => $pb.PbList<QueryGetNameBindingRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryGetNameBindingRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetNameBindingRequest>(create);
  static QueryGetNameBindingRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get credential => $_getSZ(0);
  @$pb.TagNumber(1)
  set credential($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCredential() => $_has(0);
  @$pb.TagNumber(1)
  void clearCredential() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get credentialType => $_getSZ(1);
  @$pb.TagNumber(2)
  set credentialType($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCredentialType() => $_has(1);
  @$pb.TagNumber(2)
  void clearCredentialType() => clearField(2);
}

class QueryGetNameBindingResponse extends $pb.GeneratedMessage {
  factory QueryGetNameBindingResponse({
    $5.NameBinding? nameBinding,
  }) {
    final $result = create();
    if (nameBinding != null) {
      $result.nameBinding = nameBinding;
    }
    return $result;
  }
  QueryGetNameBindingResponse._() : super();
  factory QueryGetNameBindingResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetNameBindingResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryGetNameBindingResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.nameservice'), createEmptyInstance: create)
    ..aOM<$5.NameBinding>(1, _omitFieldNames ? '' : 'nameBinding', protoName: 'nameBinding', subBuilder: $5.NameBinding.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetNameBindingResponse clone() => QueryGetNameBindingResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetNameBindingResponse copyWith(void Function(QueryGetNameBindingResponse) updates) => super.copyWith((message) => updates(message as QueryGetNameBindingResponse)) as QueryGetNameBindingResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryGetNameBindingResponse create() => QueryGetNameBindingResponse._();
  QueryGetNameBindingResponse createEmptyInstance() => create();
  static $pb.PbList<QueryGetNameBindingResponse> createRepeated() => $pb.PbList<QueryGetNameBindingResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryGetNameBindingResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetNameBindingResponse>(create);
  static QueryGetNameBindingResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $5.NameBinding get nameBinding => $_getN(0);
  @$pb.TagNumber(1)
  set nameBinding($5.NameBinding v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasNameBinding() => $_has(0);
  @$pb.TagNumber(1)
  void clearNameBinding() => clearField(1);
  @$pb.TagNumber(1)
  $5.NameBinding ensureNameBinding() => $_ensure(0);
}

class QueryAllNameBindingRequest extends $pb.GeneratedMessage {
  factory QueryAllNameBindingRequest({
    $6.PageRequest? pagination,
  }) {
    final $result = create();
    if (pagination != null) {
      $result.pagination = pagination;
    }
    return $result;
  }
  QueryAllNameBindingRequest._() : super();
  factory QueryAllNameBindingRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAllNameBindingRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryAllNameBindingRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.nameservice'), createEmptyInstance: create)
    ..aOM<$6.PageRequest>(1, _omitFieldNames ? '' : 'pagination', subBuilder: $6.PageRequest.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAllNameBindingRequest clone() => QueryAllNameBindingRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAllNameBindingRequest copyWith(void Function(QueryAllNameBindingRequest) updates) => super.copyWith((message) => updates(message as QueryAllNameBindingRequest)) as QueryAllNameBindingRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryAllNameBindingRequest create() => QueryAllNameBindingRequest._();
  QueryAllNameBindingRequest createEmptyInstance() => create();
  static $pb.PbList<QueryAllNameBindingRequest> createRepeated() => $pb.PbList<QueryAllNameBindingRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryAllNameBindingRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAllNameBindingRequest>(create);
  static QueryAllNameBindingRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $6.PageRequest get pagination => $_getN(0);
  @$pb.TagNumber(1)
  set pagination($6.PageRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPagination() => $_has(0);
  @$pb.TagNumber(1)
  void clearPagination() => clearField(1);
  @$pb.TagNumber(1)
  $6.PageRequest ensurePagination() => $_ensure(0);
}

class QueryAllNameBindingResponse extends $pb.GeneratedMessage {
  factory QueryAllNameBindingResponse({
    $core.Iterable<$5.NameBinding>? nameBinding,
    $6.PageResponse? pagination,
  }) {
    final $result = create();
    if (nameBinding != null) {
      $result.nameBinding.addAll(nameBinding);
    }
    if (pagination != null) {
      $result.pagination = pagination;
    }
    return $result;
  }
  QueryAllNameBindingResponse._() : super();
  factory QueryAllNameBindingResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAllNameBindingResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryAllNameBindingResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.nameservice'), createEmptyInstance: create)
    ..pc<$5.NameBinding>(1, _omitFieldNames ? '' : 'nameBinding', $pb.PbFieldType.PM, protoName: 'nameBinding', subBuilder: $5.NameBinding.create)
    ..aOM<$6.PageResponse>(2, _omitFieldNames ? '' : 'pagination', subBuilder: $6.PageResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAllNameBindingResponse clone() => QueryAllNameBindingResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAllNameBindingResponse copyWith(void Function(QueryAllNameBindingResponse) updates) => super.copyWith((message) => updates(message as QueryAllNameBindingResponse)) as QueryAllNameBindingResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryAllNameBindingResponse create() => QueryAllNameBindingResponse._();
  QueryAllNameBindingResponse createEmptyInstance() => create();
  static $pb.PbList<QueryAllNameBindingResponse> createRepeated() => $pb.PbList<QueryAllNameBindingResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryAllNameBindingResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAllNameBindingResponse>(create);
  static QueryAllNameBindingResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$5.NameBinding> get nameBinding => $_getList(0);

  @$pb.TagNumber(2)
  $6.PageResponse get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($6.PageResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $6.PageResponse ensurePagination() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
