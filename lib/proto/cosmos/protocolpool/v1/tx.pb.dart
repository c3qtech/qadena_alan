//
//  Generated code. Do not modify.
//  source: cosmos/protocolpool/v1/tx.proto
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
import '../../base/v1beta1/coin.pb.dart' as $3;
import 'types.pb.dart' as $4;

/// MsgFundCommunityPool allows an account to directly
/// fund the community pool.
class MsgFundCommunityPool extends $pb.GeneratedMessage {
  factory MsgFundCommunityPool({
    $core.String? depositor,
    $core.Iterable<$3.Coin>? amount,
  }) {
    final $result = create();
    if (depositor != null) {
      $result.depositor = depositor;
    }
    if (amount != null) {
      $result.amount.addAll(amount);
    }
    return $result;
  }
  MsgFundCommunityPool._() : super();
  factory MsgFundCommunityPool.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgFundCommunityPool.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgFundCommunityPool', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.protocolpool.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'depositor')
    ..pc<$3.Coin>(2, _omitFieldNames ? '' : 'amount', $pb.PbFieldType.PM, subBuilder: $3.Coin.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgFundCommunityPool clone() => MsgFundCommunityPool()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgFundCommunityPool copyWith(void Function(MsgFundCommunityPool) updates) => super.copyWith((message) => updates(message as MsgFundCommunityPool)) as MsgFundCommunityPool;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgFundCommunityPool create() => MsgFundCommunityPool._();
  MsgFundCommunityPool createEmptyInstance() => create();
  static $pb.PbList<MsgFundCommunityPool> createRepeated() => $pb.PbList<MsgFundCommunityPool>();
  @$core.pragma('dart2js:noInline')
  static MsgFundCommunityPool getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgFundCommunityPool>(create);
  static MsgFundCommunityPool? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get depositor => $_getSZ(0);
  @$pb.TagNumber(1)
  set depositor($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDepositor() => $_has(0);
  @$pb.TagNumber(1)
  void clearDepositor() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$3.Coin> get amount => $_getList(1);
}

/// MsgFundCommunityPoolResponse defines the Msg/FundCommunityPool response type.
class MsgFundCommunityPoolResponse extends $pb.GeneratedMessage {
  factory MsgFundCommunityPoolResponse() => create();
  MsgFundCommunityPoolResponse._() : super();
  factory MsgFundCommunityPoolResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgFundCommunityPoolResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgFundCommunityPoolResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.protocolpool.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgFundCommunityPoolResponse clone() => MsgFundCommunityPoolResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgFundCommunityPoolResponse copyWith(void Function(MsgFundCommunityPoolResponse) updates) => super.copyWith((message) => updates(message as MsgFundCommunityPoolResponse)) as MsgFundCommunityPoolResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgFundCommunityPoolResponse create() => MsgFundCommunityPoolResponse._();
  MsgFundCommunityPoolResponse createEmptyInstance() => create();
  static $pb.PbList<MsgFundCommunityPoolResponse> createRepeated() => $pb.PbList<MsgFundCommunityPoolResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgFundCommunityPoolResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgFundCommunityPoolResponse>(create);
  static MsgFundCommunityPoolResponse? _defaultInstance;
}

/// MsgCommunityPoolSpend defines a message for sending tokens from the community
/// pool to another account. This message is typically executed via a governance
/// proposal with the governance module being the executing authority.
class MsgCommunityPoolSpend extends $pb.GeneratedMessage {
  factory MsgCommunityPoolSpend({
    $core.String? authority,
    $core.String? recipient,
    $core.Iterable<$3.Coin>? amount,
  }) {
    final $result = create();
    if (authority != null) {
      $result.authority = authority;
    }
    if (recipient != null) {
      $result.recipient = recipient;
    }
    if (amount != null) {
      $result.amount.addAll(amount);
    }
    return $result;
  }
  MsgCommunityPoolSpend._() : super();
  factory MsgCommunityPoolSpend.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgCommunityPoolSpend.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgCommunityPoolSpend', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.protocolpool.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'authority')
    ..aOS(2, _omitFieldNames ? '' : 'recipient')
    ..pc<$3.Coin>(3, _omitFieldNames ? '' : 'amount', $pb.PbFieldType.PM, subBuilder: $3.Coin.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgCommunityPoolSpend clone() => MsgCommunityPoolSpend()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgCommunityPoolSpend copyWith(void Function(MsgCommunityPoolSpend) updates) => super.copyWith((message) => updates(message as MsgCommunityPoolSpend)) as MsgCommunityPoolSpend;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgCommunityPoolSpend create() => MsgCommunityPoolSpend._();
  MsgCommunityPoolSpend createEmptyInstance() => create();
  static $pb.PbList<MsgCommunityPoolSpend> createRepeated() => $pb.PbList<MsgCommunityPoolSpend>();
  @$core.pragma('dart2js:noInline')
  static MsgCommunityPoolSpend getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgCommunityPoolSpend>(create);
  static MsgCommunityPoolSpend? _defaultInstance;

  /// Authority is the address that controls the module (defaults to x/gov unless overwritten).
  @$pb.TagNumber(1)
  $core.String get authority => $_getSZ(0);
  @$pb.TagNumber(1)
  set authority($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAuthority() => $_has(0);
  @$pb.TagNumber(1)
  void clearAuthority() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get recipient => $_getSZ(1);
  @$pb.TagNumber(2)
  set recipient($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRecipient() => $_has(1);
  @$pb.TagNumber(2)
  void clearRecipient() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$3.Coin> get amount => $_getList(2);
}

/// MsgCommunityPoolSpendResponse defines the response to executing a
/// MsgCommunityPoolSpend message.
class MsgCommunityPoolSpendResponse extends $pb.GeneratedMessage {
  factory MsgCommunityPoolSpendResponse() => create();
  MsgCommunityPoolSpendResponse._() : super();
  factory MsgCommunityPoolSpendResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgCommunityPoolSpendResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgCommunityPoolSpendResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.protocolpool.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgCommunityPoolSpendResponse clone() => MsgCommunityPoolSpendResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgCommunityPoolSpendResponse copyWith(void Function(MsgCommunityPoolSpendResponse) updates) => super.copyWith((message) => updates(message as MsgCommunityPoolSpendResponse)) as MsgCommunityPoolSpendResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgCommunityPoolSpendResponse create() => MsgCommunityPoolSpendResponse._();
  MsgCommunityPoolSpendResponse createEmptyInstance() => create();
  static $pb.PbList<MsgCommunityPoolSpendResponse> createRepeated() => $pb.PbList<MsgCommunityPoolSpendResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgCommunityPoolSpendResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgCommunityPoolSpendResponse>(create);
  static MsgCommunityPoolSpendResponse? _defaultInstance;
}

/// MsgCreateContinuousFund defines a message for adding continuous funds.
class MsgCreateContinuousFund extends $pb.GeneratedMessage {
  factory MsgCreateContinuousFund({
    $core.String? authority,
    $core.String? recipient,
    $core.String? percentage,
    $2.Timestamp? expiry,
  }) {
    final $result = create();
    if (authority != null) {
      $result.authority = authority;
    }
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
  MsgCreateContinuousFund._() : super();
  factory MsgCreateContinuousFund.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgCreateContinuousFund.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgCreateContinuousFund', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.protocolpool.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'authority')
    ..aOS(2, _omitFieldNames ? '' : 'recipient')
    ..aOS(3, _omitFieldNames ? '' : 'percentage')
    ..aOM<$2.Timestamp>(4, _omitFieldNames ? '' : 'expiry', subBuilder: $2.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgCreateContinuousFund clone() => MsgCreateContinuousFund()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgCreateContinuousFund copyWith(void Function(MsgCreateContinuousFund) updates) => super.copyWith((message) => updates(message as MsgCreateContinuousFund)) as MsgCreateContinuousFund;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgCreateContinuousFund create() => MsgCreateContinuousFund._();
  MsgCreateContinuousFund createEmptyInstance() => create();
  static $pb.PbList<MsgCreateContinuousFund> createRepeated() => $pb.PbList<MsgCreateContinuousFund>();
  @$core.pragma('dart2js:noInline')
  static MsgCreateContinuousFund getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgCreateContinuousFund>(create);
  static MsgCreateContinuousFund? _defaultInstance;

  /// Authority is the address that controls the module (defaults to x/gov unless overwritten).
  @$pb.TagNumber(1)
  $core.String get authority => $_getSZ(0);
  @$pb.TagNumber(1)
  set authority($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAuthority() => $_has(0);
  @$pb.TagNumber(1)
  void clearAuthority() => clearField(1);

  /// Recipient address of the account receiving funds.
  @$pb.TagNumber(2)
  $core.String get recipient => $_getSZ(1);
  @$pb.TagNumber(2)
  set recipient($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRecipient() => $_has(1);
  @$pb.TagNumber(2)
  void clearRecipient() => clearField(2);

  /// Percentage is the percentage of funds to be allocated from Community pool.
  @$pb.TagNumber(3)
  $core.String get percentage => $_getSZ(2);
  @$pb.TagNumber(3)
  set percentage($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPercentage() => $_has(2);
  @$pb.TagNumber(3)
  void clearPercentage() => clearField(3);

  /// Optional, if expiry is set, removes the state object when expired.
  @$pb.TagNumber(4)
  $2.Timestamp get expiry => $_getN(3);
  @$pb.TagNumber(4)
  set expiry($2.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasExpiry() => $_has(3);
  @$pb.TagNumber(4)
  void clearExpiry() => clearField(4);
  @$pb.TagNumber(4)
  $2.Timestamp ensureExpiry() => $_ensure(3);
}

/// MsgCreateContinuousFundResponse defines the response to executing a
/// MsgCreateContinuousFund message.
class MsgCreateContinuousFundResponse extends $pb.GeneratedMessage {
  factory MsgCreateContinuousFundResponse() => create();
  MsgCreateContinuousFundResponse._() : super();
  factory MsgCreateContinuousFundResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgCreateContinuousFundResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgCreateContinuousFundResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.protocolpool.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgCreateContinuousFundResponse clone() => MsgCreateContinuousFundResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgCreateContinuousFundResponse copyWith(void Function(MsgCreateContinuousFundResponse) updates) => super.copyWith((message) => updates(message as MsgCreateContinuousFundResponse)) as MsgCreateContinuousFundResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgCreateContinuousFundResponse create() => MsgCreateContinuousFundResponse._();
  MsgCreateContinuousFundResponse createEmptyInstance() => create();
  static $pb.PbList<MsgCreateContinuousFundResponse> createRepeated() => $pb.PbList<MsgCreateContinuousFundResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgCreateContinuousFundResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgCreateContinuousFundResponse>(create);
  static MsgCreateContinuousFundResponse? _defaultInstance;
}

/// MsgCancelContinuousFund defines a message to cancel continuous funds for a specific recipient.
class MsgCancelContinuousFund extends $pb.GeneratedMessage {
  factory MsgCancelContinuousFund({
    $core.String? authority,
    $core.String? recipient,
  }) {
    final $result = create();
    if (authority != null) {
      $result.authority = authority;
    }
    if (recipient != null) {
      $result.recipient = recipient;
    }
    return $result;
  }
  MsgCancelContinuousFund._() : super();
  factory MsgCancelContinuousFund.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgCancelContinuousFund.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgCancelContinuousFund', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.protocolpool.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'authority')
    ..aOS(2, _omitFieldNames ? '' : 'recipient')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgCancelContinuousFund clone() => MsgCancelContinuousFund()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgCancelContinuousFund copyWith(void Function(MsgCancelContinuousFund) updates) => super.copyWith((message) => updates(message as MsgCancelContinuousFund)) as MsgCancelContinuousFund;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgCancelContinuousFund create() => MsgCancelContinuousFund._();
  MsgCancelContinuousFund createEmptyInstance() => create();
  static $pb.PbList<MsgCancelContinuousFund> createRepeated() => $pb.PbList<MsgCancelContinuousFund>();
  @$core.pragma('dart2js:noInline')
  static MsgCancelContinuousFund getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgCancelContinuousFund>(create);
  static MsgCancelContinuousFund? _defaultInstance;

  /// Authority is the account address of authority.
  @$pb.TagNumber(1)
  $core.String get authority => $_getSZ(0);
  @$pb.TagNumber(1)
  set authority($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAuthority() => $_has(0);
  @$pb.TagNumber(1)
  void clearAuthority() => clearField(1);

  /// Recipient is the account address string of the recipient whose funds are to be cancelled.
  @$pb.TagNumber(2)
  $core.String get recipient => $_getSZ(1);
  @$pb.TagNumber(2)
  set recipient($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRecipient() => $_has(1);
  @$pb.TagNumber(2)
  void clearRecipient() => clearField(2);
}

/// MsgCancelContinuousFundResponse defines the response to executing a
/// MsgCancelContinuousFund message.
class MsgCancelContinuousFundResponse extends $pb.GeneratedMessage {
  factory MsgCancelContinuousFundResponse({
    $2.Timestamp? canceledTime,
    $fixnum.Int64? canceledHeight,
    $core.String? recipient,
  }) {
    final $result = create();
    if (canceledTime != null) {
      $result.canceledTime = canceledTime;
    }
    if (canceledHeight != null) {
      $result.canceledHeight = canceledHeight;
    }
    if (recipient != null) {
      $result.recipient = recipient;
    }
    return $result;
  }
  MsgCancelContinuousFundResponse._() : super();
  factory MsgCancelContinuousFundResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgCancelContinuousFundResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgCancelContinuousFundResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.protocolpool.v1'), createEmptyInstance: create)
    ..aOM<$2.Timestamp>(1, _omitFieldNames ? '' : 'canceledTime', subBuilder: $2.Timestamp.create)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'canceledHeight', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(3, _omitFieldNames ? '' : 'recipient')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgCancelContinuousFundResponse clone() => MsgCancelContinuousFundResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgCancelContinuousFundResponse copyWith(void Function(MsgCancelContinuousFundResponse) updates) => super.copyWith((message) => updates(message as MsgCancelContinuousFundResponse)) as MsgCancelContinuousFundResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgCancelContinuousFundResponse create() => MsgCancelContinuousFundResponse._();
  MsgCancelContinuousFundResponse createEmptyInstance() => create();
  static $pb.PbList<MsgCancelContinuousFundResponse> createRepeated() => $pb.PbList<MsgCancelContinuousFundResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgCancelContinuousFundResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgCancelContinuousFundResponse>(create);
  static MsgCancelContinuousFundResponse? _defaultInstance;

  /// CanceledTime is the canceled time.
  @$pb.TagNumber(1)
  $2.Timestamp get canceledTime => $_getN(0);
  @$pb.TagNumber(1)
  set canceledTime($2.Timestamp v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCanceledTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearCanceledTime() => clearField(1);
  @$pb.TagNumber(1)
  $2.Timestamp ensureCanceledTime() => $_ensure(0);

  /// CanceledHeight defines the canceled block height.
  @$pb.TagNumber(2)
  $fixnum.Int64 get canceledHeight => $_getI64(1);
  @$pb.TagNumber(2)
  set canceledHeight($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCanceledHeight() => $_has(1);
  @$pb.TagNumber(2)
  void clearCanceledHeight() => clearField(2);

  /// Recipient is the account address string of the recipient whose funds are cancelled.
  @$pb.TagNumber(3)
  $core.String get recipient => $_getSZ(2);
  @$pb.TagNumber(3)
  set recipient($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRecipient() => $_has(2);
  @$pb.TagNumber(3)
  void clearRecipient() => clearField(3);
}

/// MsgUpdateParams is the Msg/UpdateParams request type.
class MsgUpdateParams extends $pb.GeneratedMessage {
  factory MsgUpdateParams({
    $core.String? authority,
    $4.Params? params,
  }) {
    final $result = create();
    if (authority != null) {
      $result.authority = authority;
    }
    if (params != null) {
      $result.params = params;
    }
    return $result;
  }
  MsgUpdateParams._() : super();
  factory MsgUpdateParams.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgUpdateParams.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgUpdateParams', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.protocolpool.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'authority')
    ..aOM<$4.Params>(2, _omitFieldNames ? '' : 'params', subBuilder: $4.Params.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgUpdateParams clone() => MsgUpdateParams()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgUpdateParams copyWith(void Function(MsgUpdateParams) updates) => super.copyWith((message) => updates(message as MsgUpdateParams)) as MsgUpdateParams;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgUpdateParams create() => MsgUpdateParams._();
  MsgUpdateParams createEmptyInstance() => create();
  static $pb.PbList<MsgUpdateParams> createRepeated() => $pb.PbList<MsgUpdateParams>();
  @$core.pragma('dart2js:noInline')
  static MsgUpdateParams getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgUpdateParams>(create);
  static MsgUpdateParams? _defaultInstance;

  /// authority is the address that controls the module (defaults to x/gov unless overwritten).
  @$pb.TagNumber(1)
  $core.String get authority => $_getSZ(0);
  @$pb.TagNumber(1)
  set authority($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAuthority() => $_has(0);
  @$pb.TagNumber(1)
  void clearAuthority() => clearField(1);

  ///  params defines the x/protocolpool parameters to update.
  ///
  ///  NOTE: All parameters must be supplied.
  @$pb.TagNumber(2)
  $4.Params get params => $_getN(1);
  @$pb.TagNumber(2)
  set params($4.Params v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasParams() => $_has(1);
  @$pb.TagNumber(2)
  void clearParams() => clearField(2);
  @$pb.TagNumber(2)
  $4.Params ensureParams() => $_ensure(1);
}

/// MsgUpdateParamsResponse defines the response structure for executing a
/// MsgUpdateParams message.
class MsgUpdateParamsResponse extends $pb.GeneratedMessage {
  factory MsgUpdateParamsResponse() => create();
  MsgUpdateParamsResponse._() : super();
  factory MsgUpdateParamsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgUpdateParamsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgUpdateParamsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.protocolpool.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgUpdateParamsResponse clone() => MsgUpdateParamsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgUpdateParamsResponse copyWith(void Function(MsgUpdateParamsResponse) updates) => super.copyWith((message) => updates(message as MsgUpdateParamsResponse)) as MsgUpdateParamsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgUpdateParamsResponse create() => MsgUpdateParamsResponse._();
  MsgUpdateParamsResponse createEmptyInstance() => create();
  static $pb.PbList<MsgUpdateParamsResponse> createRepeated() => $pb.PbList<MsgUpdateParamsResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgUpdateParamsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgUpdateParamsResponse>(create);
  static MsgUpdateParamsResponse? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
