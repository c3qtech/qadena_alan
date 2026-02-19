//
//  Generated code. Do not modify.
//  source: cosmos/evm/precisebank/v1/genesis.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// GenesisState defines the precisebank module's genesis state.
class GenesisState extends $pb.GeneratedMessage {
  factory GenesisState({
    $core.Iterable<FractionalBalance>? balances,
    $core.String? remainder,
  }) {
    final $result = create();
    if (balances != null) {
      $result.balances.addAll(balances);
    }
    if (remainder != null) {
      $result.remainder = remainder;
    }
    return $result;
  }
  GenesisState._() : super();
  factory GenesisState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenesisState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GenesisState', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.precisebank.v1'), createEmptyInstance: create)
    ..pc<FractionalBalance>(1, _omitFieldNames ? '' : 'balances', $pb.PbFieldType.PM, subBuilder: FractionalBalance.create)
    ..aOS(2, _omitFieldNames ? '' : 'remainder')
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

  /// balances is a list of all the balances in the precisebank module.
  @$pb.TagNumber(1)
  $core.List<FractionalBalance> get balances => $_getList(0);

  /// remainder is an internal value of how much extra fractional digits are
  /// still backed by the reserve, but not assigned to any account.
  @$pb.TagNumber(2)
  $core.String get remainder => $_getSZ(1);
  @$pb.TagNumber(2)
  set remainder($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRemainder() => $_has(1);
  @$pb.TagNumber(2)
  void clearRemainder() => clearField(2);
}

/// FractionalBalance defines the fractional portion of an account balance
class FractionalBalance extends $pb.GeneratedMessage {
  factory FractionalBalance({
    $core.String? address,
    $core.String? amount,
  }) {
    final $result = create();
    if (address != null) {
      $result.address = address;
    }
    if (amount != null) {
      $result.amount = amount;
    }
    return $result;
  }
  FractionalBalance._() : super();
  factory FractionalBalance.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FractionalBalance.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FractionalBalance', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.precisebank.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'address')
    ..aOS(2, _omitFieldNames ? '' : 'amount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FractionalBalance clone() => FractionalBalance()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FractionalBalance copyWith(void Function(FractionalBalance) updates) => super.copyWith((message) => updates(message as FractionalBalance)) as FractionalBalance;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FractionalBalance create() => FractionalBalance._();
  FractionalBalance createEmptyInstance() => create();
  static $pb.PbList<FractionalBalance> createRepeated() => $pb.PbList<FractionalBalance>();
  @$core.pragma('dart2js:noInline')
  static FractionalBalance getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FractionalBalance>(create);
  static FractionalBalance? _defaultInstance;

  /// address is the address of the balance holder.
  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  /// amount indicates amount of only the fractional balance owned by the
  /// address. FractionalBalance currently only supports tracking 1 single asset,
  /// e.g. fractional balances of uatom.
  @$pb.TagNumber(2)
  $core.String get amount => $_getSZ(1);
  @$pb.TagNumber(2)
  set amount($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
