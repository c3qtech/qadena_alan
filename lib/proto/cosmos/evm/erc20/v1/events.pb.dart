//
//  Generated code. Do not modify.
//  source: cosmos/evm/erc20/v1/events.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// EventRegisterPair is an event emitted when a coin is registered.
class EventRegisterPair extends $pb.GeneratedMessage {
  factory EventRegisterPair({
    $core.String? denom,
    $core.String? erc20Address,
  }) {
    final $result = create();
    if (denom != null) {
      $result.denom = denom;
    }
    if (erc20Address != null) {
      $result.erc20Address = erc20Address;
    }
    return $result;
  }
  EventRegisterPair._() : super();
  factory EventRegisterPair.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventRegisterPair.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EventRegisterPair', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.erc20.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'denom')
    ..aOS(2, _omitFieldNames ? '' : 'erc20Address')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EventRegisterPair clone() => EventRegisterPair()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EventRegisterPair copyWith(void Function(EventRegisterPair) updates) => super.copyWith((message) => updates(message as EventRegisterPair)) as EventRegisterPair;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EventRegisterPair create() => EventRegisterPair._();
  EventRegisterPair createEmptyInstance() => create();
  static $pb.PbList<EventRegisterPair> createRepeated() => $pb.PbList<EventRegisterPair>();
  @$core.pragma('dart2js:noInline')
  static EventRegisterPair getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventRegisterPair>(create);
  static EventRegisterPair? _defaultInstance;

