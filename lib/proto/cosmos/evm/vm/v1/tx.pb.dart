//
//  Generated code. Do not modify.
//  source: cosmos/evm/vm/v1/tx.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'evm.pb.dart' as $2;

/// MsgEthereumTx encapsulates an Ethereum transaction as an SDK message.
class MsgEthereumTx extends $pb.GeneratedMessage {
  factory MsgEthereumTx({
    $core.List<$core.int>? from,
    $core.List<$core.int>? raw,
  }) {
    final $result = create();
    if (from != null) {
      $result.from = from;
    }
    if (raw != null) {
      $result.raw = raw;
    }
    return $result;
  }
  MsgEthereumTx._() : super();
  factory MsgEthereumTx.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgEthereumTx.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgEthereumTx', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(5, _omitFieldNames ? '' : 'from', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(6, _omitFieldNames ? '' : 'raw', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgEthereumTx clone() => MsgEthereumTx()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgEthereumTx copyWith(void Function(MsgEthereumTx) updates) => super.copyWith((message) => updates(message as MsgEthereumTx)) as MsgEthereumTx;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgEthereumTx create() => MsgEthereumTx._();
  MsgEthereumTx createEmptyInstance() => create();
  static $pb.PbList<MsgEthereumTx> createRepeated() => $pb.PbList<MsgEthereumTx>();
  @$core.pragma('dart2js:noInline')
  static MsgEthereumTx getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgEthereumTx>(create);
  static MsgEthereumTx? _defaultInstance;

