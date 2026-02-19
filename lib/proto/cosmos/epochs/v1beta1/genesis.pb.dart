//
//  Generated code. Do not modify.
//  source: cosmos/epochs/v1beta1/genesis.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../google/protobuf/duration.pb.dart' as $2;
import '../../../google/protobuf/timestamp.pb.dart' as $1;

/// EpochInfo is a struct that describes the data going into
/// a timer defined by the x/epochs module.
class EpochInfo extends $pb.GeneratedMessage {
  factory EpochInfo({
    $core.String? identifier,
    $1.Timestamp? startTime,
    $2.Duration? duration,
    $fixnum.Int64? currentEpoch,
    $1.Timestamp? currentEpochStartTime,
    $core.bool? epochCountingStarted,
    $fixnum.Int64? currentEpochStartHeight,
  }) {
    final $result = create();
    if (identifier != null) {
      $result.identifier = identifier;
    }
    if (startTime != null) {
      $result.startTime = startTime;
    }
    if (duration != null) {
      $result.duration = duration;
    }
    if (currentEpoch != null) {
      $result.currentEpoch = currentEpoch;
    }
    if (currentEpochStartTime != null) {
      $result.currentEpochStartTime = currentEpochStartTime;
    }
    if (epochCountingStarted != null) {
      $result.epochCountingStarted = epochCountingStarted;
    }
    if (currentEpochStartHeight != null) {
      $result.currentEpochStartHeight = currentEpochStartHeight;
    }
    return $result;
  }
  EpochInfo._() : super();
  factory EpochInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EpochInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EpochInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.epochs.v1beta1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'identifier')
    ..aOM<$1.Timestamp>(2, _omitFieldNames ? '' : 'startTime', subBuilder: $1.Timestamp.create)
    ..aOM<$2.Duration>(3, _omitFieldNames ? '' : 'duration', subBuilder: $2.Duration.create)
    ..aInt64(4, _omitFieldNames ? '' : 'currentEpoch')
    ..aOM<$1.Timestamp>(5, _omitFieldNames ? '' : 'currentEpochStartTime', subBuilder: $1.Timestamp.create)
    ..aOB(6, _omitFieldNames ? '' : 'epochCountingStarted')
    ..aInt64(8, _omitFieldNames ? '' : 'currentEpochStartHeight')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EpochInfo clone() => EpochInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EpochInfo copyWith(void Function(EpochInfo) updates) => super.copyWith((message) => updates(message as EpochInfo)) as EpochInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EpochInfo create() => EpochInfo._();
  EpochInfo createEmptyInstance() => create();
  static $pb.PbList<EpochInfo> createRepeated() => $pb.PbList<EpochInfo>();
  @$core.pragma('dart2js:noInline')
  static EpochInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EpochInfo>(create);
  static EpochInfo? _defaultInstance;

  /// identifier is a unique reference to this particular timer.
  @$pb.TagNumber(1)
  $core.String get identifier => $_getSZ(0);
  @$pb.TagNumber(1)
  set identifier($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdentifier() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdentifier() => clearField(1);

  /// start_time is the time at which the timer first ever ticks.
  /// If start_time is in the future, the epoch will not begin until the start
  /// time.
  @$pb.TagNumber(2)
  $1.Timestamp get startTime => $_getN(1);
  @$pb.TagNumber(2)
  set startTime($1.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStartTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearStartTime() => clearField(2);
  @$pb.TagNumber(2)
  $1.Timestamp ensureStartTime() => $_ensure(1);

  /// duration is the time in between epoch ticks.
  /// In order for intended behavior to be met, duration should
  /// be greater than the chains expected block time.
  /// Duration must be non-zero.
  @$pb.TagNumber(3)
  $2.Duration get duration => $_getN(2);
  @$pb.TagNumber(3)
  set duration($2.Duration v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDuration() => $_has(2);
  @$pb.TagNumber(3)
  void clearDuration() => clearField(3);
  @$pb.TagNumber(3)
  $2.Duration ensureDuration() => $_ensure(2);

  /// current_epoch is the current epoch number, or in other words,
  /// how many times has the timer 'ticked'.
  /// The first tick (current_epoch=1) is defined as
  /// the first block whose blocktime is greater than the EpochInfo start_time.
  @$pb.TagNumber(4)
  $fixnum.Int64 get currentEpoch => $_getI64(3);
  @$pb.TagNumber(4)
  set currentEpoch($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCurrentEpoch() => $_has(3);
  @$pb.TagNumber(4)
  void clearCurrentEpoch() => clearField(4);

  ///  current_epoch_start_time describes the start time of the current timer
  ///  interval. The interval is (current_epoch_start_time,
  ///  current_epoch_start_time + duration] When the timer ticks, this is set to
  ///  current_epoch_start_time = last_epoch_start_time + duration only one timer
  ///  tick for a given identifier can occur per block.
  ///
  ///  NOTE! The current_epoch_start_time may diverge significantly from the
  ///  wall-clock time the epoch began at. Wall-clock time of epoch start may be
  ///  >> current_epoch_start_time. Suppose current_epoch_start_time = 10,
  ///  duration = 5. Suppose the chain goes offline at t=14, and comes back online
  ///  at t=30, and produces blocks at every successive time. (t=31, 32, etc.)
  ///  * The t=30 block will start the epoch for (10, 15]
  ///  * The t=31 block will start the epoch for (15, 20]
  ///  * The t=32 block will start the epoch for (20, 25]
  ///  * The t=33 block will start the epoch for (25, 30]
  ///  * The t=34 block will start the epoch for (30, 35]
  ///  * The **t=36** block will start the epoch for (35, 40]
  @$pb.TagNumber(5)
  $1.Timestamp get currentEpochStartTime => $_getN(4);
  @$pb.TagNumber(5)
  set currentEpochStartTime($1.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCurrentEpochStartTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearCurrentEpochStartTime() => clearField(5);
  @$pb.TagNumber(5)
  $1.Timestamp ensureCurrentEpochStartTime() => $_ensure(4);

  /// epoch_counting_started is a boolean, that indicates whether this
  /// epoch timer has began yet.
  @$pb.TagNumber(6)
  $core.bool get epochCountingStarted => $_getBF(5);
  @$pb.TagNumber(6)
  set epochCountingStarted($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasEpochCountingStarted() => $_has(5);
  @$pb.TagNumber(6)
  void clearEpochCountingStarted() => clearField(6);

  /// current_epoch_start_height is the block height at which the current epoch
  /// started. (The block height at which the timer last ticked)
  @$pb.TagNumber(8)
  $fixnum.Int64 get currentEpochStartHeight => $_getI64(6);
  @$pb.TagNumber(8)
  set currentEpochStartHeight($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasCurrentEpochStartHeight() => $_has(6);
  @$pb.TagNumber(8)
  void clearCurrentEpochStartHeight() => clearField(8);
}

/// GenesisState defines the epochs module's genesis state.
class GenesisState extends $pb.GeneratedMessage {
  factory GenesisState({
    $core.Iterable<EpochInfo>? epochs,
  }) {
    final $result = create();
    if (epochs != null) {
      $result.epochs.addAll(epochs);
    }
    return $result;
  }
  GenesisState._() : super();
  factory GenesisState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenesisState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GenesisState', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.epochs.v1beta1'), createEmptyInstance: create)
    ..pc<EpochInfo>(1, _omitFieldNames ? '' : 'epochs', $pb.PbFieldType.PM, subBuilder: EpochInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GenesisState clone() => GenesisState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GenesisState copyWith(void Function(GenesisState) updates) => super.copyWith((message) => updates(message as GenesisState)) as GenesisState;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GenesisState create() => GenesisState._();
  GenesisState createEmptyInstance() => create();
  static $pb.PbList<GenesisState> createRepeated() => $pb.PbList<GenesisState>();
  @$core.pragma('dart2js:noInline')
  static GenesisState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GenesisState>(create);
  static GenesisState? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<EpochInfo> get epochs => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
