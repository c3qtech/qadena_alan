//
//  Generated code. Do not modify.
//  source: cosmos/counter/v1/tx.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

/// MsgIncreaseCounter defines a count Msg service counter.
class MsgIncreaseCounter extends $pb.GeneratedMessage {
  factory MsgIncreaseCounter({
    $core.String? signer,
    $fixnum.Int64? count,
  }) {
    final $result = create();
    if (signer != null) {
      $result.signer = signer;
    }
    if (count != null) {
      $result.count = count;
    }
    return $result;
  }
  MsgIncreaseCounter._() : super();
  factory MsgIncreaseCounter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgIncreaseCounter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgIncreaseCounter', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.counter.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'signer')
    ..aInt64(2, _omitFieldNames ? '' : 'count')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgIncreaseCounter clone() => MsgIncreaseCounter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgIncreaseCounter copyWith(void Function(MsgIncreaseCounter) updates) => super.copyWith((message) => updates(message as MsgIncreaseCounter)) as MsgIncreaseCounter;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgIncreaseCounter create() => MsgIncreaseCounter._();
  MsgIncreaseCounter createEmptyInstance() => create();
  static $pb.PbList<MsgIncreaseCounter> createRepeated() => $pb.PbList<MsgIncreaseCounter>();
  @$core.pragma('dart2js:noInline')
  static MsgIncreaseCounter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgIncreaseCounter>(create);
  static MsgIncreaseCounter? _defaultInstance;

  /// signer is the address that controls the module (defaults to x/gov unless overwritten).
  @$pb.TagNumber(1)
  $core.String get signer => $_getSZ(0);
  @$pb.TagNumber(1)
  set signer($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSigner() => $_has(0);
  @$pb.TagNumber(1)
  void clearSigner() => clearField(1);

  /// count is the number of times to increment the counter.
  @$pb.TagNumber(2)
  $fixnum.Int64 get count => $_getI64(1);
  @$pb.TagNumber(2)
  set count($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);
}

/// MsgIncreaseCountResponse is the Msg/Counter response type.
class MsgIncreaseCountResponse extends $pb.GeneratedMessage {
  factory MsgIncreaseCountResponse({
    $fixnum.Int64? newCount,
  }) {
    final $result = create();
    if (newCount != null) {
      $result.newCount = newCount;
    }
    return $result;
  }
  MsgIncreaseCountResponse._() : super();
  factory MsgIncreaseCountResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgIncreaseCountResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgIncreaseCountResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.counter.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'newCount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgIncreaseCountResponse clone() => MsgIncreaseCountResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgIncreaseCountResponse copyWith(void Function(MsgIncreaseCountResponse) updates) => super.copyWith((message) => updates(message as MsgIncreaseCountResponse)) as MsgIncreaseCountResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgIncreaseCountResponse create() => MsgIncreaseCountResponse._();
  MsgIncreaseCountResponse createEmptyInstance() => create();
  static $pb.PbList<MsgIncreaseCountResponse> createRepeated() => $pb.PbList<MsgIncreaseCountResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgIncreaseCountResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgIncreaseCountResponse>(create);
  static MsgIncreaseCountResponse? _defaultInstance;

  /// new_count is the number of times the counter was incremented.
  @$pb.TagNumber(1)
  $fixnum.Int64 get newCount => $_getI64(0);
  @$pb.TagNumber(1)
  set newCount($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNewCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearNewCount() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
