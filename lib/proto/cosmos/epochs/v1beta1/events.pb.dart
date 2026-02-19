//
//  Generated code. Do not modify.
//  source: cosmos/epochs/v1beta1/events.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

/// EventEpochEnd is an event emitted when an epoch end.
class EventEpochEnd extends $pb.GeneratedMessage {
  factory EventEpochEnd({
    $fixnum.Int64? epochNumber,
  }) {
    final $result = create();
    if (epochNumber != null) {
      $result.epochNumber = epochNumber;
    }
    return $result;
  }
  EventEpochEnd._() : super();
  factory EventEpochEnd.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventEpochEnd.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EventEpochEnd', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.epochs.v1beta1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'epochNumber')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EventEpochEnd clone() => EventEpochEnd()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EventEpochEnd copyWith(void Function(EventEpochEnd) updates) => super.copyWith((message) => updates(message as EventEpochEnd)) as EventEpochEnd;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EventEpochEnd create() => EventEpochEnd._();
  EventEpochEnd createEmptyInstance() => create();
  static $pb.PbList<EventEpochEnd> createRepeated() => $pb.PbList<EventEpochEnd>();
  @$core.pragma('dart2js:noInline')
  static EventEpochEnd getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventEpochEnd>(create);
  static EventEpochEnd? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get epochNumber => $_getI64(0);
  @$pb.TagNumber(1)
  set epochNumber($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEpochNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearEpochNumber() => clearField(1);
}

/// EventEpochStart is an event emitted when an epoch start.
class EventEpochStart extends $pb.GeneratedMessage {
  factory EventEpochStart({
    $fixnum.Int64? epochNumber,
    $fixnum.Int64? epochStartTime,
  }) {
    final $result = create();
    if (epochNumber != null) {
      $result.epochNumber = epochNumber;
    }
    if (epochStartTime != null) {
      $result.epochStartTime = epochStartTime;
    }
    return $result;
  }
  EventEpochStart._() : super();
  factory EventEpochStart.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventEpochStart.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EventEpochStart', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.epochs.v1beta1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'epochNumber')
    ..aInt64(2, _omitFieldNames ? '' : 'epochStartTime')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EventEpochStart clone() => EventEpochStart()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EventEpochStart copyWith(void Function(EventEpochStart) updates) => super.copyWith((message) => updates(message as EventEpochStart)) as EventEpochStart;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EventEpochStart create() => EventEpochStart._();
  EventEpochStart createEmptyInstance() => create();
  static $pb.PbList<EventEpochStart> createRepeated() => $pb.PbList<EventEpochStart>();
  @$core.pragma('dart2js:noInline')
  static EventEpochStart getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventEpochStart>(create);
  static EventEpochStart? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get epochNumber => $_getI64(0);
  @$pb.TagNumber(1)
  set epochNumber($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEpochNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearEpochNumber() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get epochStartTime => $_getI64(1);
  @$pb.TagNumber(2)
  set epochStartTime($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEpochStartTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearEpochStartTime() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
