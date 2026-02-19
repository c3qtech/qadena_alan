//
//  Generated code. Do not modify.
//  source: cosmos/evm/erc20/v1/tx.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../base/v1beta1/coin.pb.dart' as $4;
import 'genesis.pb.dart' as $5;

/// MsgConvertERC20 defines a Msg to convert a ERC20 token to a native Cosmos
/// coin.
class MsgConvertERC20 extends $pb.GeneratedMessage {
  factory MsgConvertERC20({
    $core.String? contractAddress,
    $core.String? amount,
    $core.String? receiver,
    $core.String? sender,
  }) {
    final $result = create();
    if (contractAddress != null) {
      $result.contractAddress = contractAddress;
    }
    if (amount != null) {
      $result.amount = amount;
    }
    if (receiver != null) {
      $result.receiver = receiver;
    }
    if (sender != null) {
      $result.sender = sender;
    }
    return $result;
  }
  MsgConvertERC20._() : super();
  factory MsgConvertERC20.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgConvertERC20.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgConvertERC20', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.erc20.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'contractAddress')
    ..aOS(2, _omitFieldNames ? '' : 'amount')
    ..aOS(3, _omitFieldNames ? '' : 'receiver')
    ..aOS(4, _omitFieldNames ? '' : 'sender')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgConvertERC20 clone() => MsgConvertERC20()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgConvertERC20 copyWith(void Function(MsgConvertERC20) updates) => super.copyWith((message) => updates(message as MsgConvertERC20)) as MsgConvertERC20;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgConvertERC20 create() => MsgConvertERC20._();
  MsgConvertERC20 createEmptyInstance() => create();
  static $pb.PbList<MsgConvertERC20> createRepeated() => $pb.PbList<MsgConvertERC20>();
  @$core.pragma('dart2js:noInline')
  static MsgConvertERC20 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgConvertERC20>(create);
  static MsgConvertERC20? _defaultInstance;

