//
//  Generated code. Do not modify.
//  source: cosmos/gov/v1beta1/tx.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../google/protobuf/any.pb.dart' as $3;
import '../../base/v1beta1/coin.pb.dart' as $2;
import 'gov.pb.dart' as $6;
import 'gov.pbenum.dart' as $6;

/// MsgSubmitProposal defines an sdk.Msg type that supports submitting arbitrary
/// proposal Content.
class MsgSubmitProposal extends $pb.GeneratedMessage {
  factory MsgSubmitProposal({
    $3.Any? content,
    $core.Iterable<$2.Coin>? initialDeposit,
    $core.String? proposer,
  }) {
    final $result = create();
    if (content != null) {
      $result.content = content;
    }
    if (initialDeposit != null) {
      $result.initialDeposit.addAll(initialDeposit);
    }
    if (proposer != null) {
      $result.proposer = proposer;
    }
    return $result;
  }
  MsgSubmitProposal._() : super();
  factory MsgSubmitProposal.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgSubmitProposal.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgSubmitProposal', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.gov.v1beta1'), createEmptyInstance: create)
    ..aOM<$3.Any>(1, _omitFieldNames ? '' : 'content', subBuilder: $3.Any.create)
    ..pc<$2.Coin>(2, _omitFieldNames ? '' : 'initialDeposit', $pb.PbFieldType.PM, subBuilder: $2.Coin.create)
    ..aOS(3, _omitFieldNames ? '' : 'proposer')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgSubmitProposal clone() => MsgSubmitProposal()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgSubmitProposal copyWith(void Function(MsgSubmitProposal) updates) => super.copyWith((message) => updates(message as MsgSubmitProposal)) as MsgSubmitProposal;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgSubmitProposal create() => MsgSubmitProposal._();
  MsgSubmitProposal createEmptyInstance() => create();
  static $pb.PbList<MsgSubmitProposal> createRepeated() => $pb.PbList<MsgSubmitProposal>();
  @$core.pragma('dart2js:noInline')
  static MsgSubmitProposal getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgSubmitProposal>(create);
  static MsgSubmitProposal? _defaultInstance;

  /// content is the proposal's content.
  @$pb.TagNumber(1)
  $3.Any get content => $_getN(0);
  @$pb.TagNumber(1)
  set content($3.Any v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasContent() => $_has(0);
  @$pb.TagNumber(1)
  void clearContent() => clearField(1);
  @$pb.TagNumber(1)
  $3.Any ensureContent() => $_ensure(0);

  /// initial_deposit is the deposit value that must be paid at proposal submission.
  @$pb.TagNumber(2)
  $core.List<$2.Coin> get initialDeposit => $_getList(1);

  /// proposer is the account address of the proposer.
  @$pb.TagNumber(3)
  $core.String get proposer => $_getSZ(2);
  @$pb.TagNumber(3)
  set proposer($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasProposer() => $_has(2);
  @$pb.TagNumber(3)
  void clearProposer() => clearField(3);
}

/// MsgSubmitProposalResponse defines the Msg/SubmitProposal response type.
class MsgSubmitProposalResponse extends $pb.GeneratedMessage {
  factory MsgSubmitProposalResponse({
    $fixnum.Int64? proposalId,
  }) {
    final $result = create();
    if (proposalId != null) {
      $result.proposalId = proposalId;
    }
    return $result;
  }
  MsgSubmitProposalResponse._() : super();
  factory MsgSubmitProposalResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgSubmitProposalResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgSubmitProposalResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.gov.v1beta1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'proposalId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgSubmitProposalResponse clone() => MsgSubmitProposalResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgSubmitProposalResponse copyWith(void Function(MsgSubmitProposalResponse) updates) => super.copyWith((message) => updates(message as MsgSubmitProposalResponse)) as MsgSubmitProposalResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgSubmitProposalResponse create() => MsgSubmitProposalResponse._();
  MsgSubmitProposalResponse createEmptyInstance() => create();
  static $pb.PbList<MsgSubmitProposalResponse> createRepeated() => $pb.PbList<MsgSubmitProposalResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgSubmitProposalResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgSubmitProposalResponse>(create);
  static MsgSubmitProposalResponse? _defaultInstance;

  /// proposal_id defines the unique id of the proposal.
  @$pb.TagNumber(1)
  $fixnum.Int64 get proposalId => $_getI64(0);
  @$pb.TagNumber(1)
  set proposalId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProposalId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProposalId() => clearField(1);
}

/// MsgVote defines a message to cast a vote.
class MsgVote extends $pb.GeneratedMessage {
  factory MsgVote({
    $fixnum.Int64? proposalId,
    $core.String? voter,
    $6.VoteOption? option,
  }) {
    final $result = create();
    if (proposalId != null) {
      $result.proposalId = proposalId;
    }
    if (voter != null) {
      $result.voter = voter;
    }
    if (option != null) {
      $result.option = option;
    }
    return $result;
  }
  MsgVote._() : super();
  factory MsgVote.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgVote.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgVote', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.gov.v1beta1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'proposalId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'voter')
    ..e<$6.VoteOption>(3, _omitFieldNames ? '' : 'option', $pb.PbFieldType.OE, defaultOrMaker: $6.VoteOption.VOTE_OPTION_UNSPECIFIED, valueOf: $6.VoteOption.valueOf, enumValues: $6.VoteOption.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgVote clone() => MsgVote()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgVote copyWith(void Function(MsgVote) updates) => super.copyWith((message) => updates(message as MsgVote)) as MsgVote;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgVote create() => MsgVote._();
  MsgVote createEmptyInstance() => create();
  static $pb.PbList<MsgVote> createRepeated() => $pb.PbList<MsgVote>();
  @$core.pragma('dart2js:noInline')
  static MsgVote getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgVote>(create);
  static MsgVote? _defaultInstance;

  /// proposal_id defines the unique id of the proposal.
  @$pb.TagNumber(1)
  $fixnum.Int64 get proposalId => $_getI64(0);
  @$pb.TagNumber(1)
  set proposalId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProposalId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProposalId() => clearField(1);

  /// voter is the voter address for the proposal.
  @$pb.TagNumber(2)
  $core.String get voter => $_getSZ(1);
  @$pb.TagNumber(2)
  set voter($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVoter() => $_has(1);
  @$pb.TagNumber(2)
  void clearVoter() => clearField(2);

  /// option defines the vote option.
  @$pb.TagNumber(3)
  $6.VoteOption get option => $_getN(2);
  @$pb.TagNumber(3)
  set option($6.VoteOption v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasOption() => $_has(2);
  @$pb.TagNumber(3)
  void clearOption() => clearField(3);
}

/// MsgVoteResponse defines the Msg/Vote response type.
class MsgVoteResponse extends $pb.GeneratedMessage {
  factory MsgVoteResponse() => create();
  MsgVoteResponse._() : super();
  factory MsgVoteResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgVoteResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgVoteResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.gov.v1beta1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgVoteResponse clone() => MsgVoteResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgVoteResponse copyWith(void Function(MsgVoteResponse) updates) => super.copyWith((message) => updates(message as MsgVoteResponse)) as MsgVoteResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgVoteResponse create() => MsgVoteResponse._();
  MsgVoteResponse createEmptyInstance() => create();
  static $pb.PbList<MsgVoteResponse> createRepeated() => $pb.PbList<MsgVoteResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgVoteResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgVoteResponse>(create);
  static MsgVoteResponse? _defaultInstance;
}

///  MsgVoteWeighted defines a message to cast a vote.
///
///  Since: cosmos-sdk 0.43
class MsgVoteWeighted extends $pb.GeneratedMessage {
  factory MsgVoteWeighted({
    $fixnum.Int64? proposalId,
    $core.String? voter,
    $core.Iterable<$6.WeightedVoteOption>? options,
  }) {
    final $result = create();
    if (proposalId != null) {
      $result.proposalId = proposalId;
    }
    if (voter != null) {
      $result.voter = voter;
    }
    if (options != null) {
      $result.options.addAll(options);
    }
    return $result;
  }
  MsgVoteWeighted._() : super();
  factory MsgVoteWeighted.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgVoteWeighted.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgVoteWeighted', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.gov.v1beta1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'proposalId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'voter')
    ..pc<$6.WeightedVoteOption>(3, _omitFieldNames ? '' : 'options', $pb.PbFieldType.PM, subBuilder: $6.WeightedVoteOption.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgVoteWeighted clone() => MsgVoteWeighted()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgVoteWeighted copyWith(void Function(MsgVoteWeighted) updates) => super.copyWith((message) => updates(message as MsgVoteWeighted)) as MsgVoteWeighted;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgVoteWeighted create() => MsgVoteWeighted._();
  MsgVoteWeighted createEmptyInstance() => create();
  static $pb.PbList<MsgVoteWeighted> createRepeated() => $pb.PbList<MsgVoteWeighted>();
  @$core.pragma('dart2js:noInline')
  static MsgVoteWeighted getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgVoteWeighted>(create);
  static MsgVoteWeighted? _defaultInstance;

  /// proposal_id defines the unique id of the proposal.
  @$pb.TagNumber(1)
  $fixnum.Int64 get proposalId => $_getI64(0);
  @$pb.TagNumber(1)
  set proposalId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProposalId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProposalId() => clearField(1);

  /// voter is the voter address for the proposal.
  @$pb.TagNumber(2)
  $core.String get voter => $_getSZ(1);
  @$pb.TagNumber(2)
  set voter($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVoter() => $_has(1);
  @$pb.TagNumber(2)
  void clearVoter() => clearField(2);

  /// options defines the weighted vote options.
  @$pb.TagNumber(3)
  $core.List<$6.WeightedVoteOption> get options => $_getList(2);
}

///  MsgVoteWeightedResponse defines the Msg/VoteWeighted response type.
///
///  Since: cosmos-sdk 0.43
class MsgVoteWeightedResponse extends $pb.GeneratedMessage {
  factory MsgVoteWeightedResponse() => create();
  MsgVoteWeightedResponse._() : super();
  factory MsgVoteWeightedResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgVoteWeightedResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgVoteWeightedResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.gov.v1beta1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgVoteWeightedResponse clone() => MsgVoteWeightedResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgVoteWeightedResponse copyWith(void Function(MsgVoteWeightedResponse) updates) => super.copyWith((message) => updates(message as MsgVoteWeightedResponse)) as MsgVoteWeightedResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgVoteWeightedResponse create() => MsgVoteWeightedResponse._();
  MsgVoteWeightedResponse createEmptyInstance() => create();
  static $pb.PbList<MsgVoteWeightedResponse> createRepeated() => $pb.PbList<MsgVoteWeightedResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgVoteWeightedResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgVoteWeightedResponse>(create);
  static MsgVoteWeightedResponse? _defaultInstance;
}

/// MsgDeposit defines a message to submit a deposit to an existing proposal.
class MsgDeposit extends $pb.GeneratedMessage {
  factory MsgDeposit({
    $fixnum.Int64? proposalId,
    $core.String? depositor,
    $core.Iterable<$2.Coin>? amount,
  }) {
    final $result = create();
    if (proposalId != null) {
      $result.proposalId = proposalId;
    }
    if (depositor != null) {
      $result.depositor = depositor;
    }
    if (amount != null) {
      $result.amount.addAll(amount);
    }
    return $result;
  }
  MsgDeposit._() : super();
  factory MsgDeposit.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgDeposit.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgDeposit', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.gov.v1beta1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'proposalId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'depositor')
    ..pc<$2.Coin>(3, _omitFieldNames ? '' : 'amount', $pb.PbFieldType.PM, subBuilder: $2.Coin.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgDeposit clone() => MsgDeposit()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgDeposit copyWith(void Function(MsgDeposit) updates) => super.copyWith((message) => updates(message as MsgDeposit)) as MsgDeposit;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgDeposit create() => MsgDeposit._();
  MsgDeposit createEmptyInstance() => create();
  static $pb.PbList<MsgDeposit> createRepeated() => $pb.PbList<MsgDeposit>();
  @$core.pragma('dart2js:noInline')
  static MsgDeposit getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgDeposit>(create);
  static MsgDeposit? _defaultInstance;

  /// proposal_id defines the unique id of the proposal.
  @$pb.TagNumber(1)
  $fixnum.Int64 get proposalId => $_getI64(0);
  @$pb.TagNumber(1)
  set proposalId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProposalId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProposalId() => clearField(1);

  /// depositor defines the deposit addresses from the proposals.
  @$pb.TagNumber(2)
  $core.String get depositor => $_getSZ(1);
  @$pb.TagNumber(2)
  set depositor($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDepositor() => $_has(1);
  @$pb.TagNumber(2)
  void clearDepositor() => clearField(2);

  /// amount to be deposited by depositor.
  @$pb.TagNumber(3)
  $core.List<$2.Coin> get amount => $_getList(2);
}

/// MsgDepositResponse defines the Msg/Deposit response type.
class MsgDepositResponse extends $pb.GeneratedMessage {
  factory MsgDepositResponse() => create();
  MsgDepositResponse._() : super();
  factory MsgDepositResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgDepositResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgDepositResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.gov.v1beta1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgDepositResponse clone() => MsgDepositResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgDepositResponse copyWith(void Function(MsgDepositResponse) updates) => super.copyWith((message) => updates(message as MsgDepositResponse)) as MsgDepositResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgDepositResponse create() => MsgDepositResponse._();
  MsgDepositResponse createEmptyInstance() => create();
  static $pb.PbList<MsgDepositResponse> createRepeated() => $pb.PbList<MsgDepositResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgDepositResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgDepositResponse>(create);
  static MsgDepositResponse? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
