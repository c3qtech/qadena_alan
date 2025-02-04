//
//  Generated code. Do not modify.
//  source: qadena/dsvs/query.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../cosmos/base/query/v1beta1/pagination.pb.dart' as $12;
import 'authorized_signatory.pb.dart' as $14;
import 'document.pb.dart' as $13;
import 'document_hash.pb.dart' as $11;
import 'params.pb.dart' as $7;

/// QueryParamsRequest is request type for the Query/Params RPC method.
class QueryParamsRequest extends $pb.GeneratedMessage {
  factory QueryParamsRequest() => create();
  QueryParamsRequest._() : super();
  factory QueryParamsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryParamsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryParamsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.dsvs'), createEmptyInstance: create)
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
    $7.Params? params,
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryParamsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.dsvs'), createEmptyInstance: create)
    ..aOM<$7.Params>(1, _omitFieldNames ? '' : 'params', subBuilder: $7.Params.create)
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
  $7.Params get params => $_getN(0);
  @$pb.TagNumber(1)
  set params($7.Params v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasParams() => $_has(0);
  @$pb.TagNumber(1)
  void clearParams() => clearField(1);
  @$pb.TagNumber(1)
  $7.Params ensureParams() => $_ensure(0);
}

class QueryGetDocumentHashRequest extends $pb.GeneratedMessage {
  factory QueryGetDocumentHashRequest({
    $core.List<$core.int>? hash,
  }) {
    final $result = create();
    if (hash != null) {
      $result.hash = hash;
    }
    return $result;
  }
  QueryGetDocumentHashRequest._() : super();
  factory QueryGetDocumentHashRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetDocumentHashRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryGetDocumentHashRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.dsvs'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'hash', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetDocumentHashRequest clone() => QueryGetDocumentHashRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetDocumentHashRequest copyWith(void Function(QueryGetDocumentHashRequest) updates) => super.copyWith((message) => updates(message as QueryGetDocumentHashRequest)) as QueryGetDocumentHashRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryGetDocumentHashRequest create() => QueryGetDocumentHashRequest._();
  QueryGetDocumentHashRequest createEmptyInstance() => create();
  static $pb.PbList<QueryGetDocumentHashRequest> createRepeated() => $pb.PbList<QueryGetDocumentHashRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryGetDocumentHashRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetDocumentHashRequest>(create);
  static QueryGetDocumentHashRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get hash => $_getN(0);
  @$pb.TagNumber(1)
  set hash($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearHash() => clearField(1);
}

class QueryGetDocumentHashResponse extends $pb.GeneratedMessage {
  factory QueryGetDocumentHashResponse({
    $11.DocumentHash? documentHash,
  }) {
    final $result = create();
    if (documentHash != null) {
      $result.documentHash = documentHash;
    }
    return $result;
  }
  QueryGetDocumentHashResponse._() : super();
  factory QueryGetDocumentHashResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetDocumentHashResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryGetDocumentHashResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.dsvs'), createEmptyInstance: create)
    ..aOM<$11.DocumentHash>(1, _omitFieldNames ? '' : 'documentHash', protoName: 'documentHash', subBuilder: $11.DocumentHash.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetDocumentHashResponse clone() => QueryGetDocumentHashResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetDocumentHashResponse copyWith(void Function(QueryGetDocumentHashResponse) updates) => super.copyWith((message) => updates(message as QueryGetDocumentHashResponse)) as QueryGetDocumentHashResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryGetDocumentHashResponse create() => QueryGetDocumentHashResponse._();
  QueryGetDocumentHashResponse createEmptyInstance() => create();
  static $pb.PbList<QueryGetDocumentHashResponse> createRepeated() => $pb.PbList<QueryGetDocumentHashResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryGetDocumentHashResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetDocumentHashResponse>(create);
  static QueryGetDocumentHashResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $11.DocumentHash get documentHash => $_getN(0);
  @$pb.TagNumber(1)
  set documentHash($11.DocumentHash v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDocumentHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearDocumentHash() => clearField(1);
  @$pb.TagNumber(1)
  $11.DocumentHash ensureDocumentHash() => $_ensure(0);
}

class QueryAllDocumentHashRequest extends $pb.GeneratedMessage {
  factory QueryAllDocumentHashRequest({
    $12.PageRequest? pagination,
  }) {
    final $result = create();
    if (pagination != null) {
      $result.pagination = pagination;
    }
    return $result;
  }
  QueryAllDocumentHashRequest._() : super();
  factory QueryAllDocumentHashRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAllDocumentHashRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryAllDocumentHashRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.dsvs'), createEmptyInstance: create)
    ..aOM<$12.PageRequest>(1, _omitFieldNames ? '' : 'pagination', subBuilder: $12.PageRequest.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAllDocumentHashRequest clone() => QueryAllDocumentHashRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAllDocumentHashRequest copyWith(void Function(QueryAllDocumentHashRequest) updates) => super.copyWith((message) => updates(message as QueryAllDocumentHashRequest)) as QueryAllDocumentHashRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryAllDocumentHashRequest create() => QueryAllDocumentHashRequest._();
  QueryAllDocumentHashRequest createEmptyInstance() => create();
  static $pb.PbList<QueryAllDocumentHashRequest> createRepeated() => $pb.PbList<QueryAllDocumentHashRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryAllDocumentHashRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAllDocumentHashRequest>(create);
  static QueryAllDocumentHashRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $12.PageRequest get pagination => $_getN(0);
  @$pb.TagNumber(1)
  set pagination($12.PageRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPagination() => $_has(0);
  @$pb.TagNumber(1)
  void clearPagination() => clearField(1);
  @$pb.TagNumber(1)
  $12.PageRequest ensurePagination() => $_ensure(0);
}

class QueryAllDocumentHashResponse extends $pb.GeneratedMessage {
  factory QueryAllDocumentHashResponse({
    $core.Iterable<$11.DocumentHash>? documentHash,
    $12.PageResponse? pagination,
  }) {
    final $result = create();
    if (documentHash != null) {
      $result.documentHash.addAll(documentHash);
    }
    if (pagination != null) {
      $result.pagination = pagination;
    }
    return $result;
  }
  QueryAllDocumentHashResponse._() : super();
  factory QueryAllDocumentHashResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAllDocumentHashResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryAllDocumentHashResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.dsvs'), createEmptyInstance: create)
    ..pc<$11.DocumentHash>(1, _omitFieldNames ? '' : 'documentHash', $pb.PbFieldType.PM, protoName: 'documentHash', subBuilder: $11.DocumentHash.create)
    ..aOM<$12.PageResponse>(2, _omitFieldNames ? '' : 'pagination', subBuilder: $12.PageResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAllDocumentHashResponse clone() => QueryAllDocumentHashResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAllDocumentHashResponse copyWith(void Function(QueryAllDocumentHashResponse) updates) => super.copyWith((message) => updates(message as QueryAllDocumentHashResponse)) as QueryAllDocumentHashResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryAllDocumentHashResponse create() => QueryAllDocumentHashResponse._();
  QueryAllDocumentHashResponse createEmptyInstance() => create();
  static $pb.PbList<QueryAllDocumentHashResponse> createRepeated() => $pb.PbList<QueryAllDocumentHashResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryAllDocumentHashResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAllDocumentHashResponse>(create);
  static QueryAllDocumentHashResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$11.DocumentHash> get documentHash => $_getList(0);

  @$pb.TagNumber(2)
  $12.PageResponse get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($12.PageResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $12.PageResponse ensurePagination() => $_ensure(1);
}

class QueryGetDocumentRequest extends $pb.GeneratedMessage {
  factory QueryGetDocumentRequest({
    $core.String? documentID,
  }) {
    final $result = create();
    if (documentID != null) {
      $result.documentID = documentID;
    }
    return $result;
  }
  QueryGetDocumentRequest._() : super();
  factory QueryGetDocumentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetDocumentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryGetDocumentRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.dsvs'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'documentID', protoName: 'documentID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetDocumentRequest clone() => QueryGetDocumentRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetDocumentRequest copyWith(void Function(QueryGetDocumentRequest) updates) => super.copyWith((message) => updates(message as QueryGetDocumentRequest)) as QueryGetDocumentRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryGetDocumentRequest create() => QueryGetDocumentRequest._();
  QueryGetDocumentRequest createEmptyInstance() => create();
  static $pb.PbList<QueryGetDocumentRequest> createRepeated() => $pb.PbList<QueryGetDocumentRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryGetDocumentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetDocumentRequest>(create);
  static QueryGetDocumentRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get documentID => $_getSZ(0);
  @$pb.TagNumber(1)
  set documentID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDocumentID() => $_has(0);
  @$pb.TagNumber(1)
  void clearDocumentID() => clearField(1);
}

class QueryGetDocumentResponse extends $pb.GeneratedMessage {
  factory QueryGetDocumentResponse({
    $13.Document? document,
  }) {
    final $result = create();
    if (document != null) {
      $result.document = document;
    }
    return $result;
  }
  QueryGetDocumentResponse._() : super();
  factory QueryGetDocumentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetDocumentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryGetDocumentResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.dsvs'), createEmptyInstance: create)
    ..aOM<$13.Document>(1, _omitFieldNames ? '' : 'document', subBuilder: $13.Document.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetDocumentResponse clone() => QueryGetDocumentResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetDocumentResponse copyWith(void Function(QueryGetDocumentResponse) updates) => super.copyWith((message) => updates(message as QueryGetDocumentResponse)) as QueryGetDocumentResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryGetDocumentResponse create() => QueryGetDocumentResponse._();
  QueryGetDocumentResponse createEmptyInstance() => create();
  static $pb.PbList<QueryGetDocumentResponse> createRepeated() => $pb.PbList<QueryGetDocumentResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryGetDocumentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetDocumentResponse>(create);
  static QueryGetDocumentResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $13.Document get document => $_getN(0);
  @$pb.TagNumber(1)
  set document($13.Document v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDocument() => $_has(0);
  @$pb.TagNumber(1)
  void clearDocument() => clearField(1);
  @$pb.TagNumber(1)
  $13.Document ensureDocument() => $_ensure(0);
}

class QueryAllDocumentRequest extends $pb.GeneratedMessage {
  factory QueryAllDocumentRequest({
    $12.PageRequest? pagination,
  }) {
    final $result = create();
    if (pagination != null) {
      $result.pagination = pagination;
    }
    return $result;
  }
  QueryAllDocumentRequest._() : super();
  factory QueryAllDocumentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAllDocumentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryAllDocumentRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.dsvs'), createEmptyInstance: create)
    ..aOM<$12.PageRequest>(1, _omitFieldNames ? '' : 'pagination', subBuilder: $12.PageRequest.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAllDocumentRequest clone() => QueryAllDocumentRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAllDocumentRequest copyWith(void Function(QueryAllDocumentRequest) updates) => super.copyWith((message) => updates(message as QueryAllDocumentRequest)) as QueryAllDocumentRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryAllDocumentRequest create() => QueryAllDocumentRequest._();
  QueryAllDocumentRequest createEmptyInstance() => create();
  static $pb.PbList<QueryAllDocumentRequest> createRepeated() => $pb.PbList<QueryAllDocumentRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryAllDocumentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAllDocumentRequest>(create);
  static QueryAllDocumentRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $12.PageRequest get pagination => $_getN(0);
  @$pb.TagNumber(1)
  set pagination($12.PageRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPagination() => $_has(0);
  @$pb.TagNumber(1)
  void clearPagination() => clearField(1);
  @$pb.TagNumber(1)
  $12.PageRequest ensurePagination() => $_ensure(0);
}

class QueryAllDocumentResponse extends $pb.GeneratedMessage {
  factory QueryAllDocumentResponse({
    $core.Iterable<$13.Document>? document,
    $12.PageResponse? pagination,
  }) {
    final $result = create();
    if (document != null) {
      $result.document.addAll(document);
    }
    if (pagination != null) {
      $result.pagination = pagination;
    }
    return $result;
  }
  QueryAllDocumentResponse._() : super();
  factory QueryAllDocumentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAllDocumentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryAllDocumentResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.dsvs'), createEmptyInstance: create)
    ..pc<$13.Document>(1, _omitFieldNames ? '' : 'document', $pb.PbFieldType.PM, subBuilder: $13.Document.create)
    ..aOM<$12.PageResponse>(2, _omitFieldNames ? '' : 'pagination', subBuilder: $12.PageResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAllDocumentResponse clone() => QueryAllDocumentResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAllDocumentResponse copyWith(void Function(QueryAllDocumentResponse) updates) => super.copyWith((message) => updates(message as QueryAllDocumentResponse)) as QueryAllDocumentResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryAllDocumentResponse create() => QueryAllDocumentResponse._();
  QueryAllDocumentResponse createEmptyInstance() => create();
  static $pb.PbList<QueryAllDocumentResponse> createRepeated() => $pb.PbList<QueryAllDocumentResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryAllDocumentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAllDocumentResponse>(create);
  static QueryAllDocumentResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$13.Document> get document => $_getList(0);

  @$pb.TagNumber(2)
  $12.PageResponse get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($12.PageResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $12.PageResponse ensurePagination() => $_ensure(1);
}

class QueryGetAuthorizedSignatoryRequest extends $pb.GeneratedMessage {
  factory QueryGetAuthorizedSignatoryRequest({
    $core.String? walletID,
  }) {
    final $result = create();
    if (walletID != null) {
      $result.walletID = walletID;
    }
    return $result;
  }
  QueryGetAuthorizedSignatoryRequest._() : super();
  factory QueryGetAuthorizedSignatoryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetAuthorizedSignatoryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryGetAuthorizedSignatoryRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.dsvs'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'walletID', protoName: 'walletID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetAuthorizedSignatoryRequest clone() => QueryGetAuthorizedSignatoryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetAuthorizedSignatoryRequest copyWith(void Function(QueryGetAuthorizedSignatoryRequest) updates) => super.copyWith((message) => updates(message as QueryGetAuthorizedSignatoryRequest)) as QueryGetAuthorizedSignatoryRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryGetAuthorizedSignatoryRequest create() => QueryGetAuthorizedSignatoryRequest._();
  QueryGetAuthorizedSignatoryRequest createEmptyInstance() => create();
  static $pb.PbList<QueryGetAuthorizedSignatoryRequest> createRepeated() => $pb.PbList<QueryGetAuthorizedSignatoryRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryGetAuthorizedSignatoryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetAuthorizedSignatoryRequest>(create);
  static QueryGetAuthorizedSignatoryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get walletID => $_getSZ(0);
  @$pb.TagNumber(1)
  set walletID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWalletID() => $_has(0);
  @$pb.TagNumber(1)
  void clearWalletID() => clearField(1);
}

class QueryGetAuthorizedSignatoryResponse extends $pb.GeneratedMessage {
  factory QueryGetAuthorizedSignatoryResponse({
    $14.AuthorizedSignatory? authorizedSignatory,
  }) {
    final $result = create();
    if (authorizedSignatory != null) {
      $result.authorizedSignatory = authorizedSignatory;
    }
    return $result;
  }
  QueryGetAuthorizedSignatoryResponse._() : super();
  factory QueryGetAuthorizedSignatoryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetAuthorizedSignatoryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryGetAuthorizedSignatoryResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.dsvs'), createEmptyInstance: create)
    ..aOM<$14.AuthorizedSignatory>(1, _omitFieldNames ? '' : 'authorizedSignatory', protoName: 'authorizedSignatory', subBuilder: $14.AuthorizedSignatory.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetAuthorizedSignatoryResponse clone() => QueryGetAuthorizedSignatoryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetAuthorizedSignatoryResponse copyWith(void Function(QueryGetAuthorizedSignatoryResponse) updates) => super.copyWith((message) => updates(message as QueryGetAuthorizedSignatoryResponse)) as QueryGetAuthorizedSignatoryResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryGetAuthorizedSignatoryResponse create() => QueryGetAuthorizedSignatoryResponse._();
  QueryGetAuthorizedSignatoryResponse createEmptyInstance() => create();
  static $pb.PbList<QueryGetAuthorizedSignatoryResponse> createRepeated() => $pb.PbList<QueryGetAuthorizedSignatoryResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryGetAuthorizedSignatoryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetAuthorizedSignatoryResponse>(create);
  static QueryGetAuthorizedSignatoryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $14.AuthorizedSignatory get authorizedSignatory => $_getN(0);
  @$pb.TagNumber(1)
  set authorizedSignatory($14.AuthorizedSignatory v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAuthorizedSignatory() => $_has(0);
  @$pb.TagNumber(1)
  void clearAuthorizedSignatory() => clearField(1);
  @$pb.TagNumber(1)
  $14.AuthorizedSignatory ensureAuthorizedSignatory() => $_ensure(0);
}

class QueryAllAuthorizedSignatoryRequest extends $pb.GeneratedMessage {
  factory QueryAllAuthorizedSignatoryRequest({
    $12.PageRequest? pagination,
  }) {
    final $result = create();
    if (pagination != null) {
      $result.pagination = pagination;
    }
    return $result;
  }
  QueryAllAuthorizedSignatoryRequest._() : super();
  factory QueryAllAuthorizedSignatoryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAllAuthorizedSignatoryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryAllAuthorizedSignatoryRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.dsvs'), createEmptyInstance: create)
    ..aOM<$12.PageRequest>(1, _omitFieldNames ? '' : 'pagination', subBuilder: $12.PageRequest.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAllAuthorizedSignatoryRequest clone() => QueryAllAuthorizedSignatoryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAllAuthorizedSignatoryRequest copyWith(void Function(QueryAllAuthorizedSignatoryRequest) updates) => super.copyWith((message) => updates(message as QueryAllAuthorizedSignatoryRequest)) as QueryAllAuthorizedSignatoryRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryAllAuthorizedSignatoryRequest create() => QueryAllAuthorizedSignatoryRequest._();
  QueryAllAuthorizedSignatoryRequest createEmptyInstance() => create();
  static $pb.PbList<QueryAllAuthorizedSignatoryRequest> createRepeated() => $pb.PbList<QueryAllAuthorizedSignatoryRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryAllAuthorizedSignatoryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAllAuthorizedSignatoryRequest>(create);
  static QueryAllAuthorizedSignatoryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $12.PageRequest get pagination => $_getN(0);
  @$pb.TagNumber(1)
  set pagination($12.PageRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPagination() => $_has(0);
  @$pb.TagNumber(1)
  void clearPagination() => clearField(1);
  @$pb.TagNumber(1)
  $12.PageRequest ensurePagination() => $_ensure(0);
}

class QueryAllAuthorizedSignatoryResponse extends $pb.GeneratedMessage {
  factory QueryAllAuthorizedSignatoryResponse({
    $core.Iterable<$14.AuthorizedSignatory>? authorizedSignatory,
    $12.PageResponse? pagination,
  }) {
    final $result = create();
    if (authorizedSignatory != null) {
      $result.authorizedSignatory.addAll(authorizedSignatory);
    }
    if (pagination != null) {
      $result.pagination = pagination;
    }
    return $result;
  }
  QueryAllAuthorizedSignatoryResponse._() : super();
  factory QueryAllAuthorizedSignatoryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAllAuthorizedSignatoryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryAllAuthorizedSignatoryResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.dsvs'), createEmptyInstance: create)
    ..pc<$14.AuthorizedSignatory>(1, _omitFieldNames ? '' : 'authorizedSignatory', $pb.PbFieldType.PM, protoName: 'authorizedSignatory', subBuilder: $14.AuthorizedSignatory.create)
    ..aOM<$12.PageResponse>(2, _omitFieldNames ? '' : 'pagination', subBuilder: $12.PageResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAllAuthorizedSignatoryResponse clone() => QueryAllAuthorizedSignatoryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAllAuthorizedSignatoryResponse copyWith(void Function(QueryAllAuthorizedSignatoryResponse) updates) => super.copyWith((message) => updates(message as QueryAllAuthorizedSignatoryResponse)) as QueryAllAuthorizedSignatoryResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryAllAuthorizedSignatoryResponse create() => QueryAllAuthorizedSignatoryResponse._();
  QueryAllAuthorizedSignatoryResponse createEmptyInstance() => create();
  static $pb.PbList<QueryAllAuthorizedSignatoryResponse> createRepeated() => $pb.PbList<QueryAllAuthorizedSignatoryResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryAllAuthorizedSignatoryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAllAuthorizedSignatoryResponse>(create);
  static QueryAllAuthorizedSignatoryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$14.AuthorizedSignatory> get authorizedSignatory => $_getList(0);

  @$pb.TagNumber(2)
  $12.PageResponse get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($12.PageResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $12.PageResponse ensurePagination() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
