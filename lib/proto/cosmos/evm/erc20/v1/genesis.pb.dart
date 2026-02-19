//
//  Generated code. Do not modify.
//  source: cosmos/evm/erc20/v1/genesis.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'erc20.pb.dart' as $3;

/// GenesisState defines the module's genesis state.
class GenesisState extends $pb.GeneratedMessage {
  factory GenesisState({
    Params? params,
    $core.Iterable<$3.TokenPair>? tokenPairs,
    $core.Iterable<$3.Allowance>? allowances,
    $core.Iterable<$core.String>? nativePrecompiles,
    $core.Iterable<$core.String>? dynamicPrecompiles,
  }) {
    final $result = create();
    if (params != null) {
      $result.params = params;
    }
    if (tokenPairs != null) {
      $result.tokenPairs.addAll(tokenPairs);
    }
    if (allowances != null) {
      $result.allowances.addAll(allowances);
    }
    if (nativePrecompiles != null) {
      $result.nativePrecompiles.addAll(nativePrecompiles);
    }
    if (dynamicPrecompiles != null) {
      $result.dynamicPrecompiles.addAll(dynamicPrecompiles);
    }
    return $result;
  }
  GenesisState._() : super();
  factory GenesisState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenesisState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GenesisState', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.erc20.v1'), createEmptyInstance: create)
    ..aOM<Params>(1, _omitFieldNames ? '' : 'params', subBuilder: Params.create)
    ..pc<$3.TokenPair>(2, _omitFieldNames ? '' : 'tokenPairs', $pb.PbFieldType.PM, subBuilder: $3.TokenPair.create)
    ..pc<$3.Allowance>(3, _omitFieldNames ? '' : 'allowances', $pb.PbFieldType.PM, subBuilder: $3.Allowance.create)
    ..pPS(4, _omitFieldNames ? '' : 'nativePrecompiles')
    ..pPS(5, _omitFieldNames ? '' : 'dynamicPrecompiles')
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

  /// params are the erc20 module parameters at genesis
  @$pb.TagNumber(1)
  Params get params => $_getN(0);
  @$pb.TagNumber(1)
  set params(Params v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasParams() => $_has(0);
  @$pb.TagNumber(1)
  void clearParams() => clearField(1);
  @$pb.TagNumber(1)
  Params ensureParams() => $_ensure(0);

  /// token_pairs is a slice of the registered token pairs (mappings) at genesis
  @$pb.TagNumber(2)
  $core.List<$3.TokenPair> get tokenPairs => $_getList(1);

  /// allowances is a slice of the registered allowances at genesis
  @$pb.TagNumber(3)
  $core.List<$3.Allowance> get allowances => $_getList(2);

  /// native_precompiles is a slice of registered native precompiles at genesis
  @$pb.TagNumber(4)
  $core.List<$core.String> get nativePrecompiles => $_getList(3);

  /// dynamic_precompiles is a slice of registered dynamic precompiles at genesis
  @$pb.TagNumber(5)
  $core.List<$core.String> get dynamicPrecompiles => $_getList(4);
}

/// Params defines the erc20 module params
class Params extends $pb.GeneratedMessage {
  factory Params({
    $core.bool? enableErc20,
    $core.bool? permissionlessRegistration,
  }) {
    final $result = create();
    if (enableErc20 != null) {
      $result.enableErc20 = enableErc20;
    }
    if (permissionlessRegistration != null) {
      $result.permissionlessRegistration = permissionlessRegistration;
    }
    return $result;
  }
  Params._() : super();
  factory Params.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Params.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Params', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.erc20.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'enableErc20')
    ..aOB(5, _omitFieldNames ? '' : 'permissionlessRegistration')
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

  /// enable_erc20 is the parameter to enable the conversion of Cosmos coins <-->
  /// ERC20 tokens.
  @$pb.TagNumber(1)
  $core.bool get enableErc20 => $_getBF(0);
  @$pb.TagNumber(1)
  set enableErc20($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEnableErc20() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnableErc20() => clearField(1);

  /// permissionless_registration is the parameter that allows ERC20s to be
  /// permissionlessly registered to be converted to bank tokens and vice versa
  @$pb.TagNumber(5)
  $core.bool get permissionlessRegistration => $_getBF(1);
  @$pb.TagNumber(5)
  set permissionlessRegistration($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(5)
  $core.bool hasPermissionlessRegistration() => $_has(1);
  @$pb.TagNumber(5)
  void clearPermissionlessRegistration() => clearField(5);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
