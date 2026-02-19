//
//  Generated code. Do not modify.
//  source: cosmos/evm/vm/v1/evm.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'evm.pbenum.dart';

export 'evm.pbenum.dart';

/// Params defines the EVM module parameters
class Params extends $pb.GeneratedMessage {
  factory Params({
    $core.String? evmDenom,
    $core.Iterable<$fixnum.Int64>? extraEips,
    $core.Iterable<$core.String>? evmChannels,
    AccessControl? accessControl,
    $core.Iterable<$core.String>? activeStaticPrecompiles,
    $fixnum.Int64? historyServeWindow,
    ExtendedDenomOptions? extendedDenomOptions,
  }) {
    final $result = create();
    if (evmDenom != null) {
      $result.evmDenom = evmDenom;
    }
    if (extraEips != null) {
      $result.extraEips.addAll(extraEips);
    }
    if (evmChannels != null) {
      $result.evmChannels.addAll(evmChannels);
    }
    if (accessControl != null) {
      $result.accessControl = accessControl;
    }
    if (activeStaticPrecompiles != null) {
      $result.activeStaticPrecompiles.addAll(activeStaticPrecompiles);
    }
    if (historyServeWindow != null) {
      $result.historyServeWindow = historyServeWindow;
    }
    if (extendedDenomOptions != null) {
      $result.extendedDenomOptions = extendedDenomOptions;
    }
    return $result;
  }
  Params._() : super();
  factory Params.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Params.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Params', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'evmDenom')
    ..p<$fixnum.Int64>(4, _omitFieldNames ? '' : 'extraEips', $pb.PbFieldType.K6)
    ..pPS(7, _omitFieldNames ? '' : 'evmChannels')
    ..aOM<AccessControl>(8, _omitFieldNames ? '' : 'accessControl', subBuilder: AccessControl.create)
    ..pPS(9, _omitFieldNames ? '' : 'activeStaticPrecompiles')
    ..a<$fixnum.Int64>(10, _omitFieldNames ? '' : 'historyServeWindow', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<ExtendedDenomOptions>(11, _omitFieldNames ? '' : 'extendedDenomOptions', subBuilder: ExtendedDenomOptions.create)
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

  /// evm_denom represents the token denomination used to run the EVM state
  /// transitions.
  @$pb.TagNumber(1)
  $core.String get evmDenom => $_getSZ(0);
  @$pb.TagNumber(1)
  set evmDenom($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEvmDenom() => $_has(0);
  @$pb.TagNumber(1)
  void clearEvmDenom() => clearField(1);

  /// extra_eips defines the additional EIPs for the vm.Config
  @$pb.TagNumber(4)
  $core.List<$fixnum.Int64> get extraEips => $_getList(1);

  /// evm_channels is the list of channel identifiers from EVM compatible chains
  @$pb.TagNumber(7)
  $core.List<$core.String> get evmChannels => $_getList(2);

  /// access_control defines the permission policy of the EVM
  @$pb.TagNumber(8)
  AccessControl get accessControl => $_getN(3);
  @$pb.TagNumber(8)
  set accessControl(AccessControl v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasAccessControl() => $_has(3);
  @$pb.TagNumber(8)
  void clearAccessControl() => clearField(8);
  @$pb.TagNumber(8)
  AccessControl ensureAccessControl() => $_ensure(3);

  /// active_static_precompiles defines the slice of hex addresses of the
  /// precompiled contracts that are active
  @$pb.TagNumber(9)
  $core.List<$core.String> get activeStaticPrecompiles => $_getList(4);

  @$pb.TagNumber(10)
  $fixnum.Int64 get historyServeWindow => $_getI64(5);
  @$pb.TagNumber(10)
  set historyServeWindow($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(10)
  $core.bool hasHistoryServeWindow() => $_has(5);
  @$pb.TagNumber(10)
  void clearHistoryServeWindow() => clearField(10);

  @$pb.TagNumber(11)
  ExtendedDenomOptions get extendedDenomOptions => $_getN(6);
  @$pb.TagNumber(11)
  set extendedDenomOptions(ExtendedDenomOptions v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasExtendedDenomOptions() => $_has(6);
  @$pb.TagNumber(11)
  void clearExtendedDenomOptions() => clearField(11);
  @$pb.TagNumber(11)
  ExtendedDenomOptions ensureExtendedDenomOptions() => $_ensure(6);
}

class ExtendedDenomOptions extends $pb.GeneratedMessage {
  factory ExtendedDenomOptions({
    $core.String? extendedDenom,
  }) {
    final $result = create();
    if (extendedDenom != null) {
      $result.extendedDenom = extendedDenom;
    }
    return $result;
  }
  ExtendedDenomOptions._() : super();
  factory ExtendedDenomOptions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExtendedDenomOptions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ExtendedDenomOptions', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'extendedDenom')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExtendedDenomOptions clone() => ExtendedDenomOptions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExtendedDenomOptions copyWith(void Function(ExtendedDenomOptions) updates) => super.copyWith((message) => updates(message as ExtendedDenomOptions)) as ExtendedDenomOptions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExtendedDenomOptions create() => ExtendedDenomOptions._();
  ExtendedDenomOptions createEmptyInstance() => create();
  static $pb.PbList<ExtendedDenomOptions> createRepeated() => $pb.PbList<ExtendedDenomOptions>();
  @$core.pragma('dart2js:noInline')
  static ExtendedDenomOptions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExtendedDenomOptions>(create);
  static ExtendedDenomOptions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get extendedDenom => $_getSZ(0);
  @$pb.TagNumber(1)
  set extendedDenom($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasExtendedDenom() => $_has(0);
  @$pb.TagNumber(1)
  void clearExtendedDenom() => clearField(1);
}

/// AccessControl defines the permission policy of the EVM
/// for creating and calling contracts
class AccessControl extends $pb.GeneratedMessage {
  factory AccessControl({
    AccessControlType? create_1,
    AccessControlType? call,
  }) {
    final $result = create();
    if (create_1 != null) {
      $result.create_1 = create_1;
    }
    if (call != null) {
      $result.call = call;
    }
    return $result;
  }
  AccessControl._() : super();
  factory AccessControl.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccessControl.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AccessControl', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..aOM<AccessControlType>(1, _omitFieldNames ? '' : 'create', subBuilder: AccessControlType.create)
    ..aOM<AccessControlType>(2, _omitFieldNames ? '' : 'call', subBuilder: AccessControlType.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccessControl clone() => AccessControl()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccessControl copyWith(void Function(AccessControl) updates) => super.copyWith((message) => updates(message as AccessControl)) as AccessControl;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccessControl create() => AccessControl._();
  AccessControl createEmptyInstance() => create();
  static $pb.PbList<AccessControl> createRepeated() => $pb.PbList<AccessControl>();
  @$core.pragma('dart2js:noInline')
  static AccessControl getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccessControl>(create);
  static AccessControl? _defaultInstance;

  /// create defines the permission policy for creating contracts
  @$pb.TagNumber(1)
  AccessControlType get create_1 => $_getN(0);
  @$pb.TagNumber(1)
  set create_1(AccessControlType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreate_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreate_1() => clearField(1);
  @$pb.TagNumber(1)
  AccessControlType ensureCreate_1() => $_ensure(0);

  /// call defines the permission policy for calling contracts
  @$pb.TagNumber(2)
  AccessControlType get call => $_getN(1);
  @$pb.TagNumber(2)
  set call(AccessControlType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCall() => $_has(1);
  @$pb.TagNumber(2)
  void clearCall() => clearField(2);
  @$pb.TagNumber(2)
  AccessControlType ensureCall() => $_ensure(1);
}

/// AccessControlType defines the permission type for policies
class AccessControlType extends $pb.GeneratedMessage {
  factory AccessControlType({
    AccessType? accessType,
    $core.Iterable<$core.String>? accessControlList,
  }) {
    final $result = create();
    if (accessType != null) {
      $result.accessType = accessType;
    }
    if (accessControlList != null) {
      $result.accessControlList.addAll(accessControlList);
    }
    return $result;
  }
  AccessControlType._() : super();
  factory AccessControlType.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccessControlType.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AccessControlType', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..e<AccessType>(1, _omitFieldNames ? '' : 'accessType', $pb.PbFieldType.OE, defaultOrMaker: AccessType.ACCESS_TYPE_PERMISSIONLESS, valueOf: AccessType.valueOf, enumValues: AccessType.values)
    ..pPS(2, _omitFieldNames ? '' : 'accessControlList')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccessControlType clone() => AccessControlType()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccessControlType copyWith(void Function(AccessControlType) updates) => super.copyWith((message) => updates(message as AccessControlType)) as AccessControlType;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccessControlType create() => AccessControlType._();
  AccessControlType createEmptyInstance() => create();
  static $pb.PbList<AccessControlType> createRepeated() => $pb.PbList<AccessControlType>();
  @$core.pragma('dart2js:noInline')
  static AccessControlType getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccessControlType>(create);
  static AccessControlType? _defaultInstance;

  /// access_type defines which type of permission is required for the operation
  @$pb.TagNumber(1)
  AccessType get accessType => $_getN(0);
  @$pb.TagNumber(1)
  set accessType(AccessType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessType() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessType() => clearField(1);

  /// access_control_list defines defines different things depending on the
  /// AccessType:
  /// - ACCESS_TYPE_PERMISSIONLESS: list of addresses that are blocked from
  /// performing the operation
  /// - ACCESS_TYPE_RESTRICTED: ignored
  /// - ACCESS_TYPE_PERMISSIONED: list of addresses that are allowed to perform
  /// the operation
  @$pb.TagNumber(2)
  $core.List<$core.String> get accessControlList => $_getList(1);
}

/// ChainConfig defines the Ethereum ChainConfig parameters using *sdk.Int values
/// instead of *big.Int.
class ChainConfig extends $pb.GeneratedMessage {
  factory ChainConfig({
    $core.String? homesteadBlock,
    $core.String? daoForkBlock,
    $core.bool? daoForkSupport,
    $core.String? eip150Block,
    $core.String? eip155Block,
    $core.String? eip158Block,
    $core.String? byzantiumBlock,
    $core.String? constantinopleBlock,
    $core.String? petersburgBlock,
    $core.String? istanbulBlock,
    $core.String? muirGlacierBlock,
    $core.String? berlinBlock,
    $core.String? londonBlock,
    $core.String? arrowGlacierBlock,
    $core.String? grayGlacierBlock,
    $core.String? mergeNetsplitBlock,
    $fixnum.Int64? chainId,
    $core.String? denom,
    $fixnum.Int64? decimals,
    $core.String? shanghaiTime,
    $core.String? cancunTime,
    $core.String? pragueTime,
    $core.String? verkleTime,
    $core.String? osakaTime,
  }) {
    final $result = create();
    if (homesteadBlock != null) {
      $result.homesteadBlock = homesteadBlock;
    }
    if (daoForkBlock != null) {
      $result.daoForkBlock = daoForkBlock;
    }
    if (daoForkSupport != null) {
      $result.daoForkSupport = daoForkSupport;
    }
    if (eip150Block != null) {
      $result.eip150Block = eip150Block;
    }
    if (eip155Block != null) {
      $result.eip155Block = eip155Block;
    }
    if (eip158Block != null) {
      $result.eip158Block = eip158Block;
    }
    if (byzantiumBlock != null) {
      $result.byzantiumBlock = byzantiumBlock;
    }
    if (constantinopleBlock != null) {
      $result.constantinopleBlock = constantinopleBlock;
    }
    if (petersburgBlock != null) {
      $result.petersburgBlock = petersburgBlock;
    }
    if (istanbulBlock != null) {
      $result.istanbulBlock = istanbulBlock;
    }
    if (muirGlacierBlock != null) {
      $result.muirGlacierBlock = muirGlacierBlock;
    }
    if (berlinBlock != null) {
      $result.berlinBlock = berlinBlock;
    }
    if (londonBlock != null) {
      $result.londonBlock = londonBlock;
    }
    if (arrowGlacierBlock != null) {
      $result.arrowGlacierBlock = arrowGlacierBlock;
    }
    if (grayGlacierBlock != null) {
      $result.grayGlacierBlock = grayGlacierBlock;
    }
    if (mergeNetsplitBlock != null) {
      $result.mergeNetsplitBlock = mergeNetsplitBlock;
    }
    if (chainId != null) {
      $result.chainId = chainId;
    }
    if (denom != null) {
      $result.denom = denom;
    }
    if (decimals != null) {
      $result.decimals = decimals;
    }
    if (shanghaiTime != null) {
      $result.shanghaiTime = shanghaiTime;
    }
    if (cancunTime != null) {
      $result.cancunTime = cancunTime;
    }
    if (pragueTime != null) {
      $result.pragueTime = pragueTime;
    }
    if (verkleTime != null) {
      $result.verkleTime = verkleTime;
    }
    if (osakaTime != null) {
      $result.osakaTime = osakaTime;
    }
    return $result;
  }
  ChainConfig._() : super();
  factory ChainConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChainConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChainConfig', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'homesteadBlock')
    ..aOS(2, _omitFieldNames ? '' : 'daoForkBlock')
    ..aOB(3, _omitFieldNames ? '' : 'daoForkSupport')
    ..aOS(4, _omitFieldNames ? '' : 'eip150Block')
    ..aOS(6, _omitFieldNames ? '' : 'eip155Block')
    ..aOS(7, _omitFieldNames ? '' : 'eip158Block')
    ..aOS(8, _omitFieldNames ? '' : 'byzantiumBlock')
    ..aOS(9, _omitFieldNames ? '' : 'constantinopleBlock')
    ..aOS(10, _omitFieldNames ? '' : 'petersburgBlock')
    ..aOS(11, _omitFieldNames ? '' : 'istanbulBlock')
    ..aOS(12, _omitFieldNames ? '' : 'muirGlacierBlock')
    ..aOS(13, _omitFieldNames ? '' : 'berlinBlock')
    ..aOS(17, _omitFieldNames ? '' : 'londonBlock')
    ..aOS(18, _omitFieldNames ? '' : 'arrowGlacierBlock')
    ..aOS(20, _omitFieldNames ? '' : 'grayGlacierBlock')
    ..aOS(21, _omitFieldNames ? '' : 'mergeNetsplitBlock')
    ..a<$fixnum.Int64>(24, _omitFieldNames ? '' : 'chainId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(25, _omitFieldNames ? '' : 'denom')
    ..a<$fixnum.Int64>(26, _omitFieldNames ? '' : 'decimals', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(27, _omitFieldNames ? '' : 'shanghaiTime')
    ..aOS(28, _omitFieldNames ? '' : 'cancunTime')
    ..aOS(29, _omitFieldNames ? '' : 'pragueTime')
    ..aOS(30, _omitFieldNames ? '' : 'verkleTime')
    ..aOS(31, _omitFieldNames ? '' : 'osakaTime')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChainConfig clone() => ChainConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChainConfig copyWith(void Function(ChainConfig) updates) => super.copyWith((message) => updates(message as ChainConfig)) as ChainConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChainConfig create() => ChainConfig._();
  ChainConfig createEmptyInstance() => create();
  static $pb.PbList<ChainConfig> createRepeated() => $pb.PbList<ChainConfig>();
  @$core.pragma('dart2js:noInline')
  static ChainConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChainConfig>(create);
  static ChainConfig? _defaultInstance;

  /// homestead_block switch (nil no fork, 0 = already homestead)
  @$pb.TagNumber(1)
  $core.String get homesteadBlock => $_getSZ(0);
  @$pb.TagNumber(1)
  set homesteadBlock($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHomesteadBlock() => $_has(0);
  @$pb.TagNumber(1)
  void clearHomesteadBlock() => clearField(1);

  /// dao_fork_block corresponds to TheDAO hard-fork switch block (nil no fork)
  @$pb.TagNumber(2)
  $core.String get daoForkBlock => $_getSZ(1);
  @$pb.TagNumber(2)
  set daoForkBlock($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDaoForkBlock() => $_has(1);
  @$pb.TagNumber(2)
  void clearDaoForkBlock() => clearField(2);

  /// dao_fork_support defines whether the nodes supports or opposes the DAO
  /// hard-fork
  @$pb.TagNumber(3)
  $core.bool get daoForkSupport => $_getBF(2);
  @$pb.TagNumber(3)
  set daoForkSupport($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDaoForkSupport() => $_has(2);
  @$pb.TagNumber(3)
  void clearDaoForkSupport() => clearField(3);

  /// eip150_block: EIP150 implements the Gas price changes
  /// (https://github.com/ethereum/EIPs/issues/150) EIP150 HF block (nil no fork)
  @$pb.TagNumber(4)
  $core.String get eip150Block => $_getSZ(3);
  @$pb.TagNumber(4)
  set eip150Block($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEip150Block() => $_has(3);
  @$pb.TagNumber(4)
  void clearEip150Block() => clearField(4);

  /// eip155_block: EIP155Block HF block
  @$pb.TagNumber(6)
  $core.String get eip155Block => $_getSZ(4);
  @$pb.TagNumber(6)
  set eip155Block($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasEip155Block() => $_has(4);
  @$pb.TagNumber(6)
  void clearEip155Block() => clearField(6);

  /// eip158_block: EIP158 HF block
  @$pb.TagNumber(7)
  $core.String get eip158Block => $_getSZ(5);
  @$pb.TagNumber(7)
  set eip158Block($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasEip158Block() => $_has(5);
  @$pb.TagNumber(7)
  void clearEip158Block() => clearField(7);

  /// byzantium_block: Byzantium switch block (nil no fork, 0 = already on
  /// byzantium)
  @$pb.TagNumber(8)
  $core.String get byzantiumBlock => $_getSZ(6);
  @$pb.TagNumber(8)
  set byzantiumBlock($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasByzantiumBlock() => $_has(6);
  @$pb.TagNumber(8)
  void clearByzantiumBlock() => clearField(8);

  /// constantinople_block: Constantinople switch block (nil no fork, 0 = already
  /// activated)
  @$pb.TagNumber(9)
  $core.String get constantinopleBlock => $_getSZ(7);
  @$pb.TagNumber(9)
  set constantinopleBlock($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasConstantinopleBlock() => $_has(7);
  @$pb.TagNumber(9)
  void clearConstantinopleBlock() => clearField(9);

  /// petersburg_block: Petersburg switch block (nil same as Constantinople)
  @$pb.TagNumber(10)
  $core.String get petersburgBlock => $_getSZ(8);
  @$pb.TagNumber(10)
  set petersburgBlock($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasPetersburgBlock() => $_has(8);
  @$pb.TagNumber(10)
  void clearPetersburgBlock() => clearField(10);

  /// istanbul_block: Istanbul switch block (nil no fork, 0 = already on
  /// istanbul)
  @$pb.TagNumber(11)
  $core.String get istanbulBlock => $_getSZ(9);
  @$pb.TagNumber(11)
  set istanbulBlock($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(11)
  $core.bool hasIstanbulBlock() => $_has(9);
  @$pb.TagNumber(11)
  void clearIstanbulBlock() => clearField(11);

  /// muir_glacier_block: Eip-2384 (bomb delay) switch block (nil no fork, 0 =
  /// already activated)
  @$pb.TagNumber(12)
  $core.String get muirGlacierBlock => $_getSZ(10);
  @$pb.TagNumber(12)
  set muirGlacierBlock($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(12)
  $core.bool hasMuirGlacierBlock() => $_has(10);
  @$pb.TagNumber(12)
  void clearMuirGlacierBlock() => clearField(12);

  /// berlin_block: Berlin switch block (nil = no fork, 0 = already on berlin)
  @$pb.TagNumber(13)
  $core.String get berlinBlock => $_getSZ(11);
  @$pb.TagNumber(13)
  set berlinBlock($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(13)
  $core.bool hasBerlinBlock() => $_has(11);
  @$pb.TagNumber(13)
  void clearBerlinBlock() => clearField(13);

  /// london_block: London switch block (nil = no fork, 0 = already on london)
  @$pb.TagNumber(17)
  $core.String get londonBlock => $_getSZ(12);
  @$pb.TagNumber(17)
  set londonBlock($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(17)
  $core.bool hasLondonBlock() => $_has(12);
  @$pb.TagNumber(17)
  void clearLondonBlock() => clearField(17);

  /// arrow_glacier_block: Eip-4345 (bomb delay) switch block (nil = no fork, 0 =
  /// already activated)
  @$pb.TagNumber(18)
  $core.String get arrowGlacierBlock => $_getSZ(13);
  @$pb.TagNumber(18)
  set arrowGlacierBlock($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(18)
  $core.bool hasArrowGlacierBlock() => $_has(13);
  @$pb.TagNumber(18)
  void clearArrowGlacierBlock() => clearField(18);

  /// gray_glacier_block: EIP-5133 (bomb delay) switch block (nil = no fork, 0 =
  /// already activated)
  @$pb.TagNumber(20)
  $core.String get grayGlacierBlock => $_getSZ(14);
  @$pb.TagNumber(20)
  set grayGlacierBlock($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(20)
  $core.bool hasGrayGlacierBlock() => $_has(14);
  @$pb.TagNumber(20)
  void clearGrayGlacierBlock() => clearField(20);

  /// merge_netsplit_block: Virtual fork after The Merge to use as a network
  /// splitter
  @$pb.TagNumber(21)
  $core.String get mergeNetsplitBlock => $_getSZ(15);
  @$pb.TagNumber(21)
  set mergeNetsplitBlock($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(21)
  $core.bool hasMergeNetsplitBlock() => $_has(15);
  @$pb.TagNumber(21)
  void clearMergeNetsplitBlock() => clearField(21);

  /// chain_id is the id of the chain (EIP-155)
  @$pb.TagNumber(24)
  $fixnum.Int64 get chainId => $_getI64(16);
  @$pb.TagNumber(24)
  set chainId($fixnum.Int64 v) { $_setInt64(16, v); }
  @$pb.TagNumber(24)
  $core.bool hasChainId() => $_has(16);
  @$pb.TagNumber(24)
  void clearChainId() => clearField(24);

  /// denom is the denomination used on the EVM
  @$pb.TagNumber(25)
  $core.String get denom => $_getSZ(17);
  @$pb.TagNumber(25)
  set denom($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(25)
  $core.bool hasDenom() => $_has(17);
  @$pb.TagNumber(25)
  void clearDenom() => clearField(25);

  /// decimals is the real decimal precision of the denomination used on the EVM
  @$pb.TagNumber(26)
  $fixnum.Int64 get decimals => $_getI64(18);
  @$pb.TagNumber(26)
  set decimals($fixnum.Int64 v) { $_setInt64(18, v); }
  @$pb.TagNumber(26)
  $core.bool hasDecimals() => $_has(18);
  @$pb.TagNumber(26)
  void clearDecimals() => clearField(26);

  /// shanghai_time: Shanghai switch time (nil = no fork, 0 = already on
  /// shanghai)
  @$pb.TagNumber(27)
  $core.String get shanghaiTime => $_getSZ(19);
  @$pb.TagNumber(27)
  set shanghaiTime($core.String v) { $_setString(19, v); }
  @$pb.TagNumber(27)
  $core.bool hasShanghaiTime() => $_has(19);
  @$pb.TagNumber(27)
  void clearShanghaiTime() => clearField(27);

  /// cancun_time: Cancun switch time (nil = no fork, 0 = already on cancun)
  @$pb.TagNumber(28)
  $core.String get cancunTime => $_getSZ(20);
  @$pb.TagNumber(28)
  set cancunTime($core.String v) { $_setString(20, v); }
  @$pb.TagNumber(28)
  $core.bool hasCancunTime() => $_has(20);
  @$pb.TagNumber(28)
  void clearCancunTime() => clearField(28);

  /// prague_time: Prague switch time (nil = no fork, 0 = already on prague)
  @$pb.TagNumber(29)
  $core.String get pragueTime => $_getSZ(21);
  @$pb.TagNumber(29)
  set pragueTime($core.String v) { $_setString(21, v); }
  @$pb.TagNumber(29)
  $core.bool hasPragueTime() => $_has(21);
  @$pb.TagNumber(29)
  void clearPragueTime() => clearField(29);

  /// verkle_time: Verkle switch time (nil = no fork, 0 = already on verkle)
  @$pb.TagNumber(30)
  $core.String get verkleTime => $_getSZ(22);
  @$pb.TagNumber(30)
  set verkleTime($core.String v) { $_setString(22, v); }
  @$pb.TagNumber(30)
  $core.bool hasVerkleTime() => $_has(22);
  @$pb.TagNumber(30)
  void clearVerkleTime() => clearField(30);

  /// osaka_time: Osaka switch time (nil = no fork, 0 = already on osaka)
  @$pb.TagNumber(31)
  $core.String get osakaTime => $_getSZ(23);
  @$pb.TagNumber(31)
  set osakaTime($core.String v) { $_setString(23, v); }
  @$pb.TagNumber(31)
  $core.bool hasOsakaTime() => $_has(23);
  @$pb.TagNumber(31)
  void clearOsakaTime() => clearField(31);
}

/// State represents a single Storage key value pair item.
class State extends $pb.GeneratedMessage {
  factory State({
    $core.String? key,
    $core.String? value,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  State._() : super();
  factory State.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory State.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'State', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..aOS(2, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  State clone() => State()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  State copyWith(void Function(State) updates) => super.copyWith((message) => updates(message as State)) as State;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static State create() => State._();
  State createEmptyInstance() => create();
  static $pb.PbList<State> createRepeated() => $pb.PbList<State>();
  @$core.pragma('dart2js:noInline')
  static State getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<State>(create);
  static State? _defaultInstance;

  /// key is the stored key
  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  /// value is the stored value for the given key
  @$pb.TagNumber(2)
  $core.String get value => $_getSZ(1);
  @$pb.TagNumber(2)
  set value($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
}

/// TransactionLogs define the logs generated from a transaction execution
/// with a given hash. It it used for import/export data as transactions are not
/// persisted on blockchain state after an upgrade.
class TransactionLogs extends $pb.GeneratedMessage {
  factory TransactionLogs({
    $core.String? hash,
    $core.Iterable<Log>? logs,
  }) {
    final $result = create();
    if (hash != null) {
      $result.hash = hash;
    }
    if (logs != null) {
      $result.logs.addAll(logs);
    }
    return $result;
  }
  TransactionLogs._() : super();
  factory TransactionLogs.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransactionLogs.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TransactionLogs', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'hash')
    ..pc<Log>(2, _omitFieldNames ? '' : 'logs', $pb.PbFieldType.PM, subBuilder: Log.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransactionLogs clone() => TransactionLogs()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransactionLogs copyWith(void Function(TransactionLogs) updates) => super.copyWith((message) => updates(message as TransactionLogs)) as TransactionLogs;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransactionLogs create() => TransactionLogs._();
  TransactionLogs createEmptyInstance() => create();
  static $pb.PbList<TransactionLogs> createRepeated() => $pb.PbList<TransactionLogs>();
  @$core.pragma('dart2js:noInline')
  static TransactionLogs getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransactionLogs>(create);
  static TransactionLogs? _defaultInstance;

  /// hash of the transaction
  @$pb.TagNumber(1)
  $core.String get hash => $_getSZ(0);
  @$pb.TagNumber(1)
  set hash($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearHash() => clearField(1);

  /// logs is an array of Logs for the given transaction hash
  @$pb.TagNumber(2)
  $core.List<Log> get logs => $_getList(1);
}

///  Log represents an protobuf compatible Ethereum Log that defines a contract
///  log event. These events are generated by the LOG opcode and stored/indexed by
///  the node.
///
///  NOTE: address, topics and data are consensus fields. The rest of the fields
///  are derived, i.e. filled in by the nodes, but not secured by consensus.
class Log extends $pb.GeneratedMessage {
  factory Log({
    $core.String? address,
    $core.Iterable<$core.String>? topics,
    $core.List<$core.int>? data,
    $fixnum.Int64? blockNumber,
    $core.String? txHash,
    $fixnum.Int64? txIndex,
    $core.String? blockHash,
    $fixnum.Int64? index,
    $core.bool? removed,
    $fixnum.Int64? blockTimestamp,
  }) {
    final $result = create();
    if (address != null) {
      $result.address = address;
    }
    if (topics != null) {
      $result.topics.addAll(topics);
    }
    if (data != null) {
      $result.data = data;
    }
    if (blockNumber != null) {
      $result.blockNumber = blockNumber;
    }
    if (txHash != null) {
      $result.txHash = txHash;
    }
    if (txIndex != null) {
      $result.txIndex = txIndex;
    }
    if (blockHash != null) {
      $result.blockHash = blockHash;
    }
    if (index != null) {
      $result.index = index;
    }
    if (removed != null) {
      $result.removed = removed;
    }
    if (blockTimestamp != null) {
      $result.blockTimestamp = blockTimestamp;
    }
    return $result;
  }
  Log._() : super();
  factory Log.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Log.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Log', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'address')
    ..pPS(2, _omitFieldNames ? '' : 'topics')
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(4, _omitFieldNames ? '' : 'blockNumber', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(5, _omitFieldNames ? '' : 'txHash')
    ..a<$fixnum.Int64>(6, _omitFieldNames ? '' : 'txIndex', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(7, _omitFieldNames ? '' : 'blockHash')
    ..a<$fixnum.Int64>(8, _omitFieldNames ? '' : 'index', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(9, _omitFieldNames ? '' : 'removed')
    ..a<$fixnum.Int64>(10, _omitFieldNames ? '' : 'blockTimestamp', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Log clone() => Log()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Log copyWith(void Function(Log) updates) => super.copyWith((message) => updates(message as Log)) as Log;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Log create() => Log._();
  Log createEmptyInstance() => create();
  static $pb.PbList<Log> createRepeated() => $pb.PbList<Log>();
  @$core.pragma('dart2js:noInline')
  static Log getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Log>(create);
  static Log? _defaultInstance;

  /// address of the contract that generated the event
  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  /// topics is a list of topics provided by the contract.
  @$pb.TagNumber(2)
  $core.List<$core.String> get topics => $_getList(1);

  /// data which is supplied by the contract, usually ABI-encoded
  @$pb.TagNumber(3)
  $core.List<$core.int> get data => $_getN(2);
  @$pb.TagNumber(3)
  set data($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasData() => $_has(2);
  @$pb.TagNumber(3)
  void clearData() => clearField(3);

  /// block_number of the block in which the transaction was included
  @$pb.TagNumber(4)
  $fixnum.Int64 get blockNumber => $_getI64(3);
  @$pb.TagNumber(4)
  set blockNumber($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBlockNumber() => $_has(3);
  @$pb.TagNumber(4)
  void clearBlockNumber() => clearField(4);

  /// tx_hash is the transaction hash
  @$pb.TagNumber(5)
  $core.String get txHash => $_getSZ(4);
  @$pb.TagNumber(5)
  set txHash($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTxHash() => $_has(4);
  @$pb.TagNumber(5)
  void clearTxHash() => clearField(5);

  /// tx_index of the transaction in the block
  @$pb.TagNumber(6)
  $fixnum.Int64 get txIndex => $_getI64(5);
  @$pb.TagNumber(6)
  set txIndex($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTxIndex() => $_has(5);
  @$pb.TagNumber(6)
  void clearTxIndex() => clearField(6);

  /// block_hash of the block in which the transaction was included
  @$pb.TagNumber(7)
  $core.String get blockHash => $_getSZ(6);
  @$pb.TagNumber(7)
  set blockHash($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasBlockHash() => $_has(6);
  @$pb.TagNumber(7)
  void clearBlockHash() => clearField(7);

  /// index of the log in the block
  @$pb.TagNumber(8)
  $fixnum.Int64 get index => $_getI64(7);
  @$pb.TagNumber(8)
  set index($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasIndex() => $_has(7);
  @$pb.TagNumber(8)
  void clearIndex() => clearField(8);

  /// removed is true if this log was reverted due to a chain
  /// reorganisation. You must pay attention to this field if you receive logs
  /// through a filter query.
  @$pb.TagNumber(9)
  $core.bool get removed => $_getBF(8);
  @$pb.TagNumber(9)
  set removed($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasRemoved() => $_has(8);
  @$pb.TagNumber(9)
  void clearRemoved() => clearField(9);

  /// block_timestamp is the timestamp of the block in which the transaction was
  @$pb.TagNumber(10)
  $fixnum.Int64 get blockTimestamp => $_getI64(9);
  @$pb.TagNumber(10)
  set blockTimestamp($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasBlockTimestamp() => $_has(9);
  @$pb.TagNumber(10)
  void clearBlockTimestamp() => clearField(10);
}

/// TxResult stores results of Tx execution.
class TxResult extends $pb.GeneratedMessage {
  factory TxResult({
    $core.String? contractAddress,
    $core.List<$core.int>? bloom,
    TransactionLogs? txLogs,
    $core.List<$core.int>? ret,
    $core.bool? reverted,
    $fixnum.Int64? gasUsed,
  }) {
    final $result = create();
    if (contractAddress != null) {
      $result.contractAddress = contractAddress;
    }
    if (bloom != null) {
      $result.bloom = bloom;
    }
    if (txLogs != null) {
      $result.txLogs = txLogs;
    }
    if (ret != null) {
      $result.ret = ret;
    }
    if (reverted != null) {
      $result.reverted = reverted;
    }
    if (gasUsed != null) {
      $result.gasUsed = gasUsed;
    }
    return $result;
  }
  TxResult._() : super();
  factory TxResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TxResult', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractAddress')
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'bloom', $pb.PbFieldType.OY)
    ..aOM<TransactionLogs>(3, _omitFieldNames ? '' : 'txLogs', subBuilder: TransactionLogs.create)
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'ret', $pb.PbFieldType.OY)
    ..aOB(5, _omitFieldNames ? '' : 'reverted')
    ..a<$fixnum.Int64>(6, _omitFieldNames ? '' : 'gasUsed', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TxResult clone() => TxResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TxResult copyWith(void Function(TxResult) updates) => super.copyWith((message) => updates(message as TxResult)) as TxResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TxResult create() => TxResult._();
  TxResult createEmptyInstance() => create();
  static $pb.PbList<TxResult> createRepeated() => $pb.PbList<TxResult>();
  @$core.pragma('dart2js:noInline')
  static TxResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxResult>(create);
  static TxResult? _defaultInstance;

  /// contract_address contains the ethereum address of the created contract (if
  /// any). If the state transition is an evm.Call, the contract address will be
  /// empty.
  @$pb.TagNumber(1)
  $core.String get contractAddress => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractAddress($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasContractAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractAddress() => clearField(1);

  /// bloom represents the bloom filter bytes
  @$pb.TagNumber(2)
  $core.List<$core.int> get bloom => $_getN(1);
  @$pb.TagNumber(2)
  set bloom($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBloom() => $_has(1);
  @$pb.TagNumber(2)
  void clearBloom() => clearField(2);

  /// tx_logs contains the transaction hash and the proto-compatible ethereum
  /// logs.
  @$pb.TagNumber(3)
  TransactionLogs get txLogs => $_getN(2);
  @$pb.TagNumber(3)
  set txLogs(TransactionLogs v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTxLogs() => $_has(2);
  @$pb.TagNumber(3)
  void clearTxLogs() => clearField(3);
  @$pb.TagNumber(3)
  TransactionLogs ensureTxLogs() => $_ensure(2);

  /// ret defines the bytes from the execution.
  @$pb.TagNumber(4)
  $core.List<$core.int> get ret => $_getN(3);
  @$pb.TagNumber(4)
  set ret($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRet() => $_has(3);
  @$pb.TagNumber(4)
  void clearRet() => clearField(4);

  /// reverted flag is set to true when the call has been reverted
  @$pb.TagNumber(5)
  $core.bool get reverted => $_getBF(4);
  @$pb.TagNumber(5)
  set reverted($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasReverted() => $_has(4);
  @$pb.TagNumber(5)
  void clearReverted() => clearField(5);

  /// gas_used notes the amount of gas consumed while execution
  @$pb.TagNumber(6)
  $fixnum.Int64 get gasUsed => $_getI64(5);
  @$pb.TagNumber(6)
  set gasUsed($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasGasUsed() => $_has(5);
  @$pb.TagNumber(6)
  void clearGasUsed() => clearField(6);
}

/// AccessTuple is the element type of an access list.
class AccessTuple extends $pb.GeneratedMessage {
  factory AccessTuple({
    $core.String? address,
    $core.Iterable<$core.String>? storageKeys,
  }) {
    final $result = create();
    if (address != null) {
      $result.address = address;
    }
    if (storageKeys != null) {
      $result.storageKeys.addAll(storageKeys);
    }
    return $result;
  }
  AccessTuple._() : super();
  factory AccessTuple.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccessTuple.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AccessTuple', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'address')
    ..pPS(2, _omitFieldNames ? '' : 'storageKeys')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccessTuple clone() => AccessTuple()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccessTuple copyWith(void Function(AccessTuple) updates) => super.copyWith((message) => updates(message as AccessTuple)) as AccessTuple;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccessTuple create() => AccessTuple._();
  AccessTuple createEmptyInstance() => create();
  static $pb.PbList<AccessTuple> createRepeated() => $pb.PbList<AccessTuple>();
  @$core.pragma('dart2js:noInline')
  static AccessTuple getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccessTuple>(create);
  static AccessTuple? _defaultInstance;

  /// address is a hex formatted ethereum address
  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  /// storage_keys are hex formatted hashes of the storage keys
  @$pb.TagNumber(2)
  $core.List<$core.String> get storageKeys => $_getList(1);
}

/// TraceConfig holds extra parameters to trace functions.
class TraceConfig extends $pb.GeneratedMessage {
  factory TraceConfig({
    $core.String? tracer,
    $core.String? timeout,
    $fixnum.Int64? reexec,
    $core.bool? disableStack,
    $core.bool? disableStorage,
    $core.bool? debug,
    $core.int? limit,
    ChainConfig? overrides,
    $core.bool? enableMemory,
    $core.bool? enableReturnData,
    $core.String? tracerJsonConfig,
  }) {
    final $result = create();
    if (tracer != null) {
      $result.tracer = tracer;
    }
    if (timeout != null) {
      $result.timeout = timeout;
    }
    if (reexec != null) {
      $result.reexec = reexec;
    }
    if (disableStack != null) {
      $result.disableStack = disableStack;
    }
    if (disableStorage != null) {
      $result.disableStorage = disableStorage;
    }
    if (debug != null) {
      $result.debug = debug;
    }
    if (limit != null) {
      $result.limit = limit;
    }
    if (overrides != null) {
      $result.overrides = overrides;
    }
    if (enableMemory != null) {
      $result.enableMemory = enableMemory;
    }
    if (enableReturnData != null) {
      $result.enableReturnData = enableReturnData;
    }
    if (tracerJsonConfig != null) {
      $result.tracerJsonConfig = tracerJsonConfig;
    }
    return $result;
  }
  TraceConfig._() : super();
  factory TraceConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TraceConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TraceConfig', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'tracer')
    ..aOS(2, _omitFieldNames ? '' : 'timeout')
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'reexec', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(5, _omitFieldNames ? '' : 'disableStack')
    ..aOB(6, _omitFieldNames ? '' : 'disableStorage')
    ..aOB(8, _omitFieldNames ? '' : 'debug')
    ..a<$core.int>(9, _omitFieldNames ? '' : 'limit', $pb.PbFieldType.O3)
    ..aOM<ChainConfig>(10, _omitFieldNames ? '' : 'overrides', subBuilder: ChainConfig.create)
    ..aOB(11, _omitFieldNames ? '' : 'enableMemory')
    ..aOB(12, _omitFieldNames ? '' : 'enableReturnData')
    ..aOS(13, _omitFieldNames ? '' : 'tracerJsonConfig')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TraceConfig clone() => TraceConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TraceConfig copyWith(void Function(TraceConfig) updates) => super.copyWith((message) => updates(message as TraceConfig)) as TraceConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TraceConfig create() => TraceConfig._();
  TraceConfig createEmptyInstance() => create();
  static $pb.PbList<TraceConfig> createRepeated() => $pb.PbList<TraceConfig>();
  @$core.pragma('dart2js:noInline')
  static TraceConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TraceConfig>(create);
  static TraceConfig? _defaultInstance;

  /// tracer is a custom javascript tracer
  @$pb.TagNumber(1)
  $core.String get tracer => $_getSZ(0);
  @$pb.TagNumber(1)
  set tracer($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTracer() => $_has(0);
  @$pb.TagNumber(1)
  void clearTracer() => clearField(1);

  /// timeout overrides the default timeout of 5 seconds for JavaScript-based
  /// tracing calls
  @$pb.TagNumber(2)
  $core.String get timeout => $_getSZ(1);
  @$pb.TagNumber(2)
  set timeout($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTimeout() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimeout() => clearField(2);

  /// reexec defines the number of blocks the tracer is willing to go back
  @$pb.TagNumber(3)
  $fixnum.Int64 get reexec => $_getI64(2);
  @$pb.TagNumber(3)
  set reexec($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasReexec() => $_has(2);
  @$pb.TagNumber(3)
  void clearReexec() => clearField(3);

  /// disable_stack switches stack capture
  @$pb.TagNumber(5)
  $core.bool get disableStack => $_getBF(3);
  @$pb.TagNumber(5)
  set disableStack($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasDisableStack() => $_has(3);
  @$pb.TagNumber(5)
  void clearDisableStack() => clearField(5);

  /// disable_storage switches storage capture
  @$pb.TagNumber(6)
  $core.bool get disableStorage => $_getBF(4);
  @$pb.TagNumber(6)
  set disableStorage($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasDisableStorage() => $_has(4);
  @$pb.TagNumber(6)
  void clearDisableStorage() => clearField(6);

  /// debug can be used to print output during capture end
  @$pb.TagNumber(8)
  $core.bool get debug => $_getBF(5);
  @$pb.TagNumber(8)
  set debug($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(8)
  $core.bool hasDebug() => $_has(5);
  @$pb.TagNumber(8)
  void clearDebug() => clearField(8);

  /// limit defines the maximum length of output, but zero means unlimited
  @$pb.TagNumber(9)
  $core.int get limit => $_getIZ(6);
  @$pb.TagNumber(9)
  set limit($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(9)
  $core.bool hasLimit() => $_has(6);
  @$pb.TagNumber(9)
  void clearLimit() => clearField(9);

  /// overrides can be used to execute a trace using future fork rules
  @$pb.TagNumber(10)
  ChainConfig get overrides => $_getN(7);
  @$pb.TagNumber(10)
  set overrides(ChainConfig v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasOverrides() => $_has(7);
  @$pb.TagNumber(10)
  void clearOverrides() => clearField(10);
  @$pb.TagNumber(10)
  ChainConfig ensureOverrides() => $_ensure(7);

  /// enable_memory switches memory capture
  @$pb.TagNumber(11)
  $core.bool get enableMemory => $_getBF(8);
  @$pb.TagNumber(11)
  set enableMemory($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(11)
  $core.bool hasEnableMemory() => $_has(8);
  @$pb.TagNumber(11)
  void clearEnableMemory() => clearField(11);

  /// enable_return_data switches the capture of return data
  @$pb.TagNumber(12)
  $core.bool get enableReturnData => $_getBF(9);
  @$pb.TagNumber(12)
  set enableReturnData($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(12)
  $core.bool hasEnableReturnData() => $_has(9);
  @$pb.TagNumber(12)
  void clearEnableReturnData() => clearField(12);

  /// tracer_json_config configures the tracer using a JSON string
  @$pb.TagNumber(13)
  $core.String get tracerJsonConfig => $_getSZ(10);
  @$pb.TagNumber(13)
  set tracerJsonConfig($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(13)
  $core.bool hasTracerJsonConfig() => $_has(10);
  @$pb.TagNumber(13)
  void clearTracerJsonConfig() => clearField(13);
}

/// Preinstall defines a contract that is preinstalled on-chain with a specific
/// contract address and bytecode
class Preinstall extends $pb.GeneratedMessage {
  factory Preinstall({
    $core.String? name,
    $core.String? address,
    $core.String? code,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (address != null) {
      $result.address = address;
    }
    if (code != null) {
      $result.code = code;
    }
    return $result;
  }
  Preinstall._() : super();
  factory Preinstall.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Preinstall.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Preinstall', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'address')
    ..aOS(3, _omitFieldNames ? '' : 'code')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Preinstall clone() => Preinstall()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Preinstall copyWith(void Function(Preinstall) updates) => super.copyWith((message) => updates(message as Preinstall)) as Preinstall;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Preinstall create() => Preinstall._();
  Preinstall createEmptyInstance() => create();
  static $pb.PbList<Preinstall> createRepeated() => $pb.PbList<Preinstall>();
  @$core.pragma('dart2js:noInline')
  static Preinstall getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Preinstall>(create);
  static Preinstall? _defaultInstance;

  /// name of the preinstall contract
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  /// address in hex format of the preinstall contract
  @$pb.TagNumber(2)
  $core.String get address => $_getSZ(1);
  @$pb.TagNumber(2)
  set address($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearAddress() => clearField(2);

  /// code in hex format for the preinstall contract
  @$pb.TagNumber(3)
  $core.String get code => $_getSZ(2);
  @$pb.TagNumber(3)
  set code($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearCode() => clearField(3);
}

class EvmCoinInfo extends $pb.GeneratedMessage {
  factory EvmCoinInfo({
    $core.String? denom,
    $core.String? extendedDenom,
    $core.String? displayDenom,
    $core.int? decimals,
  }) {
    final $result = create();
    if (denom != null) {
      $result.denom = denom;
    }
    if (extendedDenom != null) {
      $result.extendedDenom = extendedDenom;
    }
    if (displayDenom != null) {
      $result.displayDenom = displayDenom;
    }
    if (decimals != null) {
      $result.decimals = decimals;
    }
    return $result;
  }
  EvmCoinInfo._() : super();
  factory EvmCoinInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EvmCoinInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EvmCoinInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'denom')
    ..aOS(2, _omitFieldNames ? '' : 'extendedDenom')
    ..aOS(3, _omitFieldNames ? '' : 'displayDenom')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'decimals', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EvmCoinInfo clone() => EvmCoinInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EvmCoinInfo copyWith(void Function(EvmCoinInfo) updates) => super.copyWith((message) => updates(message as EvmCoinInfo)) as EvmCoinInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EvmCoinInfo create() => EvmCoinInfo._();
  EvmCoinInfo createEmptyInstance() => create();
  static $pb.PbList<EvmCoinInfo> createRepeated() => $pb.PbList<EvmCoinInfo>();
  @$core.pragma('dart2js:noInline')
  static EvmCoinInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EvmCoinInfo>(create);
  static EvmCoinInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get denom => $_getSZ(0);
  @$pb.TagNumber(1)
  set denom($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDenom() => $_has(0);
  @$pb.TagNumber(1)
  void clearDenom() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get extendedDenom => $_getSZ(1);
  @$pb.TagNumber(2)
  set extendedDenom($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasExtendedDenom() => $_has(1);
  @$pb.TagNumber(2)
  void clearExtendedDenom() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get displayDenom => $_getSZ(2);
  @$pb.TagNumber(3)
  set displayDenom($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDisplayDenom() => $_has(2);
  @$pb.TagNumber(3)
  void clearDisplayDenom() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get decimals => $_getIZ(3);
  @$pb.TagNumber(4)
  set decimals($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDecimals() => $_has(3);
  @$pb.TagNumber(4)
  void clearDecimals() => clearField(4);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