  /// from is the bytes of ethereum signer address. This address value is checked
  /// against the address derived from the signature (V, R, S) using the
  /// secp256k1 elliptic curve
  @$pb.TagNumber(5)
  $core.List<$core.int> get from => $_getN(0);
  @$pb.TagNumber(5)
  set from($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(5)
  $core.bool hasFrom() => $_has(0);
  @$pb.TagNumber(5)
  void clearFrom() => clearField(5);

  /// raw is the raw ethereum transaction
  @$pb.TagNumber(6)
  $core.List<$core.int> get raw => $_getN(1);
  @$pb.TagNumber(6)
  set raw($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(6)
  $core.bool hasRaw() => $_has(1);
  @$pb.TagNumber(6)
  void clearRaw() => clearField(6);
}

/// ExtensionOptionsEthereumTx is an extension option for ethereum transactions
class ExtensionOptionsEthereumTx extends $pb.GeneratedMessage {
  factory ExtensionOptionsEthereumTx() => create();
  ExtensionOptionsEthereumTx._() : super();
  factory ExtensionOptionsEthereumTx.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExtensionOptionsEthereumTx.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ExtensionOptionsEthereumTx', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExtensionOptionsEthereumTx clone() => ExtensionOptionsEthereumTx()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExtensionOptionsEthereumTx copyWith(void Function(ExtensionOptionsEthereumTx) updates) => super.copyWith((message) => updates(message as ExtensionOptionsEthereumTx)) as ExtensionOptionsEthereumTx;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExtensionOptionsEthereumTx create() => ExtensionOptionsEthereumTx._();
  ExtensionOptionsEthereumTx createEmptyInstance() => create();
  static $pb.PbList<ExtensionOptionsEthereumTx> createRepeated() => $pb.PbList<ExtensionOptionsEthereumTx>();
  @$core.pragma('dart2js:noInline')
  static ExtensionOptionsEthereumTx getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExtensionOptionsEthereumTx>(create);
  static ExtensionOptionsEthereumTx? _defaultInstance;
}

/// MsgEthereumTxResponse defines the Msg/EthereumTx response type.
class MsgEthereumTxResponse extends $pb.GeneratedMessage {
  factory MsgEthereumTxResponse({
    $core.String? hash,
    $core.Iterable<$2.Log>? logs,
    $core.List<$core.int>? ret,
    $core.String? vmError,
    $fixnum.Int64? gasUsed,
    $fixnum.Int64? maxUsedGas,
    $core.List<$core.int>? blockHash,
    $fixnum.Int64? blockTimestamp,
  }) {
    final $result = create();
    if (hash != null) {
      $result.hash = hash;
    }
    if (logs != null) {
      $result.logs.addAll(logs);
    }
    if (ret != null) {
      $result.ret = ret;
    }
    if (vmError != null) {
      $result.vmError = vmError;
    }
    if (gasUsed != null) {
      $result.gasUsed = gasUsed;
    }
    if (maxUsedGas != null) {
      $result.maxUsedGas = maxUsedGas;
    }
    if (blockHash != null) {
      $result.blockHash = blockHash;
    }
    if (blockTimestamp != null) {
      $result.blockTimestamp = blockTimestamp;
    }
    return $result;
  }
  MsgEthereumTxResponse._() : super();
  factory MsgEthereumTxResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgEthereumTxResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgEthereumTxResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'hash')
    ..pc<$2.Log>(2, _omitFieldNames ? '' : 'logs', $pb.PbFieldType.PM, subBuilder: $2.Log.create)
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'ret', $pb.PbFieldType.OY)
    ..aOS(4, _omitFieldNames ? '' : 'vmError')
    ..a<$fixnum.Int64>(5, _omitFieldNames ? '' : 'gasUsed', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(6, _omitFieldNames ? '' : 'maxUsedGas', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(7, _omitFieldNames ? '' : 'blockHash', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(8, _omitFieldNames ? '' : 'blockTimestamp', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgEthereumTxResponse clone() => MsgEthereumTxResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgEthereumTxResponse copyWith(void Function(MsgEthereumTxResponse) updates) => super.copyWith((message) => updates(message as MsgEthereumTxResponse)) as MsgEthereumTxResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgEthereumTxResponse create() => MsgEthereumTxResponse._();
  MsgEthereumTxResponse createEmptyInstance() => create();
  static $pb.PbList<MsgEthereumTxResponse> createRepeated() => $pb.PbList<MsgEthereumTxResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgEthereumTxResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgEthereumTxResponse>(create);
  static MsgEthereumTxResponse? _defaultInstance;

  /// hash of the ethereum transaction in hex format. This hash differs from the
  /// CometBFT sha256 hash of the transaction bytes. See
  /// https://github.com/tendermint/tendermint/issues/6539 for reference
  @$pb.TagNumber(1)
  $core.String get hash => $_getSZ(0);
  @$pb.TagNumber(1)
  set hash($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearHash() => clearField(1);

  /// logs contains the transaction hash and the proto-compatible ethereum
  /// logs.
  @$pb.TagNumber(2)
  $core.List<$2.Log> get logs => $_getList(1);

  /// ret is the returned data from evm function (result or data supplied with
  /// revert opcode)
  @$pb.TagNumber(3)
  $core.List<$core.int> get ret => $_getN(2);
  @$pb.TagNumber(3)
  set ret($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRet() => $_has(2);
  @$pb.TagNumber(3)
  void clearRet() => clearField(3);

  /// vm_error is the error returned by vm execution
  @$pb.TagNumber(4)
  $core.String get vmError => $_getSZ(3);
  @$pb.TagNumber(4)
  set vmError($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasVmError() => $_has(3);
  @$pb.TagNumber(4)
  void clearVmError() => clearField(4);

  /// gas_used specifies how much gas was consumed by the transaction
  @$pb.TagNumber(5)
  $fixnum.Int64 get gasUsed => $_getI64(4);
  @$pb.TagNumber(5)
  set gasUsed($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasGasUsed() => $_has(4);
  @$pb.TagNumber(5)
  void clearGasUsed() => clearField(5);

  /// max_used_gas specifies the gas consumed by the transaction, not including refunds
  @$pb.TagNumber(6)
  $fixnum.Int64 get maxUsedGas => $_getI64(5);
  @$pb.TagNumber(6)
  set maxUsedGas($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMaxUsedGas() => $_has(5);
  @$pb.TagNumber(6)
  void clearMaxUsedGas() => clearField(6);

  /// include the block hash for json-rpc to use
  @$pb.TagNumber(7)
  $core.List<$core.int> get blockHash => $_getN(6);
  @$pb.TagNumber(7)
  set blockHash($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasBlockHash() => $_has(6);
  @$pb.TagNumber(7)
  void clearBlockHash() => clearField(7);

  /// include the block timestamp for json-rpc to use
  @$pb.TagNumber(8)
  $fixnum.Int64 get blockTimestamp => $_getI64(7);
  @$pb.TagNumber(8)
  set blockTimestamp($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasBlockTimestamp() => $_has(7);
  @$pb.TagNumber(8)
  void clearBlockTimestamp() => clearField(8);
}

/// MsgUpdateParams defines a Msg for updating the x/vm module parameters.
class MsgUpdateParams extends $pb.GeneratedMessage {
  factory MsgUpdateParams({
    $core.String? authority,
    $2.Params? params,
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgUpdateParams', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'authority')
    ..aOM<$2.Params>(2, _omitFieldNames ? '' : 'params', subBuilder: $2.Params.create)
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
  $2.Params get params => $_getN(1);
  @$pb.TagNumber(2)
  set params($2.Params v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasParams() => $_has(1);
  @$pb.TagNumber(2)
  void clearParams() => clearField(2);
  @$pb.TagNumber(2)
  $2.Params ensureParams() => $_ensure(1);
}

/// MsgUpdateParamsResponse defines the response structure for executing a
/// MsgUpdateParams message.
class MsgUpdateParamsResponse extends $pb.GeneratedMessage {
  factory MsgUpdateParamsResponse() => create();
  MsgUpdateParamsResponse._() : super();
  factory MsgUpdateParamsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgUpdateParamsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgUpdateParamsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
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

/// MsgRegisterPreinstalls defines a Msg for creating preinstalls in evm state.
class MsgRegisterPreinstalls extends $pb.GeneratedMessage {
  factory MsgRegisterPreinstalls({
    $core.String? authority,
    $core.Iterable<$2.Preinstall>? preinstalls,
  }) {
    final $result = create();
    if (authority != null) {
      $result.authority = authority;
    }
    if (preinstalls != null) {
      $result.preinstalls.addAll(preinstalls);
    }
    return $result;
  }
  MsgRegisterPreinstalls._() : super();
  factory MsgRegisterPreinstalls.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgRegisterPreinstalls.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgRegisterPreinstalls', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'authority')
    ..pc<$2.Preinstall>(2, _omitFieldNames ? '' : 'preinstalls', $pb.PbFieldType.PM, subBuilder: $2.Preinstall.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgRegisterPreinstalls clone() => MsgRegisterPreinstalls()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgRegisterPreinstalls copyWith(void Function(MsgRegisterPreinstalls) updates) => super.copyWith((message) => updates(message as MsgRegisterPreinstalls)) as MsgRegisterPreinstalls;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgRegisterPreinstalls create() => MsgRegisterPreinstalls._();
  MsgRegisterPreinstalls createEmptyInstance() => create();
  static $pb.PbList<MsgRegisterPreinstalls> createRepeated() => $pb.PbList<MsgRegisterPreinstalls>();
  @$core.pragma('dart2js:noInline')
  static MsgRegisterPreinstalls getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgRegisterPreinstalls>(create);
  static MsgRegisterPreinstalls? _defaultInstance;

  /// authority is the address of the governance account.
  @$pb.TagNumber(1)
  $core.String get authority => $_getSZ(0);
  @$pb.TagNumber(1)
  set authority($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAuthority() => $_has(0);
  @$pb.TagNumber(1)
  void clearAuthority() => clearField(1);

  /// preinstalls defines the preinstalls to create.
  @$pb.TagNumber(2)
  $core.List<$2.Preinstall> get preinstalls => $_getList(1);
}

/// MsgRegisterPreinstallsResponse defines the response structure for executing a
/// MsgRegisterPreinstalls message.
class MsgRegisterPreinstallsResponse extends $pb.GeneratedMessage {
  factory MsgRegisterPreinstallsResponse() => create();
  MsgRegisterPreinstallsResponse._() : super();
  factory MsgRegisterPreinstallsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgRegisterPreinstallsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgRegisterPreinstallsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgRegisterPreinstallsResponse clone() => MsgRegisterPreinstallsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgRegisterPreinstallsResponse copyWith(void Function(MsgRegisterPreinstallsResponse) updates) => super.copyWith((message) => updates(message as MsgRegisterPreinstallsResponse)) as MsgRegisterPreinstallsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgRegisterPreinstallsResponse create() => MsgRegisterPreinstallsResponse._();
  MsgRegisterPreinstallsResponse createEmptyInstance() => create();
  static $pb.PbList<MsgRegisterPreinstallsResponse> createRepeated() => $pb.PbList<MsgRegisterPreinstallsResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgRegisterPreinstallsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgRegisterPreinstallsResponse>(create);
  static MsgRegisterPreinstallsResponse? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
