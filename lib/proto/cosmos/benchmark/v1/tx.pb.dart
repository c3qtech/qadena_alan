//
//  Generated code. Do not modify.
//  source: cosmos/benchmark/v1/tx.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'benchmark.pb.dart' as $1;

/// MsgLoadTestOps defines a message containing a sequence of load test operations.
class MsgLoadTest extends $pb.GeneratedMessage {
  factory MsgLoadTest({
    $core.List<$core.int>? caller,
    $core.Iterable<$1.Op>? ops,
  }) {
    final $result = create();
    if (caller != null) {
      $result.caller = caller;
    }
    if (ops != null) {
      $result.ops.addAll(ops);
    }
    return $result;
  }
  MsgLoadTest._() : super();
  factory MsgLoadTest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgLoadTest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgLoadTest', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.benchmark.v1'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'caller', $pb.PbFieldType.OY)
    ..pc<$1.Op>(2, _omitFieldNames ? '' : 'ops', $pb.PbFieldType.PM, subBuilder: $1.Op.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgLoadTest clone() => MsgLoadTest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgLoadTest copyWith(void Function(MsgLoadTest) updates) => super.copyWith((message) => updates(message as MsgLoadTest)) as MsgLoadTest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgLoadTest create() => MsgLoadTest._();
  MsgLoadTest createEmptyInstance() => create();
  static $pb.PbList<MsgLoadTest> createRepeated() => $pb.PbList<MsgLoadTest>();
  @$core.pragma('dart2js:noInline')
  static MsgLoadTest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgLoadTest>(create);
  static MsgLoadTest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get caller => $_getN(0);
  @$pb.TagNumber(1)
  set caller($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCaller() => $_has(0);
  @$pb.TagNumber(1)
  void clearCaller() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$1.Op> get ops => $_getList(1);
}

/// MsgLoadTestResponse defines a message containing the results of a load test operation.
class MsgLoadTestResponse extends $pb.GeneratedMessage {
  factory MsgLoadTestResponse({
    $fixnum.Int64? totalTime,
    $fixnum.Int64? totalErrors,
  }) {
    final $result = create();
    if (totalTime != null) {
      $result.totalTime = totalTime;
    }
    if (totalErrors != null) {
      $result.totalErrors = totalErrors;
    }
    return $result;
  }
  MsgLoadTestResponse._() : super();
  factory MsgLoadTestResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgLoadTestResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgLoadTestResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.benchmark.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'totalTime', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'totalErrors', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgLoadTestResponse clone() => MsgLoadTestResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgLoadTestResponse copyWith(void Function(MsgLoadTestResponse) updates) => super.copyWith((message) => updates(message as MsgLoadTestResponse)) as MsgLoadTestResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgLoadTestResponse create() => MsgLoadTestResponse._();
  MsgLoadTestResponse createEmptyInstance() => create();
  static $pb.PbList<MsgLoadTestResponse> createRepeated() => $pb.PbList<MsgLoadTestResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgLoadTestResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgLoadTestResponse>(create);
  static MsgLoadTestResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get totalTime => $_getI64(0);
  @$pb.TagNumber(1)
  set totalTime($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTotalTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotalTime() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get totalErrors => $_getI64(1);
  @$pb.TagNumber(2)
  set totalErrors($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotalErrors() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotalErrors() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
