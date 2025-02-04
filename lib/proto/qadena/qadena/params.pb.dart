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

import 'package:protobuf/protobuf.dart' as $pb;

import '../../cosmos/base/v1beta1/coin.pb.dart' as $14;

/// Params defines the parameters for the module.
class Params extends $pb.GeneratedMessage {
  factory Params({
    $14.Coin? createWalletIncentive,
    $14.Coin? createEphemeralWalletIncentive,
    $14.Coin? createWalletTransparentIncentive,
    $14.Coin? createEphemeralWalletTransparentIncentive,
    $core.String? createCredentialFee,
    $core.String? ekycSubmitNewAppRoyaltyPercentage,
    $core.String? ekycSubmitReuseAppRoyaltyPercentage,
    $core.String? ekycSubmitReuseProviderRoyaltyPercentage,
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
    return $result;
  }
  Params._() : super();
  factory Params.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Params.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Params', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOM<$14.Coin>(1, _omitFieldNames ? '' : 'createWalletIncentive', subBuilder: $14.Coin.create)
    ..aOM<$14.Coin>(2, _omitFieldNames ? '' : 'createEphemeralWalletIncentive', subBuilder: $14.Coin.create)
    ..aOM<$14.Coin>(3, _omitFieldNames ? '' : 'createWalletTransparentIncentive', subBuilder: $14.Coin.create)
    ..aOM<$14.Coin>(4, _omitFieldNames ? '' : 'createEphemeralWalletTransparentIncentive', subBuilder: $14.Coin.create)
    ..aOS(5, _omitFieldNames ? '' : 'createCredentialFee')
    ..aOS(6, _omitFieldNames ? '' : 'ekycSubmitNewAppRoyaltyPercentage')
    ..aOS(7, _omitFieldNames ? '' : 'ekycSubmitReuseAppRoyaltyPercentage')
    ..aOS(8, _omitFieldNames ? '' : 'ekycSubmitReuseProviderRoyaltyPercentage')
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
  $14.Coin get createWalletIncentive => $_getN(0);
  @$pb.TagNumber(1)
  set createWalletIncentive($14.Coin v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreateWalletIncentive() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreateWalletIncentive() => clearField(1);
  @$pb.TagNumber(1)
  $14.Coin ensureCreateWalletIncentive() => $_ensure(0);

  @$pb.TagNumber(2)
  $14.Coin get createEphemeralWalletIncentive => $_getN(1);
  @$pb.TagNumber(2)
  set createEphemeralWalletIncentive($14.Coin v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreateEphemeralWalletIncentive() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreateEphemeralWalletIncentive() => clearField(2);
  @$pb.TagNumber(2)
  $14.Coin ensureCreateEphemeralWalletIncentive() => $_ensure(1);

  @$pb.TagNumber(3)
  $14.Coin get createWalletTransparentIncentive => $_getN(2);
  @$pb.TagNumber(3)
  set createWalletTransparentIncentive($14.Coin v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCreateWalletTransparentIncentive() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreateWalletTransparentIncentive() => clearField(3);
  @$pb.TagNumber(3)
  $14.Coin ensureCreateWalletTransparentIncentive() => $_ensure(2);

  @$pb.TagNumber(4)
  $14.Coin get createEphemeralWalletTransparentIncentive => $_getN(3);
  @$pb.TagNumber(4)
  set createEphemeralWalletTransparentIncentive($14.Coin v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCreateEphemeralWalletTransparentIncentive() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreateEphemeralWalletTransparentIncentive() => clearField(4);
  @$pb.TagNumber(4)
  $14.Coin ensureCreateEphemeralWalletTransparentIncentive() => $_ensure(3);

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
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
