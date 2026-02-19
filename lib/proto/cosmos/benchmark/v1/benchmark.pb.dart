//
//  Generated code. Do not modify.
//  source: cosmos/benchmark/v1/benchmark.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

/// Op is a message describing a benchmark operation.
class Op extends $pb.GeneratedMessage {
  factory Op({
    $fixnum.Int64? seed,
    $core.String? actor,
    $fixnum.Int64? keyLength,
    $fixnum.Int64? valueLength,
    $core.int? iterations,
    $core.bool? delete,
    $core.bool? exists,
  }) {
    final $result = create();
    if (seed != null) {
      $result.seed = seed;
    }
    if (actor != null) {
      $result.actor = actor;
    }
    if (keyLength != null) {
      $result.keyLength = keyLength;
    }
    if (valueLength != null) {
      $result.valueLength = valueLength;
    }
    if (iterations != null) {
      $result.iterations = iterations;
    }
    if (delete != null) {
      $result.delete = delete;
    }
    if (exists != null) {
      $result.exists = exists;
    }
    return $result;
  }
  Op._() : super();
  factory Op.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Op.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Op', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.benchmark.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'seed', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'actor')
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'keyLength', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(4, _omitFieldNames ? '' : 'valueLength', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'iterations', $pb.PbFieldType.OU3)
    ..aOB(6, _omitFieldNames ? '' : 'delete')
    ..aOB(7, _omitFieldNames ? '' : 'exists')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Op clone() => Op()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Op copyWith(void Function(Op) updates) => super.copyWith((message) => updates(message as Op)) as Op;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Op create() => Op._();
  Op createEmptyInstance() => create();
  static $pb.PbList<Op> createRepeated() => $pb.PbList<Op>();
  @$core.pragma('dart2js:noInline')
  static Op getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Op>(create);
  static Op? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get seed => $_getI64(0);
  @$pb.TagNumber(1)
  set seed($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSeed() => $_has(0);
  @$pb.TagNumber(1)
  void clearSeed() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get actor => $_getSZ(1);
  @$pb.TagNumber(2)
  set actor($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasActor() => $_has(1);
  @$pb.TagNumber(2)
  void clearActor() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get keyLength => $_getI64(2);
  @$pb.TagNumber(3)
  set keyLength($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasKeyLength() => $_has(2);
  @$pb.TagNumber(3)
  void clearKeyLength() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get valueLength => $_getI64(3);
  @$pb.TagNumber(4)
  set valueLength($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasValueLength() => $_has(3);
  @$pb.TagNumber(4)
  void clearValueLength() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get iterations => $_getIZ(4);
  @$pb.TagNumber(5)
  set iterations($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIterations() => $_has(4);
  @$pb.TagNumber(5)
  void clearIterations() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get delete => $_getBF(5);
  @$pb.TagNumber(6)
  set delete($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDelete() => $_has(5);
  @$pb.TagNumber(6)
  void clearDelete() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get exists => $_getBF(6);
  @$pb.TagNumber(7)
  set exists($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasExists() => $_has(6);
  @$pb.TagNumber(7)
  void clearExists() => clearField(7);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