  /// denom is the coin's denomination.
  @$pb.TagNumber(1)
  $core.String get denom => $_getSZ(0);
  @$pb.TagNumber(1)
  set denom($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDenom() => $_has(0);
  @$pb.TagNumber(1)
  void clearDenom() => clearField(1);

  /// erc20_address is the ERC20 contract address.
  @$pb.TagNumber(2)
  $core.String get erc20Address => $_getSZ(1);
  @$pb.TagNumber(2)
  set erc20Address($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasErc20Address() => $_has(1);
  @$pb.TagNumber(2)
  void clearErc20Address() => clearField(2);
}

/// EventToggleTokenConversion is an event emitted when a coin's token conversion
/// is toggled.
class EventToggleTokenConversion extends $pb.GeneratedMessage {
  factory EventToggleTokenConversion({
    $core.String? denom,
    $core.String? erc20Address,
  }) {
    final $result = create();
    if (denom != null) {
      $result.denom = denom;
    }
    if (erc20Address != null) {
      $result.erc20Address = erc20Address;
    }
    return $result;
  }
  EventToggleTokenConversion._() : super();
  factory EventToggleTokenConversion.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventToggleTokenConversion.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EventToggleTokenConversion', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.erc20.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'denom')
    ..aOS(2, _omitFieldNames ? '' : 'erc20Address')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EventToggleTokenConversion clone() => EventToggleTokenConversion()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EventToggleTokenConversion copyWith(void Function(EventToggleTokenConversion) updates) => super.copyWith((message) => updates(message as EventToggleTokenConversion)) as EventToggleTokenConversion;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EventToggleTokenConversion create() => EventToggleTokenConversion._();
  EventToggleTokenConversion createEmptyInstance() => create();
  static $pb.PbList<EventToggleTokenConversion> createRepeated() => $pb.PbList<EventToggleTokenConversion>();
  @$core.pragma('dart2js:noInline')
  static EventToggleTokenConversion getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventToggleTokenConversion>(create);
  static EventToggleTokenConversion? _defaultInstance;

  /// denom is the coin's denomination.
  @$pb.TagNumber(1)
  $core.String get denom => $_getSZ(0);
  @$pb.TagNumber(1)
  set denom($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDenom() => $_has(0);
  @$pb.TagNumber(1)
  void clearDenom() => clearField(1);

  /// erc20_address is the ERC20 contract address.
  @$pb.TagNumber(2)
  $core.String get erc20Address => $_getSZ(1);
  @$pb.TagNumber(2)
  set erc20Address($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasErc20Address() => $_has(1);
  @$pb.TagNumber(2)
  void clearErc20Address() => clearField(2);
}

/// EventConvertCoin is an event emitted when a coin is converted.
class EventConvertCoin extends $pb.GeneratedMessage {
  factory EventConvertCoin({
    $core.String? sender,
    $core.String? receiver,
    $core.String? amount,
    $core.String? denom,
    $core.String? erc20Address,
  }) {
    final $result = create();
    if (sender != null) {
      $result.sender = sender;
    }
    if (receiver != null) {
      $result.receiver = receiver;
    }
    if (amount != null) {
      $result.amount = amount;
    }
    if (denom != null) {
      $result.denom = denom;
    }
    if (erc20Address != null) {
      $result.erc20Address = erc20Address;
    }
    return $result;
  }
  EventConvertCoin._() : super();
  factory EventConvertCoin.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventConvertCoin.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EventConvertCoin', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.erc20.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sender')
    ..aOS(2, _omitFieldNames ? '' : 'receiver')
    ..aOS(3, _omitFieldNames ? '' : 'amount')
    ..aOS(4, _omitFieldNames ? '' : 'denom')
    ..aOS(5, _omitFieldNames ? '' : 'erc20Address')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EventConvertCoin clone() => EventConvertCoin()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EventConvertCoin copyWith(void Function(EventConvertCoin) updates) => super.copyWith((message) => updates(message as EventConvertCoin)) as EventConvertCoin;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EventConvertCoin create() => EventConvertCoin._();
  EventConvertCoin createEmptyInstance() => create();
  static $pb.PbList<EventConvertCoin> createRepeated() => $pb.PbList<EventConvertCoin>();
  @$core.pragma('dart2js:noInline')
  static EventConvertCoin getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventConvertCoin>(create);
  static EventConvertCoin? _defaultInstance;

  /// sender is the sender's address.
  @$pb.TagNumber(1)
  $core.String get sender => $_getSZ(0);
  @$pb.TagNumber(1)
  set sender($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSender() => $_has(0);
  @$pb.TagNumber(1)
  void clearSender() => clearField(1);

  /// receiver is the receiver's address.
  @$pb.TagNumber(2)
  $core.String get receiver => $_getSZ(1);
  @$pb.TagNumber(2)
  set receiver($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReceiver() => $_has(1);
  @$pb.TagNumber(2)
  void clearReceiver() => clearField(2);

  /// amount is the amount of coins to be converted.
  @$pb.TagNumber(3)
  $core.String get amount => $_getSZ(2);
  @$pb.TagNumber(3)
  set amount($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmount() => clearField(3);

  /// denom is the coin's denomination.
  @$pb.TagNumber(4)
  $core.String get denom => $_getSZ(3);
  @$pb.TagNumber(4)
  set denom($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDenom() => $_has(3);
  @$pb.TagNumber(4)
  void clearDenom() => clearField(4);

  /// erc20_address is the ERC20 contract address.
  @$pb.TagNumber(5)
  $core.String get erc20Address => $_getSZ(4);
  @$pb.TagNumber(5)
  set erc20Address($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasErc20Address() => $_has(4);
  @$pb.TagNumber(5)
  void clearErc20Address() => clearField(5);
}

/// EventConvertERC20 is an event emitted when an ERC20 is converted.
class EventConvertERC20 extends $pb.GeneratedMessage {
  factory EventConvertERC20({
    $core.String? sender,
    $core.String? receiver,
    $core.String? amount,
    $core.String? denom,
    $core.String? contractAddress,
  }) {
    final $result = create();
    if (sender != null) {
      $result.sender = sender;
    }
    if (receiver != null) {
      $result.receiver = receiver;
    }
    if (amount != null) {
      $result.amount = amount;
    }
    if (denom != null) {
      $result.denom = denom;
    }
    if (contractAddress != null) {
      $result.contractAddress = contractAddress;
    }
    return $result;
  }
  EventConvertERC20._() : super();
  factory EventConvertERC20.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventConvertERC20.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EventConvertERC20', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.erc20.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sender')
    ..aOS(2, _omitFieldNames ? '' : 'receiver')
    ..aOS(3, _omitFieldNames ? '' : 'amount')
    ..aOS(4, _omitFieldNames ? '' : 'denom')
    ..aOS(5, _omitFieldNames ? '' : 'contractAddress')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EventConvertERC20 clone() => EventConvertERC20()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EventConvertERC20 copyWith(void Function(EventConvertERC20) updates) => super.copyWith((message) => updates(message as EventConvertERC20)) as EventConvertERC20;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EventConvertERC20 create() => EventConvertERC20._();
  EventConvertERC20 createEmptyInstance() => create();
  static $pb.PbList<EventConvertERC20> createRepeated() => $pb.PbList<EventConvertERC20>();
  @$core.pragma('dart2js:noInline')
  static EventConvertERC20 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventConvertERC20>(create);
  static EventConvertERC20? _defaultInstance;

  /// sender is the sender's address.
  @$pb.TagNumber(1)
  $core.String get sender => $_getSZ(0);
  @$pb.TagNumber(1)
  set sender($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSender() => $_has(0);
  @$pb.TagNumber(1)
  void clearSender() => clearField(1);

  /// receiver is the receiver's address.
  @$pb.TagNumber(2)
  $core.String get receiver => $_getSZ(1);
  @$pb.TagNumber(2)
  set receiver($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReceiver() => $_has(1);
  @$pb.TagNumber(2)
  void clearReceiver() => clearField(2);

  /// amount is the amount of coins to be converted.
  @$pb.TagNumber(3)
  $core.String get amount => $_getSZ(2);
  @$pb.TagNumber(3)
  set amount($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmount() => clearField(3);

  /// denom is the coin's denomination.
  @$pb.TagNumber(4)
  $core.String get denom => $_getSZ(3);
  @$pb.TagNumber(4)
  set denom($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDenom() => $_has(3);
  @$pb.TagNumber(4)
  void clearDenom() => clearField(4);

  /// contract_address of an ERC20 token contract, that is registered in a token
  /// pair
  @$pb.TagNumber(5)
  $core.String get contractAddress => $_getSZ(4);
  @$pb.TagNumber(5)
  set contractAddress($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasContractAddress() => $_has(4);
  @$pb.TagNumber(5)
  void clearContractAddress() => clearField(5);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
