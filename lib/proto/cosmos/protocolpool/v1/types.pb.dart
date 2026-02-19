//
//  Generated code. Do not modify.
//  source: cosmos/protocolpool/v1/types.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../google/protobuf/timestamp.pb.dart' as $2;

/// ContinuousFund defines the fields of continuous fund proposal.
class ContinuousFund extends $pb.GeneratedMessage {
  factory ContinuousFund({
    $core.String? recipient,
    $core.String? percentage,
    $2.Timestamp? expiry,
  }) {
    final $result = create();
    if (recipient != null) {
      $result.recipient = recipient;
    }
    if (percentage != null) {
      $result.percentage = percentage;
    }
    if (expiry != null) {
      $result.expiry = expiry;
    }
    return $result;
  }
  ContinuousFund._() : super();
  factory ContinuousFund.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContinuousFund.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ContinuousFund', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.protocolpool.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'recipient')
    ..aOS(2, _omitFieldNames ? '' : 'percentage')
    ..aOM<$2.Timestamp>(3, _omitFieldNames ? '' : 'expiry', subBuilder: $2.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ContinuousFund clone() => ContinuousFund()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ContinuousFund copyWith(void Function(ContinuousFund) updates) => super.copyWith((message) => updates(message as ContinuousFund)) as ContinuousFund;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ContinuousFund create() => ContinuousFund._();
  ContinuousFund createEmptyInstance() => create();
  static $pb.PbList<ContinuousFund> createRepeated() => $pb.PbList<ContinuousFund>();
  @$core.pragma('dart2js:noInline')
  static ContinuousFund getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContinuousFund>(create);
  static ContinuousFund? _defaultInstance;

  /// Recipient is the address string of the account receiving funds.
  @$pb.TagNumber(1)
  $core.String get recipient => $_getSZ(0);
  @$pb.TagNumber(1)
  set recipient($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRecipient() => $_has(0);
  @$pb.TagNumber(1)
  void clearRecipient() => clearField(1);

  /// Percentage is the percentage of funds to be allocated from Community pool.
  @$pb.TagNumber(2)
  $core.String get percentage => $_getSZ(1);
  @$pb.TagNumber(2)
  set percentage($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPercentage() => $_has(1);
  @$pb.TagNumber(2)
  void clearPercentage() => clearField(2);

  /// Optional, if expiry is set, removes the state object when expired.
  @$pb.TagNumber(3)
  $2.Timestamp get expiry => $_getN(2);
  @$pb.TagNumber(3)
  set expiry($2.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasExpiry() => $_has(2);
  @$pb.TagNumber(3)
  void clearExpiry() => clearField(3);
  @$pb.TagNumber(3)
  $2.Timestamp ensureExpiry() => $_ensure(2);
}

/// Params defines the parameters for the protocolpool module.
class Params extends $pb.GeneratedMessage {
  factory Params({
    $core.Iterable<$core.String>? enabledDistributionDenoms,
    $fixnum.Int64? distributionFrequency,
  }) {
    final $result = create();
    if (enabledDistributionDenoms != null) {
      $result.enabledDistributionDenoms.addAll(enabledDistributionDenoms);
    }
    if (distributionFrequency != null) {
      $result.distributionFrequency = distributionFrequency;
    }
    return $result;
  }
  Params._() : super();
  factory Params.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Params.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Params', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.protocolpool.v1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'enabledDistributionDenoms')
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'distributionFrequency', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Params clone() => Params()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Params copyWith(void Function(Params) updates) => super.copyWith((message) => updates(message as Params)) as Params;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Params create() => Params._();
  Params createEmptyInstance() => create();
  static $pb.PbList<Params> createRepeated() => $pb.PbList<Params>();
  @$core.pragma('dart2js:noInline')
  static Params getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Params>(create);
  static Params? _defaultInstance;

  /// EnabledDistributionDenoms lists the denoms that are allowed to be distributed.
  /// This is to avoid spending time distributing undesired tokens to continuous funds and budgets.
  @$pb.TagNumber(1)
  $core.List<$core.String> get enabledDistributionDenoms => $_getList(0);

  /// DistributionFrequency is the frequency (in terms of blocks) that funds are distributed out from the
  /// x/protocolpool module.
  @$pb.TagNumber(2)
  $fixnum.Int64 get distributionFrequency => $_getI64(1);
  @$pb.TagNumber(2)
  set distributionFrequency($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDistributionFrequency() => $_has(1);
  @$pb.TagNumber(2)
  void clearDistributionFrequency() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
