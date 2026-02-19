//
//  Generated code. Do not modify.
//  source: cosmos/counter/v1/query.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

/// QueryGetCountRequest defines the request type for querying x/mock count.
class QueryGetCountRequest extends $pb.GeneratedMessage {
  factory QueryGetCountRequest() => create();
  QueryGetCountRequest._() : super();
  factory QueryGetCountRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetCountRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryGetCountRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.counter.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetCountRequest clone() => QueryGetCountRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetCountRequest copyWith(void Function(QueryGetCountRequest) updates) => super.copyWith((message) => updates(message as QueryGetCountRequest)) as QueryGetCountRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryGetCountRequest create() => QueryGetCountRequest._();
  QueryGetCountRequest createEmptyInstance() => create();
  static $pb.PbList<QueryGetCountRequest> createRepeated() => $pb.PbList<QueryGetCountRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryGetCountRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetCountRequest>(create);
  static QueryGetCountRequest? _defaultInstance;
}

/// QueryGetCountResponse defines the response type for querying x/mock count.
class QueryGetCountResponse extends $pb.GeneratedMessage {
  factory QueryGetCountResponse({
    $fixnum.Int64? totalCount,
  }) {
    final $result = create();
    if (totalCount != null) {
      $result.totalCount = totalCount;
    }
    return $result;
  }
  QueryGetCountResponse._() : super();
  factory QueryGetCountResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetCountResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryGetCountResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.counter.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'totalCount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetCountResponse clone() => QueryGetCountResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetCountResponse copyWith(void Function(QueryGetCountResponse) updates) => super.copyWith((message) => updates(message as QueryGetCountResponse)) as QueryGetCountResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryGetCountResponse create() => QueryGetCountResponse._();
  QueryGetCountResponse createEmptyInstance() => create();
  static $pb.PbList<QueryGetCountResponse> createRepeated() => $pb.PbList<QueryGetCountResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryGetCountResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetCountResponse>(create);
  static QueryGetCountResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get totalCount => $_getI64(0);
  @$pb.TagNumber(1)
  set totalCount($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTotalCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotalCount() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
