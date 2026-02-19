//
//  Generated code. Do not modify.
//  source: cosmos/evm/vm/v1/genesis.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'evm.pb.dart' as $2;

/// GenesisState defines the evm module's genesis state.
class GenesisState extends $pb.GeneratedMessage {
  factory GenesisState({
    $core.Iterable<GenesisAccount>? accounts,
    $2.Params? params,
    $core.Iterable<$2.Preinstall>? preinstalls,
  }) {
    final $result = create();
    if (accounts != null) {
      $result.accounts.addAll(accounts);
    }
    if (params != null) {
      $result.params = params;
    }
    if (preinstalls != null) {
      $result.preinstalls.addAll(preinstalls);
    }
    return $result;
  }
  GenesisState._() : super();
  factory GenesisState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenesisState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GenesisState', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..pc<GenesisAccount>(1, _omitFieldNames ? '' : 'accounts', $pb.PbFieldType.PM, subBuilder: GenesisAccount.create)
    ..aOM<$2.Params>(2, _omitFieldNames ? '' : 'params', subBuilder: $2.Params.create)
    ..pc<$2.Preinstall>(3, _omitFieldNames ? '' : 'preinstalls', $pb.PbFieldType.PM, subBuilder: $2.Preinstall.create)
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

  /// accounts is an array containing the ethereum genesis accounts.
  @$pb.TagNumber(1)
  $core.List<GenesisAccount> get accounts => $_getList(0);

  /// params defines all the parameters of the module.
  @$pb.TagNumber(2)
  $2.Params get params => $_getN(1);
  @$pb.TagNumber(2)
  set params($2.Params v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasParams() => $_has(1);
  @$pb.TagNumber(2)
  void clearParams() => clearField(2);
  @$pb.TagNumber(2)
  $2.Params ensureParams() => $_ensure(1);

  /// preinstalls defines a set of predefined contracts
  @$pb.TagNumber(3)
  $core.List<$2.Preinstall> get preinstalls => $_getList(2);
}

/// GenesisAccount defines an account to be initialized in the genesis state.
/// Its main difference between with Geth's GenesisAccount is that it uses a
/// custom storage type and that it doesn't contain the private key field.
class GenesisAccount extends $pb.GeneratedMessage {
  factory GenesisAccount({
    $core.String? address,
    $core.String? code,
    $core.Iterable<$2.State>? storage,
  }) {
    final $result = create();
    if (address != null) {
      $result.address = address;
    }
    if (code != null) {
      $result.code = code;
    }
    if (storage != null) {
      $result.storage.addAll(storage);
    }
    return $result;
  }
  GenesisAccount._() : super();
  factory GenesisAccount.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenesisAccount.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GenesisAccount', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'address')
    ..aOS(2, _omitFieldNames ? '' : 'code')
    ..pc<$2.State>(3, _omitFieldNames ? '' : 'storage', $pb.PbFieldType.PM, subBuilder: $2.State.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GenesisAccount clone() => GenesisAccount()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GenesisAccount copyWith(void Function(GenesisAccount) updates) => super.copyWith((message) => updates(message as GenesisAccount)) as GenesisAccount;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GenesisAccount create() => GenesisAccount._();
  GenesisAccount createEmptyInstance() => create();
  static $pb.PbList<GenesisAccount> createRepeated() => $pb.PbList<GenesisAccount>();
  @$core.pragma('dart2js:noInline')
  static GenesisAccount getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GenesisAccount>(create);
  static GenesisAccount? _defaultInstance;

  /// address defines an ethereum hex formated address of an account
  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  /// code defines the hex bytes of the account code.
  @$pb.TagNumber(2)
  $core.String get code => $_getSZ(1);
  @$pb.TagNumber(2)
  set code($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => clearField(2);

  /// storage defines the set of state key values for the account.
  @$pb.TagNumber(3)
  $core.List<$2.State> get storage => $_getList(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
