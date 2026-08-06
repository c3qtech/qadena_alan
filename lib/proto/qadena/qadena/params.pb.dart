//
//  Generated code. Do not modify.
//  source: qadena/qadena/params.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../cosmos/base/v1beta1/coin.pb.dart' as $15;

/// Params defines the parameters for the module.
class Params extends $pb.GeneratedMessage {
  factory Params({
    $15.Coin? createWalletIncentive,
    $15.Coin? createEphemeralWalletIncentive,
    $15.Coin? createWalletTransparentIncentive,
    $15.Coin? createEphemeralWalletTransparentIncentive,
    $core.String? createCredentialFee,
    $core.String? ekycSubmitNewAppRoyaltyPercentage,
    $core.String? ekycSubmitReuseAppRoyaltyPercentage,
    $core.String? ekycSubmitReuseProviderRoyaltyPercentage,
    $core.String? ekycIdentityOwnerRoyaltyPercentage,
    $core.String? createBulkCredentialsFee,
    $core.String? updateCredentialFee,
    $core.int? updateCredentialPolicyVersion,
    $core.int? updateCredentialMaxIdentityAliases,
    $core.int? updateCredentialMaxLifeEvents,
    $core.int? updateNameMaxEditDistance,
    $core.int? updateNameMaxEditDistancePercent,
    $core.int? updateBirthdateMaxYearDelta,
    $fixnum.Int64? updateCredentialMinBlocksBetweenUpdates,
    $core.bool? updateCredentialAllowLastNameLifeEvent,
    $core.bool? updateCredentialAllowGenderChange,
    $core.String? suspiciousTransactionThreshold,
    $fixnum.Int64? suspiciousTransactionWindowSeconds,
    $core.Iterable<SuspiciousThresholdOverride>? suspiciousTransactionThresholdOverrides,
    $core.bool? allowTransferWithoutEkyc,
    $core.int? updateCredentialMaxChangedIdentityFields,
  }) {
    final $result = create();
    if (createWalletIncentive != null) {
      $result.createWalletIncentive = createWalletIncentive;
    }
    if (createEphemeralWalletIncentive != null) {
      $result.createEphemeralWalletIncentive = createEphemeralWalletIncentive;
    }
    if (createWalletTransparentIncentive != null) {
      $result.createWalletTransparentIncentive = createWalletTransparentIncentive;
    }
    if (createEphemeralWalletTransparentIncentive != null) {
      $result.createEphemeralWalletTransparentIncentive = createEphemeralWalletTransparentIncentive;
    }
    if (createCredentialFee != null) {
      $result.createCredentialFee = createCredentialFee;
    }
    if (ekycSubmitNewAppRoyaltyPercentage != null) {
      $result.ekycSubmitNewAppRoyaltyPercentage = ekycSubmitNewAppRoyaltyPercentage;
    }
    if (ekycSubmitReuseAppRoyaltyPercentage != null) {
      $result.ekycSubmitReuseAppRoyaltyPercentage = ekycSubmitReuseAppRoyaltyPercentage;
    }
    if (ekycSubmitReuseProviderRoyaltyPercentage != null) {
      $result.ekycSubmitReuseProviderRoyaltyPercentage = ekycSubmitReuseProviderRoyaltyPercentage;
    }
    if (ekycIdentityOwnerRoyaltyPercentage != null) {
      $result.ekycIdentityOwnerRoyaltyPercentage = ekycIdentityOwnerRoyaltyPercentage;
    }
    if (createBulkCredentialsFee != null) {
      $result.createBulkCredentialsFee = createBulkCredentialsFee;
    }
    if (updateCredentialFee != null) {
      $result.updateCredentialFee = updateCredentialFee;
    }
    if (updateCredentialPolicyVersion != null) {
      $result.updateCredentialPolicyVersion = updateCredentialPolicyVersion;
    }
    if (updateCredentialMaxIdentityAliases != null) {
      $result.updateCredentialMaxIdentityAliases = updateCredentialMaxIdentityAliases;
    }
    if (updateCredentialMaxLifeEvents != null) {
      $result.updateCredentialMaxLifeEvents = updateCredentialMaxLifeEvents;
    }
    if (updateNameMaxEditDistance != null) {
      $result.updateNameMaxEditDistance = updateNameMaxEditDistance;
    }
    if (updateNameMaxEditDistancePercent != null) {
      $result.updateNameMaxEditDistancePercent = updateNameMaxEditDistancePercent;
    }
    if (updateBirthdateMaxYearDelta != null) {
      $result.updateBirthdateMaxYearDelta = updateBirthdateMaxYearDelta;
    }
    if (updateCredentialMinBlocksBetweenUpdates != null) {
      $result.updateCredentialMinBlocksBetweenUpdates = updateCredentialMinBlocksBetweenUpdates;
    }
    if (updateCredentialAllowLastNameLifeEvent != null) {
      $result.updateCredentialAllowLastNameLifeEvent = updateCredentialAllowLastNameLifeEvent;
    }
    if (updateCredentialAllowGenderChange != null) {
      $result.updateCredentialAllowGenderChange = updateCredentialAllowGenderChange;
    }
    if (suspiciousTransactionThreshold != null) {
      $result.suspiciousTransactionThreshold = suspiciousTransactionThreshold;
    }
    if (suspiciousTransactionWindowSeconds != null) {
      $result.suspiciousTransactionWindowSeconds = suspiciousTransactionWindowSeconds;
    }
    if (suspiciousTransactionThresholdOverrides != null) {
      $result.suspiciousTransactionThresholdOverrides.addAll(suspiciousTransactionThresholdOverrides);
    }
    if (allowTransferWithoutEkyc != null) {
      $result.allowTransferWithoutEkyc = allowTransferWithoutEkyc;
    }
    if (updateCredentialMaxChangedIdentityFields != null) {
      $result.updateCredentialMaxChangedIdentityFields = updateCredentialMaxChangedIdentityFields;
    }
    return $result;
  }
  Params._() : super();
  factory Params.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Params.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Params', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOM<$15.Coin>(1, _omitFieldNames ? '' : 'createWalletIncentive', subBuilder: $15.Coin.create)
    ..aOM<$15.Coin>(2, _omitFieldNames ? '' : 'createEphemeralWalletIncentive', subBuilder: $15.Coin.create)
    ..aOM<$15.Coin>(3, _omitFieldNames ? '' : 'createWalletTransparentIncentive', subBuilder: $15.Coin.create)
    ..aOM<$15.Coin>(4, _omitFieldNames ? '' : 'createEphemeralWalletTransparentIncentive', subBuilder: $15.Coin.create)
    ..aOS(5, _omitFieldNames ? '' : 'createCredentialFee')
    ..aOS(6, _omitFieldNames ? '' : 'ekycSubmitNewAppRoyaltyPercentage')
    ..aOS(7, _omitFieldNames ? '' : 'ekycSubmitReuseAppRoyaltyPercentage')
    ..aOS(8, _omitFieldNames ? '' : 'ekycSubmitReuseProviderRoyaltyPercentage')
    ..aOS(9, _omitFieldNames ? '' : 'ekycIdentityOwnerRoyaltyPercentage')
    ..aOS(10, _omitFieldNames ? '' : 'createBulkCredentialsFee')
    ..aOS(11, _omitFieldNames ? '' : 'updateCredentialFee')
    ..a<$core.int>(12, _omitFieldNames ? '' : 'updateCredentialPolicyVersion', $pb.PbFieldType.OU3)
    ..a<$core.int>(13, _omitFieldNames ? '' : 'updateCredentialMaxIdentityAliases', $pb.PbFieldType.OU3)
    ..a<$core.int>(14, _omitFieldNames ? '' : 'updateCredentialMaxLifeEvents', $pb.PbFieldType.OU3)
    ..a<$core.int>(15, _omitFieldNames ? '' : 'updateNameMaxEditDistance', $pb.PbFieldType.OU3)
    ..a<$core.int>(16, _omitFieldNames ? '' : 'updateNameMaxEditDistancePercent', $pb.PbFieldType.OU3)
    ..a<$core.int>(17, _omitFieldNames ? '' : 'updateBirthdateMaxYearDelta', $pb.PbFieldType.OU3)
    ..aInt64(18, _omitFieldNames ? '' : 'updateCredentialMinBlocksBetweenUpdates')
    ..aOB(19, _omitFieldNames ? '' : 'updateCredentialAllowLastNameLifeEvent')
    ..aOB(20, _omitFieldNames ? '' : 'updateCredentialAllowGenderChange')
    ..aOS(21, _omitFieldNames ? '' : 'suspiciousTransactionThreshold')
    ..aInt64(22, _omitFieldNames ? '' : 'suspiciousTransactionWindowSeconds')
    ..pc<SuspiciousThresholdOverride>(23, _omitFieldNames ? '' : 'suspiciousTransactionThresholdOverrides', $pb.PbFieldType.PM, subBuilder: SuspiciousThresholdOverride.create)
    ..aOB(24, _omitFieldNames ? '' : 'allowTransferWithoutEkyc')
    ..a<$core.int>(25, _omitFieldNames ? '' : 'updateCredentialMaxChangedIdentityFields', $pb.PbFieldType.OU3)
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

