//
//  Generated code. Do not modify.
//  source: cosmos/evm/erc20/v1/erc20.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../bank/v1beta1/bank.pb.dart' as $2;
import 'erc20.pbenum.dart';

export 'erc20.pbenum.dart';

/// TokenPair defines an instance that records a pairing (mapping) consisting of a native
/// Cosmos Coin and an ERC20 token address. The "pair" does not imply an asset swap exchange.
class TokenPair extends $pb.GeneratedMessage {
  factory TokenPair({
    $core.String? erc20Address,
    $core.String? denom,
    $core.bool? enabled,
    Owner? contractOwner,
  }) {
    final $result = create();
    if (erc20Address != null) {
      $result.erc20Address = erc20Address;
    }
    if (denom != null) {
      $result.denom = denom;
    }
    if (enabled != null) {
      $result.enabled = enabled;
    }
    if (contractOwner != null) {
      $result.contractOwner = contractOwner;
    }
    return $result;
  }
  TokenPair._() : super();
  factory TokenPair.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TokenPair.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TokenPair', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.erc20.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'erc20Address')
    ..aOS(2, _omitFieldNames ? '' : 'denom')
    ..aOB(3, _omitFieldNames ? '' : 'enabled')
    ..e<Owner>(4, _omitFieldNames ? '' : 'contractOwner', $pb.PbFieldType.OE, defaultOrMaker: Owner.OWNER_UNSPECIFIED, valueOf: Owner.valueOf, enumValues: Owner.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TokenPair clone() => TokenPair()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TokenPair copyWith(void Function(TokenPair) updates) => super.copyWith((message) => updates(message as TokenPair)) as TokenPair;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenPair create() => TokenPair._();
  TokenPair createEmptyInstance() => create();
  static $pb.PbList<TokenPair> createRepeated() => $pb.PbList<TokenPair>();
  @$core.pragma('dart2js:noInline')
  static TokenPair getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TokenPair>(create);
  static TokenPair? _defaultInstance;

  /// erc20_address is the hex address of ERC20 contract token
  @$pb.TagNumber(1)
  $core.String get erc20Address => $_getSZ(0);
  @$pb.TagNumber(1)
  set erc20Address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasErc20Address() => $_has(0);
  @$pb.TagNumber(1)
  void clearErc20Address() => clearField(1);

  /// denom defines the cosmos base denomination to be mapped to
  @$pb.TagNumber(2)
  $core.String get denom => $_getSZ(1);
  @$pb.TagNumber(2)
  set denom($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDenom() => $_has(1);
  @$pb.TagNumber(2)
  void clearDenom() => clearField(2);

  /// enabled defines the token mapping enable status
  @$pb.TagNumber(3)
  $core.bool get enabled => $_getBF(2);
  @$pb.TagNumber(3)
  set enabled($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEnabled() => $_has(2);
  @$pb.TagNumber(3)
  void clearEnabled() => clearField(3);

  /// contract_owner is the an ENUM specifying the type of ERC20 owner (0
  /// invalid, 1 ModuleAccount, 2 external address)
  @$pb.TagNumber(4)
  Owner get contractOwner => $_getN(3);
  @$pb.TagNumber(4)
  set contractOwner(Owner v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasContractOwner() => $_has(3);
  @$pb.TagNumber(4)
  void clearContractOwner() => clearField(4);
}

/// Allowance is a token allowance only for erc20 precompile
class Allowance extends $pb.GeneratedMessage {
  factory Allowance({
    $core.String? erc20Address,
    $core.String? owner,
    $core.String? spender,
    $core.String? value,
  }) {
    final $result = create();
    if (erc20Address != null) {
      $result.erc20Address = erc20Address;
    }
    if (owner != null) {
      $result.owner = owner;
    }
    if (spender != null) {
      $result.spender = spender;
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  Allowance._() : super();
  factory Allowance.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Allowance.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Allowance', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.erc20.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'erc20Address')
    ..aOS(2, _omitFieldNames ? '' : 'owner')
    ..aOS(3, _omitFieldNames ? '' : 'spender')
    ..aOS(4, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Allowance clone() => Allowance()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Allowance copyWith(void Function(Allowance) updates) => super.copyWith((message) => updates(message as Allowance)) as Allowance;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Allowance create() => Allowance._();
  Allowance createEmptyInstance() => create();
  static $pb.PbList<Allowance> createRepeated() => $pb.PbList<Allowance>();
  @$core.pragma('dart2js:noInline')
  static Allowance getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Allowance>(create);
  static Allowance? _defaultInstance;

  /// erc20_address is the hex address of ERC20 contract
  @$pb.TagNumber(1)
  $core.String get erc20Address => $_getSZ(0);
  @$pb.TagNumber(1)
  set erc20Address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasErc20Address() => $_has(0);
  @$pb.TagNumber(1)
  void clearErc20Address() => clearField(1);

  /// owner is the hex address of the owner account
  @$pb.TagNumber(2)
  $core.String get owner => $_getSZ(1);
  @$pb.TagNumber(2)
  set owner($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOwner() => $_has(1);
  @$pb.TagNumber(2)
  void clearOwner() => clearField(2);

  /// spender is the hex address that is allowed to spend the allowance
  @$pb.TagNumber(3)
  $core.String get spender => $_getSZ(2);
  @$pb.TagNumber(3)
  set spender($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSpender() => $_has(2);
  @$pb.TagNumber(3)
  void clearSpender() => clearField(3);

  /// value specifies the maximum amount of tokens that can be spent
  /// by this token allowance and will be updated as tokens are spent.
  @$pb.TagNumber(4)
  $core.String get value => $_getSZ(3);
  @$pb.TagNumber(4)
  set value($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearValue() => clearField(4);
}

///  Deprecated: RegisterCoinProposal is a gov Content type to register a token
///  pair for a native Cosmos coin. We're keeping it to remove the existing
///  proposals from store. After that, remove this message.
///
///  NOTE: Keep this message for backwards compatibility on proposals query
class RegisterCoinProposal extends $pb.GeneratedMessage {
  factory RegisterCoinProposal({
    $core.String? title,
    $core.String? description,
    $core.Iterable<$2.Metadata>? metadata,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (description != null) {
      $result.description = description;
    }
    if (metadata != null) {
      $result.metadata.addAll(metadata);
    }
    return $result;
  }
  RegisterCoinProposal._() : super();
  factory RegisterCoinProposal.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterCoinProposal.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RegisterCoinProposal', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.erc20.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..pc<$2.Metadata>(3, _omitFieldNames ? '' : 'metadata', $pb.PbFieldType.PM, subBuilder: $2.Metadata.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterCoinProposal clone() => RegisterCoinProposal()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterCoinProposal copyWith(void Function(RegisterCoinProposal) updates) => super.copyWith((message) => updates(message as RegisterCoinProposal)) as RegisterCoinProposal;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterCoinProposal create() => RegisterCoinProposal._();
  RegisterCoinProposal createEmptyInstance() => create();
  static $pb.PbList<RegisterCoinProposal> createRepeated() => $pb.PbList<RegisterCoinProposal>();
  @$core.pragma('dart2js:noInline')
  static RegisterCoinProposal getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterCoinProposal>(create);
  static RegisterCoinProposal? _defaultInstance;

  /// title of the proposal
  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  /// description of the proposal
  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  /// metadata slice of the native Cosmos coins
  @$pb.TagNumber(3)
  $core.List<$2.Metadata> get metadata => $_getList(2);
}

/// Deprecated: ProposalMetadata is used to parse a slice of denom metadata and
/// generate the RegisterCoinProposal content. We're keeping it to remove the
/// existing proposals from store. After that, remove this message.
class ProposalMetadata extends $pb.GeneratedMessage {
  factory ProposalMetadata({
    $core.Iterable<$2.Metadata>? metadata,
  }) {
    final $result = create();
    if (metadata != null) {
      $result.metadata.addAll(metadata);
    }
    return $result;
  }
  ProposalMetadata._() : super();
  factory ProposalMetadata.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProposalMetadata.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProposalMetadata', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.erc20.v1'), createEmptyInstance: create)
    ..pc<$2.Metadata>(1, _omitFieldNames ? '' : 'metadata', $pb.PbFieldType.PM, subBuilder: $2.Metadata.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProposalMetadata clone() => ProposalMetadata()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProposalMetadata copyWith(void Function(ProposalMetadata) updates) => super.copyWith((message) => updates(message as ProposalMetadata)) as ProposalMetadata;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProposalMetadata create() => ProposalMetadata._();
  ProposalMetadata createEmptyInstance() => create();
  static $pb.PbList<ProposalMetadata> createRepeated() => $pb.PbList<ProposalMetadata>();
  @$core.pragma('dart2js:noInline')
  static ProposalMetadata getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProposalMetadata>(create);
  static ProposalMetadata? _defaultInstance;

  /// metadata slice of the native Cosmos coins
  @$pb.TagNumber(1)
  $core.List<$2.Metadata> get metadata => $_getList(0);
}

///  Deprecated: RegisterERC20Proposal is a gov Content type to register a token
///  pair for an ERC20 token.
///
///  NOTE: Keep this message for backwards compatibility on proposals query
class RegisterERC20Proposal extends $pb.GeneratedMessage {
  factory RegisterERC20Proposal({
    $core.String? title,
    $core.String? description,
    $core.Iterable<$core.String>? erc20addresses,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (description != null) {
      $result.description = description;
    }
    if (erc20addresses != null) {
      $result.erc20addresses.addAll(erc20addresses);
    }
    return $result;
  }
  RegisterERC20Proposal._() : super();
  factory RegisterERC20Proposal.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterERC20Proposal.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RegisterERC20Proposal', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.erc20.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..pPS(3, _omitFieldNames ? '' : 'erc20addresses')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterERC20Proposal clone() => RegisterERC20Proposal()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterERC20Proposal copyWith(void Function(RegisterERC20Proposal) updates) => super.copyWith((message) => updates(message as RegisterERC20Proposal)) as RegisterERC20Proposal;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterERC20Proposal create() => RegisterERC20Proposal._();
  RegisterERC20Proposal createEmptyInstance() => create();
  static $pb.PbList<RegisterERC20Proposal> createRepeated() => $pb.PbList<RegisterERC20Proposal>();
  @$core.pragma('dart2js:noInline')
  static RegisterERC20Proposal getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterERC20Proposal>(create);
  static RegisterERC20Proposal? _defaultInstance;

  /// title of the proposal
  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  /// description of the proposal
  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  /// erc20addresses is a slice of  ERC20 token contract addresses
  @$pb.TagNumber(3)
  $core.List<$core.String> get erc20addresses => $_getList(2);
}

///  Deprecated: ToggleTokenConversionProposal is a gov Content type to toggle the
///  conversion of a token pair.
///
///  NOTE: Keep this message for backwards compatibility on proposals query
class ToggleTokenConversionProposal extends $pb.GeneratedMessage {
  factory ToggleTokenConversionProposal({
    $core.String? title,
    $core.String? description,
    $core.String? token,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (description != null) {
      $result.description = description;
    }
    if (token != null) {
      $result.token = token;
    }
    return $result;
  }
  ToggleTokenConversionProposal._() : super();
  factory ToggleTokenConversionProposal.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ToggleTokenConversionProposal.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ToggleTokenConversionProposal', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.erc20.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..aOS(3, _omitFieldNames ? '' : 'token')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ToggleTokenConversionProposal clone() => ToggleTokenConversionProposal()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ToggleTokenConversionProposal copyWith(void Function(ToggleTokenConversionProposal) updates) => super.copyWith((message) => updates(message as ToggleTokenConversionProposal)) as ToggleTokenConversionProposal;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ToggleTokenConversionProposal create() => ToggleTokenConversionProposal._();
  ToggleTokenConversionProposal createEmptyInstance() => create();
  static $pb.PbList<ToggleTokenConversionProposal> createRepeated() => $pb.PbList<ToggleTokenConversionProposal>();
  @$core.pragma('dart2js:noInline')
  static ToggleTokenConversionProposal getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ToggleTokenConversionProposal>(create);
  static ToggleTokenConversionProposal? _defaultInstance;

  /// title of the proposal
  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  /// description of the proposal
  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  /// token identifier can be either the hex contract address of the ERC20 or the
  /// Cosmos base denomination
  @$pb.TagNumber(3)
  $core.String get token => $_getSZ(2);
  @$pb.TagNumber(3)
  set token($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearToken() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