  /// contract_address of an ERC20 token contract, that is registered in a token
  /// pair
  @$pb.TagNumber(1)
  $core.String get contractAddress => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractAddress($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasContractAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractAddress() => clearField(1);

  /// amount of ERC20 tokens to convert
  @$pb.TagNumber(2)
  $core.String get amount => $_getSZ(1);
  @$pb.TagNumber(2)
  set amount($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => clearField(2);

  /// receiver is the bech32 address to receive native Cosmos coins
  @$pb.TagNumber(3)
  $core.String get receiver => $_getSZ(2);
  @$pb.TagNumber(3)
  set receiver($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasReceiver() => $_has(2);
  @$pb.TagNumber(3)
  void clearReceiver() => clearField(3);

  /// sender is the hex address from the owner of the given ERC20 tokens
  @$pb.TagNumber(4)
  $core.String get sender => $_getSZ(3);
  @$pb.TagNumber(4)
  set sender($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSender() => $_has(3);
  @$pb.TagNumber(4)
  void clearSender() => clearField(4);
}

/// MsgConvertERC20Response returns no fields
class MsgConvertERC20Response extends $pb.GeneratedMessage {
  factory MsgConvertERC20Response() => create();
  MsgConvertERC20Response._() : super();
  factory MsgConvertERC20Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgConvertERC20Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgConvertERC20Response', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.erc20.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgConvertERC20Response clone() => MsgConvertERC20Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgConvertERC20Response copyWith(void Function(MsgConvertERC20Response) updates) => super.copyWith((message) => updates(message as MsgConvertERC20Response)) as MsgConvertERC20Response;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgConvertERC20Response create() => MsgConvertERC20Response._();
  MsgConvertERC20Response createEmptyInstance() => create();
  static $pb.PbList<MsgConvertERC20Response> createRepeated() => $pb.PbList<MsgConvertERC20Response>();
  @$core.pragma('dart2js:noInline')
  static MsgConvertERC20Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgConvertERC20Response>(create);
  static MsgConvertERC20Response? _defaultInstance;
}

/// MsgConvertCoin defines a Msg to convert a native Cosmos coin to a ERC20 token
class MsgConvertCoin extends $pb.GeneratedMessage {
  factory MsgConvertCoin({
    $4.Coin? coin,
    $core.String? receiver,
    $core.String? sender,
  }) {
    final $result = create();
    if (coin != null) {
      $result.coin = coin;
    }
    if (receiver != null) {
      $result.receiver = receiver;
    }
    if (sender != null) {
      $result.sender = sender;
    }
    return $result;
  }
  MsgConvertCoin._() : super();
  factory MsgConvertCoin.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgConvertCoin.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgConvertCoin', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.erc20.v1'), createEmptyInstance: create)
    ..aOM<$4.Coin>(1, _omitFieldNames ? '' : 'coin', subBuilder: $4.Coin.create)
    ..aOS(2, _omitFieldNames ? '' : 'receiver')
    ..aOS(3, _omitFieldNames ? '' : 'sender')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgConvertCoin clone() => MsgConvertCoin()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgConvertCoin copyWith(void Function(MsgConvertCoin) updates) => super.copyWith((message) => updates(message as MsgConvertCoin)) as MsgConvertCoin;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgConvertCoin create() => MsgConvertCoin._();
  MsgConvertCoin createEmptyInstance() => create();
  static $pb.PbList<MsgConvertCoin> createRepeated() => $pb.PbList<MsgConvertCoin>();
  @$core.pragma('dart2js:noInline')
  static MsgConvertCoin getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgConvertCoin>(create);
  static MsgConvertCoin? _defaultInstance;

  /// coin is a Cosmos coin whose denomination is registered in a token pair. The
  /// coin amount defines the amount of coins to convert.
  @$pb.TagNumber(1)
  $4.Coin get coin => $_getN(0);
  @$pb.TagNumber(1)
  set coin($4.Coin v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCoin() => $_has(0);
  @$pb.TagNumber(1)
  void clearCoin() => clearField(1);
  @$pb.TagNumber(1)
  $4.Coin ensureCoin() => $_ensure(0);

  /// receiver is the hex address to receive ERC20 token
  @$pb.TagNumber(2)
  $core.String get receiver => $_getSZ(1);
  @$pb.TagNumber(2)
  set receiver($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReceiver() => $_has(1);
  @$pb.TagNumber(2)
  void clearReceiver() => clearField(2);

  /// sender is the cosmos bech32 address from the owner of the given Cosmos
  /// coins
  @$pb.TagNumber(3)
  $core.String get sender => $_getSZ(2);
  @$pb.TagNumber(3)
  set sender($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSender() => $_has(2);
  @$pb.TagNumber(3)
  void clearSender() => clearField(3);
}

/// MsgConvertCoinResponse returns no fields
class MsgConvertCoinResponse extends $pb.GeneratedMessage {
  factory MsgConvertCoinResponse() => create();
  MsgConvertCoinResponse._() : super();
  factory MsgConvertCoinResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgConvertCoinResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgConvertCoinResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.erc20.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgConvertCoinResponse clone() => MsgConvertCoinResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgConvertCoinResponse copyWith(void Function(MsgConvertCoinResponse) updates) => super.copyWith((message) => updates(message as MsgConvertCoinResponse)) as MsgConvertCoinResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgConvertCoinResponse create() => MsgConvertCoinResponse._();
  MsgConvertCoinResponse createEmptyInstance() => create();
  static $pb.PbList<MsgConvertCoinResponse> createRepeated() => $pb.PbList<MsgConvertCoinResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgConvertCoinResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgConvertCoinResponse>(create);
  static MsgConvertCoinResponse? _defaultInstance;
}

/// MsgUpdateParams is the Msg/UpdateParams request type for Erc20 parameters.
/// Since: cosmos-sdk 0.47
class MsgUpdateParams extends $pb.GeneratedMessage {
  factory MsgUpdateParams({
    $core.String? authority,
    $5.Params? params,
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgUpdateParams', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.erc20.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'authority')
    ..aOM<$5.Params>(2, _omitFieldNames ? '' : 'params', subBuilder: $5.Params.create)
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

  /// authority is the address of the governance account.
  @$pb.TagNumber(1)
  $core.String get authority => $_getSZ(0);
  @$pb.TagNumber(1)
  set authority($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAuthority() => $_has(0);
  @$pb.TagNumber(1)
  void clearAuthority() => clearField(1);

  /// params defines the x/vm parameters to update.
  /// NOTE: All parameters must be supplied.
  @$pb.TagNumber(2)
  $5.Params get params => $_getN(1);
  @$pb.TagNumber(2)
  set params($5.Params v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasParams() => $_has(1);
  @$pb.TagNumber(2)
  void clearParams() => clearField(2);
  @$pb.TagNumber(2)
  $5.Params ensureParams() => $_ensure(1);
}

/// MsgUpdateParamsResponse defines the response structure for executing a
/// MsgUpdateParams message.
/// Since: cosmos-sdk 0.47
class MsgUpdateParamsResponse extends $pb.GeneratedMessage {
  factory MsgUpdateParamsResponse() => create();
  MsgUpdateParamsResponse._() : super();
  factory MsgUpdateParamsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgUpdateParamsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgUpdateParamsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.erc20.v1'), createEmptyInstance: create)
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

/// MsgRegisterERC20 is the Msg/RegisterERC20 request type for registering
/// an Erc20 contract token pair.
class MsgRegisterERC20 extends $pb.GeneratedMessage {
  factory MsgRegisterERC20({
    $core.String? signer,
    $core.Iterable<$core.String>? erc20addresses,
  }) {
    final $result = create();
    if (signer != null) {
      $result.signer = signer;
    }
    if (erc20addresses != null) {
      $result.erc20addresses.addAll(erc20addresses);
    }
    return $result;
  }
  MsgRegisterERC20._() : super();
  factory MsgRegisterERC20.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgRegisterERC20.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgRegisterERC20', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.erc20.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'signer')
    ..pPS(2, _omitFieldNames ? '' : 'erc20addresses')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgRegisterERC20 clone() => MsgRegisterERC20()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgRegisterERC20 copyWith(void Function(MsgRegisterERC20) updates) => super.copyWith((message) => updates(message as MsgRegisterERC20)) as MsgRegisterERC20;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgRegisterERC20 create() => MsgRegisterERC20._();
  MsgRegisterERC20 createEmptyInstance() => create();
  static $pb.PbList<MsgRegisterERC20> createRepeated() => $pb.PbList<MsgRegisterERC20>();
  @$core.pragma('dart2js:noInline')
  static MsgRegisterERC20 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgRegisterERC20>(create);
  static MsgRegisterERC20? _defaultInstance;

  /// signer is the address registering the erc20 pairs
  @$pb.TagNumber(1)
  $core.String get signer => $_getSZ(0);
  @$pb.TagNumber(1)
  set signer($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSigner() => $_has(0);
  @$pb.TagNumber(1)
  void clearSigner() => clearField(1);

  /// erc20addresses is a slice of ERC20 token contract hex addresses
  @$pb.TagNumber(2)
  $core.List<$core.String> get erc20addresses => $_getList(1);
}

/// MsgRegisterERC20Response defines the response structure for executing a
/// MsgRegisterERC20 message.
class MsgRegisterERC20Response extends $pb.GeneratedMessage {
  factory MsgRegisterERC20Response() => create();
  MsgRegisterERC20Response._() : super();
  factory MsgRegisterERC20Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgRegisterERC20Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgRegisterERC20Response', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.erc20.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgRegisterERC20Response clone() => MsgRegisterERC20Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgRegisterERC20Response copyWith(void Function(MsgRegisterERC20Response) updates) => super.copyWith((message) => updates(message as MsgRegisterERC20Response)) as MsgRegisterERC20Response;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgRegisterERC20Response create() => MsgRegisterERC20Response._();
  MsgRegisterERC20Response createEmptyInstance() => create();
  static $pb.PbList<MsgRegisterERC20Response> createRepeated() => $pb.PbList<MsgRegisterERC20Response>();
  @$core.pragma('dart2js:noInline')
  static MsgRegisterERC20Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgRegisterERC20Response>(create);
  static MsgRegisterERC20Response? _defaultInstance;
}

/// MsgToggleConversion is the Msg/MsgToggleConversion request type for toggling
/// an Erc20 contract conversion capability.
class MsgToggleConversion extends $pb.GeneratedMessage {
  factory MsgToggleConversion({
    $core.String? authority,
    $core.String? token,
  }) {
    final $result = create();
    if (authority != null) {
      $result.authority = authority;
    }
    if (token != null) {
      $result.token = token;
    }
    return $result;
  }
  MsgToggleConversion._() : super();
  factory MsgToggleConversion.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgToggleConversion.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgToggleConversion', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.erc20.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'authority')
    ..aOS(2, _omitFieldNames ? '' : 'token')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgToggleConversion clone() => MsgToggleConversion()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgToggleConversion copyWith(void Function(MsgToggleConversion) updates) => super.copyWith((message) => updates(message as MsgToggleConversion)) as MsgToggleConversion;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgToggleConversion create() => MsgToggleConversion._();
  MsgToggleConversion createEmptyInstance() => create();
  static $pb.PbList<MsgToggleConversion> createRepeated() => $pb.PbList<MsgToggleConversion>();
  @$core.pragma('dart2js:noInline')
  static MsgToggleConversion getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgToggleConversion>(create);
  static MsgToggleConversion? _defaultInstance;

  /// authority is the address of the governance account.
  @$pb.TagNumber(1)
  $core.String get authority => $_getSZ(0);
  @$pb.TagNumber(1)
  set authority($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAuthority() => $_has(0);
  @$pb.TagNumber(1)
  void clearAuthority() => clearField(1);

  /// token identifier can be either the hex contract address of the ERC20 or the
  /// Cosmos base denomination
  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);
}

/// MsgToggleConversionResponse defines the response structure for executing a
/// ToggleConversion message.
class MsgToggleConversionResponse extends $pb.GeneratedMessage {
  factory MsgToggleConversionResponse() => create();
  MsgToggleConversionResponse._() : super();
  factory MsgToggleConversionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgToggleConversionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgToggleConversionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.erc20.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgToggleConversionResponse clone() => MsgToggleConversionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgToggleConversionResponse copyWith(void Function(MsgToggleConversionResponse) updates) => super.copyWith((message) => updates(message as MsgToggleConversionResponse)) as MsgToggleConversionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgToggleConversionResponse create() => MsgToggleConversionResponse._();
  MsgToggleConversionResponse createEmptyInstance() => create();
  static $pb.PbList<MsgToggleConversionResponse> createRepeated() => $pb.PbList<MsgToggleConversionResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgToggleConversionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgToggleConversionResponse>(create);
  static MsgToggleConversionResponse? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