  @$pb.TagNumber(1)
  $15.Coin get createWalletIncentive => $_getN(0);
  @$pb.TagNumber(1)
  set createWalletIncentive($15.Coin v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreateWalletIncentive() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreateWalletIncentive() => clearField(1);
  @$pb.TagNumber(1)
  $15.Coin ensureCreateWalletIncentive() => $_ensure(0);

  @$pb.TagNumber(2)
  $15.Coin get createEphemeralWalletIncentive => $_getN(1);
  @$pb.TagNumber(2)
  set createEphemeralWalletIncentive($15.Coin v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreateEphemeralWalletIncentive() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreateEphemeralWalletIncentive() => clearField(2);
  @$pb.TagNumber(2)
  $15.Coin ensureCreateEphemeralWalletIncentive() => $_ensure(1);

  @$pb.TagNumber(3)
  $15.Coin get createWalletTransparentIncentive => $_getN(2);
  @$pb.TagNumber(3)
  set createWalletTransparentIncentive($15.Coin v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCreateWalletTransparentIncentive() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreateWalletTransparentIncentive() => clearField(3);
  @$pb.TagNumber(3)
  $15.Coin ensureCreateWalletTransparentIncentive() => $_ensure(2);

  @$pb.TagNumber(4)
  $15.Coin get createEphemeralWalletTransparentIncentive => $_getN(3);
  @$pb.TagNumber(4)
  set createEphemeralWalletTransparentIncentive($15.Coin v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCreateEphemeralWalletTransparentIncentive() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreateEphemeralWalletTransparentIncentive() => clearField(4);
  @$pb.TagNumber(4)
  $15.Coin ensureCreateEphemeralWalletTransparentIncentive() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.String get createCredentialFee => $_getSZ(4);
  @$pb.TagNumber(5)
  set createCredentialFee($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreateCredentialFee() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreateCredentialFee() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get ekycSubmitNewAppRoyaltyPercentage => $_getSZ(5);
  @$pb.TagNumber(6)
  set ekycSubmitNewAppRoyaltyPercentage($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasEkycSubmitNewAppRoyaltyPercentage() => $_has(5);
  @$pb.TagNumber(6)
  void clearEkycSubmitNewAppRoyaltyPercentage() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get ekycSubmitReuseAppRoyaltyPercentage => $_getSZ(6);
  @$pb.TagNumber(7)
  set ekycSubmitReuseAppRoyaltyPercentage($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasEkycSubmitReuseAppRoyaltyPercentage() => $_has(6);
  @$pb.TagNumber(7)
  void clearEkycSubmitReuseAppRoyaltyPercentage() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get ekycSubmitReuseProviderRoyaltyPercentage => $_getSZ(7);
  @$pb.TagNumber(8)
  set ekycSubmitReuseProviderRoyaltyPercentage($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasEkycSubmitReuseProviderRoyaltyPercentage() => $_has(7);
  @$pb.TagNumber(8)
  void clearEkycSubmitReuseProviderRoyaltyPercentage() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get ekycIdentityOwnerRoyaltyPercentage => $_getSZ(8);
  @$pb.TagNumber(9)
  set ekycIdentityOwnerRoyaltyPercentage($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasEkycIdentityOwnerRoyaltyPercentage() => $_has(8);
  @$pb.TagNumber(9)
  void clearEkycIdentityOwnerRoyaltyPercentage() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get createBulkCredentialsFee => $_getSZ(9);
  @$pb.TagNumber(10)
  set createBulkCredentialsFee($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasCreateBulkCredentialsFee() => $_has(9);
  @$pb.TagNumber(10)
  void clearCreateBulkCredentialsFee() => clearField(10);

  /// MsgUpdateCredential.  Every numeric here reads as zero on a chain that predates these
  /// params, so the policy loader substitutes the compiled-in defaults in
  /// x/qadena/common/credential_policy.go rather than rejecting every correction.  The
  /// birthdate month/day-swap exception is deliberately NOT a param: it is part of what the
  /// birthdate rule MEANS, not a quantity to tune.
  @$pb.TagNumber(11)
  $core.String get updateCredentialFee => $_getSZ(10);
  @$pb.TagNumber(11)
  set updateCredentialFee($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasUpdateCredentialFee() => $_has(10);
  @$pb.TagNumber(11)
  void clearUpdateCredentialFee() => clearField(11);

  /// bumped whenever the policy engine's behaviour changes, so a divergence between enclave
  /// builds is visible on chain instead of silent
  @$pb.TagNumber(12)
  $core.int get updateCredentialPolicyVersion => $_getIZ(11);
  @$pb.TagNumber(12)
  set updateCredentialPolicyVersion($core.int v) { $_setUnsignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasUpdateCredentialPolicyVersion() => $_has(11);
  @$pb.TagNumber(12)
  void clearUpdateCredentialPolicyVersion() => clearField(12);

  /// cap on entries in a credential's identity-hash alias list; the list length is the
  /// hash-changing-update counter, so this is the lifetime update limit plus one
  @$pb.TagNumber(13)
  $core.int get updateCredentialMaxIdentityAliases => $_getIZ(12);
  @$pb.TagNumber(13)
  set updateCredentialMaxIdentityAliases($core.int v) { $_setUnsignedInt32(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasUpdateCredentialMaxIdentityAliases() => $_has(12);
  @$pb.TagNumber(13)
  void clearUpdateCredentialMaxIdentityAliases() => clearField(13);

  @$pb.TagNumber(14)
  $core.int get updateCredentialMaxLifeEvents => $_getIZ(13);
  @$pb.TagNumber(14)
  set updateCredentialMaxLifeEvents($core.int v) { $_setUnsignedInt32(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasUpdateCredentialMaxLifeEvents() => $_has(13);
  @$pb.TagNumber(14)
  void clearUpdateCredentialMaxLifeEvents() => clearField(14);

  @$pb.TagNumber(15)
  $core.int get updateNameMaxEditDistance => $_getIZ(14);
  @$pb.TagNumber(15)
  set updateNameMaxEditDistance($core.int v) { $_setUnsignedInt32(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasUpdateNameMaxEditDistance() => $_has(14);
  @$pb.TagNumber(15)
  void clearUpdateNameMaxEditDistance() => clearField(15);

  @$pb.TagNumber(16)
  $core.int get updateNameMaxEditDistancePercent => $_getIZ(15);
  @$pb.TagNumber(16)
  set updateNameMaxEditDistancePercent($core.int v) { $_setUnsignedInt32(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasUpdateNameMaxEditDistancePercent() => $_has(15);
  @$pb.TagNumber(16)
  void clearUpdateNameMaxEditDistancePercent() => clearField(16);

  @$pb.TagNumber(17)
  $core.int get updateBirthdateMaxYearDelta => $_getIZ(16);
  @$pb.TagNumber(17)
  set updateBirthdateMaxYearDelta($core.int v) { $_setUnsignedInt32(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasUpdateBirthdateMaxYearDelta() => $_has(16);
  @$pb.TagNumber(17)
  void clearUpdateBirthdateMaxYearDelta() => clearField(17);

  @$pb.TagNumber(18)
  $fixnum.Int64 get updateCredentialMinBlocksBetweenUpdates => $_getI64(17);
  @$pb.TagNumber(18)
  set updateCredentialMinBlocksBetweenUpdates($fixnum.Int64 v) { $_setInt64(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasUpdateCredentialMinBlocksBetweenUpdates() => $_has(17);
  @$pb.TagNumber(18)
  void clearUpdateCredentialMinBlocksBetweenUpdates() => clearField(18);

  /// gates so a jurisdiction can disable a transition by param rather than by fork
  @$pb.TagNumber(19)
  $core.bool get updateCredentialAllowLastNameLifeEvent => $_getBF(18);
  @$pb.TagNumber(19)
  set updateCredentialAllowLastNameLifeEvent($core.bool v) { $_setBool(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasUpdateCredentialAllowLastNameLifeEvent() => $_has(18);
  @$pb.TagNumber(19)
  void clearUpdateCredentialAllowLastNameLifeEvent() => clearField(19);

  @$pb.TagNumber(20)
  $core.bool get updateCredentialAllowGenderChange => $_getBF(19);
  @$pb.TagNumber(20)
  set updateCredentialAllowGenderChange($core.bool v) { $_setBool(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasUpdateCredentialAllowGenderChange() => $_has(19);
  @$pb.TagNumber(20)
  void clearUpdateCredentialAllowGenderChange() => clearField(20);

  /// The AML scan in the enclave (ScanTransaction).  Two rules use these: a single transfer at or
  /// above the threshold, and the rolling-window total from one source to one destination reaching
  /// it.  Like the update-credential block above, an empty string or a zero reads as UNSET on a
  /// chain that predates these params, so SuspiciousPolicyFromParams substitutes the compiled-in
  /// defaults.  It must never interpret them literally: a zero threshold would flag every transfer
  /// and a zero window would expire the history instantly, silently disabling the aggregate rule.
  @$pb.TagNumber(21)
  $core.String get suspiciousTransactionThreshold => $_getSZ(20);
  @$pb.TagNumber(21)
  set suspiciousTransactionThreshold($core.String v) { $_setString(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasSuspiciousTransactionThreshold() => $_has(20);
  @$pb.TagNumber(21)
  void clearSuspiciousTransactionThreshold() => clearField(21);

  /// Length of the rolling window.  Measured against the BLOCK time supplied to the enclave, never
  /// wall clock -- the scan runs on every validator and its verdict decides whether the transfer is
  /// rejected, so a non-deterministic clock here would fork the chain.
  @$pb.TagNumber(22)
  $fixnum.Int64 get suspiciousTransactionWindowSeconds => $_getI64(21);
  @$pb.TagNumber(22)
  set suspiciousTransactionWindowSeconds($fixnum.Int64 v) { $_setInt64(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasSuspiciousTransactionWindowSeconds() => $_has(21);
  @$pb.TagNumber(22)
  void clearSuspiciousTransactionWindowSeconds() => clearField(22);

  /// Per-jurisdiction thresholds, because the reporting limit is a legal number set locally and not
  /// a converted one: PH files at PHP 500,000, the US at USD 10,000.  Anything not listed here falls
  /// back to suspicious_transaction_threshold.
  @$pb.TagNumber(23)
  $core.List<SuspiciousThresholdOverride> get suspiciousTransactionThresholdOverrides => $_getList(22);

  /// Whether a wallet with no claimed credential may send at all.  Named for what it PERMITS so
  /// that proto3's zero value (false) is the ENFORCING state: an unset param must never silently
  /// switch an AML control off, and every other spelling of this flag would do exactly that on a
  /// chain whose params predate it.
  @$pb.TagNumber(24)
  $core.bool get allowTransferWithoutEkyc => $_getBF(23);
  @$pb.TagNumber(24)
  set allowTransferWithoutEkyc($core.bool v) { $_setBool(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasAllowTransferWithoutEkyc() => $_has(23);
  @$pb.TagNumber(24)
  void clearAllowTransferWithoutEkyc() => clearField(24);

  ///  How many identity-bearing fields (first/middle/last name, birthdate, gender) may change in a
  ///  single MsgUpdateCredential.
  ///
  ///  ONE IS THE SAFE VALUE AND THE DEFAULT.  Two simultaneous changes are hard to distinguish from
  ///  substituting one person for another, which is why this was a compiled-in constant until it
  ///  became a param.  A zero here reads as UNSET and yields 1, so a chain whose params predate this
  ///  keeps exactly the behaviour it had.
  ///
  ///  Raising it also weakens the surname life-event rule, which is only safe because the remaining
  ///  identity fields still pin the identity while the surname is replaced wholesale.  A chain that
  ///  allows a life event AND another edit in one update has given up that anchor.
  @$pb.TagNumber(25)
  $core.int get updateCredentialMaxChangedIdentityFields => $_getIZ(24);
  @$pb.TagNumber(25)
  set updateCredentialMaxChangedIdentityFields($core.int v) { $_setUnsignedInt32(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasUpdateCredentialMaxChangedIdentityFields() => $_has(24);
  @$pb.TagNumber(25)
  void clearUpdateCredentialMaxChangedIdentityFields() => clearField(25);
}

/// One jurisdiction's reporting threshold, in that jurisdiction's own currency.
class SuspiciousThresholdOverride extends $pb.GeneratedMessage {
  factory SuspiciousThresholdOverride({
    $core.String? country,
    $core.String? threshold,
  }) {
    final $result = create();
    if (country != null) {
      $result.country = country;
    }
    if (threshold != null) {
      $result.threshold = threshold;
    }
    return $result;
  }
  SuspiciousThresholdOverride._() : super();
  factory SuspiciousThresholdOverride.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SuspiciousThresholdOverride.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SuspiciousThresholdOverride', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'country')
    ..aOS(2, _omitFieldNames ? '' : 'threshold')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SuspiciousThresholdOverride clone() => SuspiciousThresholdOverride()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SuspiciousThresholdOverride copyWith(void Function(SuspiciousThresholdOverride) updates) => super.copyWith((message) => updates(message as SuspiciousThresholdOverride)) as SuspiciousThresholdOverride;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SuspiciousThresholdOverride create() => SuspiciousThresholdOverride._();
  SuspiciousThresholdOverride createEmptyInstance() => create();
  static $pb.PbList<SuspiciousThresholdOverride> createRepeated() => $pb.PbList<SuspiciousThresholdOverride>();
  @$core.pragma('dart2js:noInline')
  static SuspiciousThresholdOverride getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SuspiciousThresholdOverride>(create);
  static SuspiciousThresholdOverride? _defaultInstance;

  /// ISO 3166-1 alpha-2, matching the normalized Citizenship/Residency fields on a credential
  /// (tx_create_credential.go normalizes both through gountries to Alpha2).
  @$pb.TagNumber(1)
  $core.String get country => $_getSZ(0);
  @$pb.TagNumber(1)
  set country($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCountry() => $_has(0);
  @$pb.TagNumber(1)
  void clearCountry() => clearField(1);

  /// e.g. "500000php".  The keeper converts this to a common unit through the pricefeed before the
  /// enclave sees it; the enclave has no pricefeed access of its own.
  @$pb.TagNumber(2)
  $core.String get threshold => $_getSZ(1);
  @$pb.TagNumber(2)
  set threshold($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasThreshold() => $_has(1);
  @$pb.TagNumber(2)
  void clearThreshold() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
