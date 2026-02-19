//
//  Generated code. Do not modify.
//  source: cosmos/benchmark/module/v1/module.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

/// Module is the config object of the benchmark module.
class Module extends $pb.GeneratedMessage {
  factory Module({
    GeneratorParams? genesisParams,
  }) {
    final $result = create();
    if (genesisParams != null) {
      $result.genesisParams = genesisParams;
    }
    return $result;
  }
  Module._() : super();
  factory Module.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Module.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Module', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.benchmark.module.v1'), createEmptyInstance: create)
    ..aOM<GeneratorParams>(1, _omitFieldNames ? '' : 'genesisParams', subBuilder: GeneratorParams.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Module clone() => Module()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Module copyWith(void Function(Module) updates) => super.copyWith((message) => updates(message as Module)) as Module;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Module create() => Module._();
  Module createEmptyInstance() => create();
  static $pb.PbList<Module> createRepeated() => $pb.PbList<Module>();
  @$core.pragma('dart2js:noInline')
  static Module getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Module>(create);
  static Module? _defaultInstance;

  @$pb.TagNumber(1)
  GeneratorParams get genesisParams => $_getN(0);
  @$pb.TagNumber(1)
  set genesisParams(GeneratorParams v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGenesisParams() => $_has(0);
  @$pb.TagNumber(1)
  void clearGenesisParams() => clearField(1);
  @$pb.TagNumber(1)
  GeneratorParams ensureGenesisParams() => $_ensure(0);
}

/// GenesisParams defines the genesis parameters for the benchmark module.
class GeneratorParams extends $pb.GeneratedMessage {
  factory GeneratorParams({
    $fixnum.Int64? seed,
    $fixnum.Int64? bucketCount,
    $fixnum.Int64? keyMean,
    $fixnum.Int64? keyStdDev,
    $fixnum.Int64? valueMean,
    $fixnum.Int64? valueStdDev,
    $fixnum.Int64? genesisCount,
    $core.double? insertWeight,
    $core.double? updateWeight,
    $core.double? deleteWeight,
    $core.double? getWeight,
  }) {
    final $result = create();
    if (seed != null) {
      $result.seed = seed;
    }
    if (bucketCount != null) {
      $result.bucketCount = bucketCount;
    }
    if (keyMean != null) {
      $result.keyMean = keyMean;
    }
    if (keyStdDev != null) {
      $result.keyStdDev = keyStdDev;
    }
    if (valueMean != null) {
      $result.valueMean = valueMean;
    }
    if (valueStdDev != null) {
      $result.valueStdDev = valueStdDev;
    }
    if (genesisCount != null) {
      $result.genesisCount = genesisCount;
    }
    if (insertWeight != null) {
      $result.insertWeight = insertWeight;
    }
    if (updateWeight != null) {
      $result.updateWeight = updateWeight;
    }
    if (deleteWeight != null) {
      $result.deleteWeight = deleteWeight;
    }
    if (getWeight != null) {
      $result.getWeight = getWeight;
    }
    return $result;
  }
  GeneratorParams._() : super();
  factory GeneratorParams.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GeneratorParams.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GeneratorParams', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.benchmark.module.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'seed', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'bucketCount', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'keyMean', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(4, _omitFieldNames ? '' : 'keyStdDev', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(6, _omitFieldNames ? '' : 'valueMean', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(7, _omitFieldNames ? '' : 'valueStdDev', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(8, _omitFieldNames ? '' : 'genesisCount', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.double>(9, _omitFieldNames ? '' : 'insertWeight', $pb.PbFieldType.OF)
    ..a<$core.double>(10, _omitFieldNames ? '' : 'updateWeight', $pb.PbFieldType.OF)
    ..a<$core.double>(11, _omitFieldNames ? '' : 'deleteWeight', $pb.PbFieldType.OF)
    ..a<$core.double>(12, _omitFieldNames ? '' : 'getWeight', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GeneratorParams clone() => GeneratorParams()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GeneratorParams copyWith(void Function(GeneratorParams) updates) => super.copyWith((message) => updates(message as GeneratorParams)) as GeneratorParams;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GeneratorParams create() => GeneratorParams._();
  GeneratorParams createEmptyInstance() => create();
  static $pb.PbList<GeneratorParams> createRepeated() => $pb.PbList<GeneratorParams>();
  @$core.pragma('dart2js:noInline')
  static GeneratorParams getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GeneratorParams>(create);
  static GeneratorParams? _defaultInstance;

  /// seed is the seed for the random number generator.
  @$pb.TagNumber(1)
  $fixnum.Int64 get seed => $_getI64(0);
  @$pb.TagNumber(1)
  set seed($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSeed() => $_has(0);
  @$pb.TagNumber(1)
  void clearSeed() => clearField(1);

  /// bucket_count is the number of store keys to uniformly distribute genesis_count keys across.
  @$pb.TagNumber(2)
  $fixnum.Int64 get bucketCount => $_getI64(1);
  @$pb.TagNumber(2)
  set bucketCount($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBucketCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearBucketCount() => clearField(2);

  /// key_mean is the mean size (in normal distribution) of keys in each bucket.
  @$pb.TagNumber(3)
  $fixnum.Int64 get keyMean => $_getI64(2);
  @$pb.TagNumber(3)
  set keyMean($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasKeyMean() => $_has(2);
  @$pb.TagNumber(3)
  void clearKeyMean() => clearField(3);

  /// key_std_dev is the standard deviation of key sizes in each bucket.
  @$pb.TagNumber(4)
  $fixnum.Int64 get keyStdDev => $_getI64(3);
  @$pb.TagNumber(4)
  set keyStdDev($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasKeyStdDev() => $_has(3);
  @$pb.TagNumber(4)
  void clearKeyStdDev() => clearField(4);

  /// value_mean is the mean size (in normal distribution) of values in each bucket.
  @$pb.TagNumber(6)
  $fixnum.Int64 get valueMean => $_getI64(4);
  @$pb.TagNumber(6)
  set valueMean($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasValueMean() => $_has(4);
  @$pb.TagNumber(6)
  void clearValueMean() => clearField(6);

  /// value_std_dev is the standard deviation of value sizes in each bucket.
  @$pb.TagNumber(7)
  $fixnum.Int64 get valueStdDev => $_getI64(5);
  @$pb.TagNumber(7)
  set valueStdDev($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasValueStdDev() => $_has(5);
  @$pb.TagNumber(7)
  void clearValueStdDev() => clearField(7);

  /// genesis_count is the number of keys to insert in the store, distributed across all buckets.
  @$pb.TagNumber(8)
  $fixnum.Int64 get genesisCount => $_getI64(6);
  @$pb.TagNumber(8)
  set genesisCount($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasGenesisCount() => $_has(6);
  @$pb.TagNumber(8)
  void clearGenesisCount() => clearField(8);

  /// insert_weight is the weight of insert operations.
  @$pb.TagNumber(9)
  $core.double get insertWeight => $_getN(7);
  @$pb.TagNumber(9)
  set insertWeight($core.double v) { $_setFloat(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasInsertWeight() => $_has(7);
  @$pb.TagNumber(9)
  void clearInsertWeight() => clearField(9);

  /// update_weight is the weight of update operations.
  @$pb.TagNumber(10)
  $core.double get updateWeight => $_getN(8);
  @$pb.TagNumber(10)
  set updateWeight($core.double v) { $_setFloat(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasUpdateWeight() => $_has(8);
  @$pb.TagNumber(10)
  void clearUpdateWeight() => clearField(10);

  /// delete_weight is the weight of delete operations.
  @$pb.TagNumber(11)
  $core.double get deleteWeight => $_getN(9);
  @$pb.TagNumber(11)
  set deleteWeight($core.double v) { $_setFloat(9, v); }
  @$pb.TagNumber(11)
  $core.bool hasDeleteWeight() => $_has(9);
  @$pb.TagNumber(11)
  void clearDeleteWeight() => clearField(11);

  /// get_weight is the weight of get operations.
  @$pb.TagNumber(12)
  $core.double get getWeight => $_getN(10);
  @$pb.TagNumber(12)
  set getWeight($core.double v) { $_setFloat(10, v); }
  @$pb.TagNumber(12)
  $core.bool hasGetWeight() => $_has(10);
  @$pb.TagNumber(12)
  void clearGetWeight() => clearField(12);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
