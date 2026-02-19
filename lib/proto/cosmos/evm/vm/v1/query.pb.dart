//
//  Generated code. Do not modify.
//  source: cosmos/evm/vm/v1/query.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../google/protobuf/timestamp.pb.dart' as $4;
import '../../../base/query/v1beta1/pagination.pb.dart' as $3;
import 'evm.pb.dart' as $2;
import 'tx.pb.dart' as $0;

/// QueryConfigRequest defines the request type for querying the config
class QueryConfigRequest extends $pb.GeneratedMessage {
  factory QueryConfigRequest() => create();
  QueryConfigRequest._() : super();
  factory QueryConfigRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryConfigRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryConfigRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryConfigRequest clone() => QueryConfigRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryConfigRequest copyWith(void Function(QueryConfigRequest) updates) => super.copyWith((message) => updates(message as QueryConfigRequest)) as QueryConfigRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryConfigRequest create() => QueryConfigRequest._();
  QueryConfigRequest createEmptyInstance() => create();
  static $pb.PbList<QueryConfigRequest> createRepeated() => $pb.PbList<QueryConfigRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryConfigRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryConfigRequest>(create);
  static QueryConfigRequest? _defaultInstance;
}

/// QueryConfigResponse returns the EVM config.
class QueryConfigResponse extends $pb.GeneratedMessage {
  factory QueryConfigResponse({
    $2.ChainConfig? config,
  }) {
    final $result = create();
    if (config != null) {
      $result.config = config;
    }
    return $result;
  }
  QueryConfigResponse._() : super();
  factory QueryConfigResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryConfigResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryConfigResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..aOM<$2.ChainConfig>(1, _omitFieldNames ? '' : 'config', subBuilder: $2.ChainConfig.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryConfigResponse clone() => QueryConfigResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryConfigResponse copyWith(void Function(QueryConfigResponse) updates) => super.copyWith((message) => updates(message as QueryConfigResponse)) as QueryConfigResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryConfigResponse create() => QueryConfigResponse._();
  QueryConfigResponse createEmptyInstance() => create();
  static $pb.PbList<QueryConfigResponse> createRepeated() => $pb.PbList<QueryConfigResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryConfigResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryConfigResponse>(create);
  static QueryConfigResponse? _defaultInstance;

  /// config is the evm configuration
  @$pb.TagNumber(1)
  $2.ChainConfig get config => $_getN(0);
  @$pb.TagNumber(1)
  set config($2.ChainConfig v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearConfig() => clearField(1);
  @$pb.TagNumber(1)
  $2.ChainConfig ensureConfig() => $_ensure(0);
}

/// QueryAccountRequest is the request type for the Query/Account RPC method.
class QueryAccountRequest extends $pb.GeneratedMessage {
  factory QueryAccountRequest({
    $core.String? address,
  }) {
    final $result = create();
    if (address != null) {
      $result.address = address;
    }
    return $result;
  }
  QueryAccountRequest._() : super();
  factory QueryAccountRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAccountRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryAccountRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'address')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAccountRequest clone() => QueryAccountRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAccountRequest copyWith(void Function(QueryAccountRequest) updates) => super.copyWith((message) => updates(message as QueryAccountRequest)) as QueryAccountRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryAccountRequest create() => QueryAccountRequest._();
  QueryAccountRequest createEmptyInstance() => create();
  static $pb.PbList<QueryAccountRequest> createRepeated() => $pb.PbList<QueryAccountRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryAccountRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAccountRequest>(create);
  static QueryAccountRequest? _defaultInstance;

  /// address is the ethereum hex address to query the account for.
  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);
}

/// QueryAccountResponse is the response type for the Query/Account RPC method.
class QueryAccountResponse extends $pb.GeneratedMessage {
  factory QueryAccountResponse({
    $core.String? balance,
    $core.String? codeHash,
    $fixnum.Int64? nonce,
  }) {
    final $result = create();
    if (balance != null) {
      $result.balance = balance;
    }
    if (codeHash != null) {
      $result.codeHash = codeHash;
    }
    if (nonce != null) {
      $result.nonce = nonce;
    }
    return $result;
  }
  QueryAccountResponse._() : super();
  factory QueryAccountResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAccountResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryAccountResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'balance')
    ..aOS(2, _omitFieldNames ? '' : 'codeHash')
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'nonce', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAccountResponse clone() => QueryAccountResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAccountResponse copyWith(void Function(QueryAccountResponse) updates) => super.copyWith((message) => updates(message as QueryAccountResponse)) as QueryAccountResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryAccountResponse create() => QueryAccountResponse._();
  QueryAccountResponse createEmptyInstance() => create();
  static $pb.PbList<QueryAccountResponse> createRepeated() => $pb.PbList<QueryAccountResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryAccountResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAccountResponse>(create);
  static QueryAccountResponse? _defaultInstance;

  /// balance is the balance of the EVM denomination.
  @$pb.TagNumber(1)
  $core.String get balance => $_getSZ(0);
  @$pb.TagNumber(1)
  set balance($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBalance() => $_has(0);
  @$pb.TagNumber(1)
  void clearBalance() => clearField(1);

  /// code_hash is the hex-formatted code bytes from the EOA.
  @$pb.TagNumber(2)
  $core.String get codeHash => $_getSZ(1);
  @$pb.TagNumber(2)
  set codeHash($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCodeHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearCodeHash() => clearField(2);

  /// nonce is the account's sequence number.
  @$pb.TagNumber(3)
  $fixnum.Int64 get nonce => $_getI64(2);
  @$pb.TagNumber(3)
  set nonce($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNonce() => $_has(2);
  @$pb.TagNumber(3)
  void clearNonce() => clearField(3);
}

/// QueryCosmosAccountRequest is the request type for the Query/CosmosAccount RPC
/// method.
class QueryCosmosAccountRequest extends $pb.GeneratedMessage {
  factory QueryCosmosAccountRequest({
    $core.String? address,
  }) {
    final $result = create();
    if (address != null) {
      $result.address = address;
    }
    return $result;
  }
  QueryCosmosAccountRequest._() : super();
  factory QueryCosmosAccountRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryCosmosAccountRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryCosmosAccountRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'address')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryCosmosAccountRequest clone() => QueryCosmosAccountRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryCosmosAccountRequest copyWith(void Function(QueryCosmosAccountRequest) updates) => super.copyWith((message) => updates(message as QueryCosmosAccountRequest)) as QueryCosmosAccountRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryCosmosAccountRequest create() => QueryCosmosAccountRequest._();
  QueryCosmosAccountRequest createEmptyInstance() => create();
  static $pb.PbList<QueryCosmosAccountRequest> createRepeated() => $pb.PbList<QueryCosmosAccountRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryCosmosAccountRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryCosmosAccountRequest>(create);
  static QueryCosmosAccountRequest? _defaultInstance;

  /// address is the ethereum hex address to query the account for.
  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);
}

/// QueryCosmosAccountResponse is the response type for the Query/CosmosAccount
/// RPC method.
class QueryCosmosAccountResponse extends $pb.GeneratedMessage {
  factory QueryCosmosAccountResponse({
    $core.String? cosmosAddress,
    $fixnum.Int64? sequence,
    $fixnum.Int64? accountNumber,
  }) {
    final $result = create();
    if (cosmosAddress != null) {
      $result.cosmosAddress = cosmosAddress;
    }
    if (sequence != null) {
      $result.sequence = sequence;
    }
    if (accountNumber != null) {
      $result.accountNumber = accountNumber;
    }
    return $result;
  }
  QueryCosmosAccountResponse._() : super();
  factory QueryCosmosAccountResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryCosmosAccountResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryCosmosAccountResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cosmosAddress')
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'sequence', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'accountNumber', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryCosmosAccountResponse clone() => QueryCosmosAccountResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryCosmosAccountResponse copyWith(void Function(QueryCosmosAccountResponse) updates) => super.copyWith((message) => updates(message as QueryCosmosAccountResponse)) as QueryCosmosAccountResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryCosmosAccountResponse create() => QueryCosmosAccountResponse._();
  QueryCosmosAccountResponse createEmptyInstance() => create();
  static $pb.PbList<QueryCosmosAccountResponse> createRepeated() => $pb.PbList<QueryCosmosAccountResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryCosmosAccountResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryCosmosAccountResponse>(create);
  static QueryCosmosAccountResponse? _defaultInstance;

  /// cosmos_address is the cosmos address of the account.
  @$pb.TagNumber(1)
  $core.String get cosmosAddress => $_getSZ(0);
  @$pb.TagNumber(1)
  set cosmosAddress($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCosmosAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearCosmosAddress() => clearField(1);

  /// sequence is the account's sequence number.
  @$pb.TagNumber(2)
  $fixnum.Int64 get sequence => $_getI64(1);
  @$pb.TagNumber(2)
  set sequence($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSequence() => $_has(1);
  @$pb.TagNumber(2)
  void clearSequence() => clearField(2);

  /// account_number is the account number
  @$pb.TagNumber(3)
  $fixnum.Int64 get accountNumber => $_getI64(2);
  @$pb.TagNumber(3)
  set accountNumber($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccountNumber() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccountNumber() => clearField(3);
}

/// QueryValidatorAccountRequest is the request type for the
/// Query/ValidatorAccount RPC method.
class QueryValidatorAccountRequest extends $pb.GeneratedMessage {
  factory QueryValidatorAccountRequest({
    $core.String? consAddress,
  }) {
    final $result = create();
    if (consAddress != null) {
      $result.consAddress = consAddress;
    }
    return $result;
  }
  QueryValidatorAccountRequest._() : super();
  factory QueryValidatorAccountRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryValidatorAccountRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryValidatorAccountRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'consAddress')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryValidatorAccountRequest clone() => QueryValidatorAccountRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryValidatorAccountRequest copyWith(void Function(QueryValidatorAccountRequest) updates) => super.copyWith((message) => updates(message as QueryValidatorAccountRequest)) as QueryValidatorAccountRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryValidatorAccountRequest create() => QueryValidatorAccountRequest._();
  QueryValidatorAccountRequest createEmptyInstance() => create();
  static $pb.PbList<QueryValidatorAccountRequest> createRepeated() => $pb.PbList<QueryValidatorAccountRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryValidatorAccountRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryValidatorAccountRequest>(create);
  static QueryValidatorAccountRequest? _defaultInstance;

  /// cons_address is the validator cons address to query the account for.
  @$pb.TagNumber(1)
  $core.String get consAddress => $_getSZ(0);
  @$pb.TagNumber(1)
  set consAddress($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasConsAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearConsAddress() => clearField(1);
}

/// QueryValidatorAccountResponse is the response type for the
/// Query/ValidatorAccount RPC method.
class QueryValidatorAccountResponse extends $pb.GeneratedMessage {
  factory QueryValidatorAccountResponse({
    $core.String? accountAddress,
    $fixnum.Int64? sequence,
    $fixnum.Int64? accountNumber,
  }) {
    final $result = create();
    if (accountAddress != null) {
      $result.accountAddress = accountAddress;
    }
    if (sequence != null) {
      $result.sequence = sequence;
    }
    if (accountNumber != null) {
      $result.accountNumber = accountNumber;
    }
    return $result;
  }
  QueryValidatorAccountResponse._() : super();
  factory QueryValidatorAccountResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryValidatorAccountResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryValidatorAccountResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'accountAddress')
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'sequence', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'accountNumber', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryValidatorAccountResponse clone() => QueryValidatorAccountResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryValidatorAccountResponse copyWith(void Function(QueryValidatorAccountResponse) updates) => super.copyWith((message) => updates(message as QueryValidatorAccountResponse)) as QueryValidatorAccountResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryValidatorAccountResponse create() => QueryValidatorAccountResponse._();
  QueryValidatorAccountResponse createEmptyInstance() => create();
  static $pb.PbList<QueryValidatorAccountResponse> createRepeated() => $pb.PbList<QueryValidatorAccountResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryValidatorAccountResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryValidatorAccountResponse>(create);
  static QueryValidatorAccountResponse? _defaultInstance;

  /// account_address is the cosmos address of the account in bech32 format.
  @$pb.TagNumber(1)
  $core.String get accountAddress => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountAddress($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountAddress() => clearField(1);

  /// sequence is the account's sequence number.
  @$pb.TagNumber(2)
  $fixnum.Int64 get sequence => $_getI64(1);
  @$pb.TagNumber(2)
  set sequence($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSequence() => $_has(1);
  @$pb.TagNumber(2)
  void clearSequence() => clearField(2);

  /// account_number is the account number
  @$pb.TagNumber(3)
  $fixnum.Int64 get accountNumber => $_getI64(2);
  @$pb.TagNumber(3)
  set accountNumber($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccountNumber() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccountNumber() => clearField(3);
}

/// QueryBalanceRequest is the request type for the Query/Balance RPC method.
class QueryBalanceRequest extends $pb.GeneratedMessage {
  factory QueryBalanceRequest({
    $core.String? address,
  }) {
    final $result = create();
    if (address != null) {
      $result.address = address;
    }
    return $result;
  }
  QueryBalanceRequest._() : super();
  factory QueryBalanceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryBalanceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryBalanceRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'address')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryBalanceRequest clone() => QueryBalanceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryBalanceRequest copyWith(void Function(QueryBalanceRequest) updates) => super.copyWith((message) => updates(message as QueryBalanceRequest)) as QueryBalanceRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryBalanceRequest create() => QueryBalanceRequest._();
  QueryBalanceRequest createEmptyInstance() => create();
  static $pb.PbList<QueryBalanceRequest> createRepeated() => $pb.PbList<QueryBalanceRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryBalanceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryBalanceRequest>(create);
  static QueryBalanceRequest? _defaultInstance;

  /// address is the ethereum hex address to query the balance for.
  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);
}

/// QueryBalanceResponse is the response type for the Query/Balance RPC method.
class QueryBalanceResponse extends $pb.GeneratedMessage {
  factory QueryBalanceResponse({
    $core.String? balance,
  }) {
    final $result = create();
    if (balance != null) {
      $result.balance = balance;
    }
    return $result;
  }
  QueryBalanceResponse._() : super();
  factory QueryBalanceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryBalanceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryBalanceResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'balance')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryBalanceResponse clone() => QueryBalanceResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryBalanceResponse copyWith(void Function(QueryBalanceResponse) updates) => super.copyWith((message) => updates(message as QueryBalanceResponse)) as QueryBalanceResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryBalanceResponse create() => QueryBalanceResponse._();
  QueryBalanceResponse createEmptyInstance() => create();
  static $pb.PbList<QueryBalanceResponse> createRepeated() => $pb.PbList<QueryBalanceResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryBalanceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryBalanceResponse>(create);
  static QueryBalanceResponse? _defaultInstance;

  /// balance is the balance of the EVM denomination.
  @$pb.TagNumber(1)
  $core.String get balance => $_getSZ(0);
  @$pb.TagNumber(1)
  set balance($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBalance() => $_has(0);
  @$pb.TagNumber(1)
  void clearBalance() => clearField(1);
}

/// QueryStorageRequest is the request type for the Query/Storage RPC method.
class QueryStorageRequest extends $pb.GeneratedMessage {
  factory QueryStorageRequest({
    $core.String? address,
    $core.String? key,
  }) {
    final $result = create();
    if (address != null) {
      $result.address = address;
    }
    if (key != null) {
      $result.key = key;
    }
    return $result;
  }
  QueryStorageRequest._() : super();
  factory QueryStorageRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryStorageRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryStorageRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'address')
    ..aOS(2, _omitFieldNames ? '' : 'key')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryStorageRequest clone() => QueryStorageRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryStorageRequest copyWith(void Function(QueryStorageRequest) updates) => super.copyWith((message) => updates(message as QueryStorageRequest)) as QueryStorageRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryStorageRequest create() => QueryStorageRequest._();
  QueryStorageRequest createEmptyInstance() => create();
  static $pb.PbList<QueryStorageRequest> createRepeated() => $pb.PbList<QueryStorageRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryStorageRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryStorageRequest>(create);
  static QueryStorageRequest? _defaultInstance;

  /// address is the ethereum hex address to query the storage state for.
  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  /// key defines the key of the storage state
  @$pb.TagNumber(2)
  $core.String get key => $_getSZ(1);
  @$pb.TagNumber(2)
  set key($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);
}

/// QueryStorageResponse is the response type for the Query/Storage RPC
/// method.
class QueryStorageResponse extends $pb.GeneratedMessage {
  factory QueryStorageResponse({
    $core.String? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  QueryStorageResponse._() : super();
  factory QueryStorageResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryStorageResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryStorageResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryStorageResponse clone() => QueryStorageResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryStorageResponse copyWith(void Function(QueryStorageResponse) updates) => super.copyWith((message) => updates(message as QueryStorageResponse)) as QueryStorageResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryStorageResponse create() => QueryStorageResponse._();
  QueryStorageResponse createEmptyInstance() => create();
  static $pb.PbList<QueryStorageResponse> createRepeated() => $pb.PbList<QueryStorageResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryStorageResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryStorageResponse>(create);
  static QueryStorageResponse? _defaultInstance;

  /// value defines the storage state value hash associated with the given key.
  @$pb.TagNumber(1)
  $core.String get value => $_getSZ(0);
  @$pb.TagNumber(1)
  set value($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

/// QueryCodeRequest is the request type for the Query/Code RPC method.
class QueryCodeRequest extends $pb.GeneratedMessage {
  factory QueryCodeRequest({
    $core.String? address,
  }) {
    final $result = create();
    if (address != null) {
      $result.address = address;
    }
    return $result;
  }
  QueryCodeRequest._() : super();
  factory QueryCodeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryCodeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryCodeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'address')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryCodeRequest clone() => QueryCodeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryCodeRequest copyWith(void Function(QueryCodeRequest) updates) => super.copyWith((message) => updates(message as QueryCodeRequest)) as QueryCodeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryCodeRequest create() => QueryCodeRequest._();
  QueryCodeRequest createEmptyInstance() => create();
  static $pb.PbList<QueryCodeRequest> createRepeated() => $pb.PbList<QueryCodeRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryCodeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryCodeRequest>(create);
  static QueryCodeRequest? _defaultInstance;

  /// address is the ethereum hex address to query the code for.
  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);
}

/// QueryCodeResponse is the response type for the Query/Code RPC
/// method.
class QueryCodeResponse extends $pb.GeneratedMessage {
  factory QueryCodeResponse({
    $core.List<$core.int>? code,
  }) {
    final $result = create();
    if (code != null) {
      $result.code = code;
    }
    return $result;
  }
  QueryCodeResponse._() : super();
  factory QueryCodeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryCodeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryCodeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'code', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryCodeResponse clone() => QueryCodeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryCodeResponse copyWith(void Function(QueryCodeResponse) updates) => super.copyWith((message) => updates(message as QueryCodeResponse)) as QueryCodeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryCodeResponse create() => QueryCodeResponse._();
  QueryCodeResponse createEmptyInstance() => create();
  static $pb.PbList<QueryCodeResponse> createRepeated() => $pb.PbList<QueryCodeResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryCodeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryCodeResponse>(create);
  static QueryCodeResponse? _defaultInstance;

  /// code represents the code bytes from an ethereum address.
  @$pb.TagNumber(1)
  $core.List<$core.int> get code => $_getN(0);
  @$pb.TagNumber(1)
  set code($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);
}

/// QueryTxLogsRequest is the request type for the Query/TxLogs RPC method.
class QueryTxLogsRequest extends $pb.GeneratedMessage {
  factory QueryTxLogsRequest({
    $core.String? hash,
    $3.PageRequest? pagination,
  }) {
    final $result = create();
    if (hash != null) {
      $result.hash = hash;
    }
    if (pagination != null) {
      $result.pagination = pagination;
    }
    return $result;
  }
  QueryTxLogsRequest._() : super();
  factory QueryTxLogsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryTxLogsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryTxLogsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'hash')
    ..aOM<$3.PageRequest>(2, _omitFieldNames ? '' : 'pagination', subBuilder: $3.PageRequest.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryTxLogsRequest clone() => QueryTxLogsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryTxLogsRequest copyWith(void Function(QueryTxLogsRequest) updates) => super.copyWith((message) => updates(message as QueryTxLogsRequest)) as QueryTxLogsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryTxLogsRequest create() => QueryTxLogsRequest._();
  QueryTxLogsRequest createEmptyInstance() => create();
  static $pb.PbList<QueryTxLogsRequest> createRepeated() => $pb.PbList<QueryTxLogsRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryTxLogsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryTxLogsRequest>(create);
  static QueryTxLogsRequest? _defaultInstance;

  /// hash is the ethereum transaction hex hash to query the logs for.
  @$pb.TagNumber(1)
  $core.String get hash => $_getSZ(0);
  @$pb.TagNumber(1)
  set hash($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearHash() => clearField(1);

  /// pagination defines an optional pagination for the request.
  @$pb.TagNumber(2)
  $3.PageRequest get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($3.PageRequest v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $3.PageRequest ensurePagination() => $_ensure(1);
}

/// QueryTxLogsResponse is the response type for the Query/TxLogs RPC method.
class QueryTxLogsResponse extends $pb.GeneratedMessage {
  factory QueryTxLogsResponse({
    $core.Iterable<$2.Log>? logs,
    $3.PageResponse? pagination,
  }) {
    final $result = create();
    if (logs != null) {
      $result.logs.addAll(logs);
    }
    if (pagination != null) {
      $result.pagination = pagination;
    }
    return $result;
  }
  QueryTxLogsResponse._() : super();
  factory QueryTxLogsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryTxLogsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryTxLogsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..pc<$2.Log>(1, _omitFieldNames ? '' : 'logs', $pb.PbFieldType.PM, subBuilder: $2.Log.create)
    ..aOM<$3.PageResponse>(2, _omitFieldNames ? '' : 'pagination', subBuilder: $3.PageResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryTxLogsResponse clone() => QueryTxLogsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryTxLogsResponse copyWith(void Function(QueryTxLogsResponse) updates) => super.copyWith((message) => updates(message as QueryTxLogsResponse)) as QueryTxLogsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryTxLogsResponse create() => QueryTxLogsResponse._();
  QueryTxLogsResponse createEmptyInstance() => create();
  static $pb.PbList<QueryTxLogsResponse> createRepeated() => $pb.PbList<QueryTxLogsResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryTxLogsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryTxLogsResponse>(create);
  static QueryTxLogsResponse? _defaultInstance;

  /// logs represents the ethereum logs generated from the given transaction.
  @$pb.TagNumber(1)
  $core.List<$2.Log> get logs => $_getList(0);

  /// pagination defines the pagination in the response.
  @$pb.TagNumber(2)
  $3.PageResponse get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($3.PageResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $3.PageResponse ensurePagination() => $_ensure(1);
}

/// QueryParamsRequest defines the request type for querying x/vm parameters.
class QueryParamsRequest extends $pb.GeneratedMessage {
  factory QueryParamsRequest() => create();
  QueryParamsRequest._() : super();
  factory QueryParamsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryParamsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryParamsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryParamsRequest clone() => QueryParamsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryParamsRequest copyWith(void Function(QueryParamsRequest) updates) => super.copyWith((message) => updates(message as QueryParamsRequest)) as QueryParamsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryParamsRequest create() => QueryParamsRequest._();
  QueryParamsRequest createEmptyInstance() => create();
  static $pb.PbList<QueryParamsRequest> createRepeated() => $pb.PbList<QueryParamsRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryParamsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryParamsRequest>(create);
  static QueryParamsRequest? _defaultInstance;
}

/// QueryParamsResponse defines the response type for querying x/vm parameters.
class QueryParamsResponse extends $pb.GeneratedMessage {
  factory QueryParamsResponse({
    $2.Params? params,
  }) {
    final $result = create();
    if (params != null) {
      $result.params = params;
    }
    return $result;
  }
  QueryParamsResponse._() : super();
  factory QueryParamsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryParamsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryParamsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..aOM<$2.Params>(1, _omitFieldNames ? '' : 'params', subBuilder: $2.Params.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryParamsResponse clone() => QueryParamsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryParamsResponse copyWith(void Function(QueryParamsResponse) updates) => super.copyWith((message) => updates(message as QueryParamsResponse)) as QueryParamsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryParamsResponse create() => QueryParamsResponse._();
  QueryParamsResponse createEmptyInstance() => create();
  static $pb.PbList<QueryParamsResponse> createRepeated() => $pb.PbList<QueryParamsResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryParamsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryParamsResponse>(create);
  static QueryParamsResponse? _defaultInstance;

  /// params define the evm module parameters.
  @$pb.TagNumber(1)
  $2.Params get params => $_getN(0);
  @$pb.TagNumber(1)
  set params($2.Params v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasParams() => $_has(0);
  @$pb.TagNumber(1)
  void clearParams() => clearField(1);
  @$pb.TagNumber(1)
  $2.Params ensureParams() => $_ensure(0);
}

/// EthCallRequest defines EthCall request
class EthCallRequest extends $pb.GeneratedMessage {
  factory EthCallRequest({
    $core.List<$core.int>? args,
    $fixnum.Int64? gasCap,
    $core.List<$core.int>? proposerAddress,
    $fixnum.Int64? chainId,
    $core.List<$core.int>? overrides,
  }) {
    final $result = create();
    if (args != null) {
      $result.args = args;
    }
    if (gasCap != null) {
      $result.gasCap = gasCap;
    }
    if (proposerAddress != null) {
      $result.proposerAddress = proposerAddress;
    }
    if (chainId != null) {
      $result.chainId = chainId;
    }
    if (overrides != null) {
      $result.overrides = overrides;
    }
    return $result;
  }
  EthCallRequest._() : super();
  factory EthCallRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EthCallRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EthCallRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'args', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'gasCap', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'proposerAddress', $pb.PbFieldType.OY)
    ..aInt64(4, _omitFieldNames ? '' : 'chainId')
    ..a<$core.List<$core.int>>(5, _omitFieldNames ? '' : 'overrides', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EthCallRequest clone() => EthCallRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EthCallRequest copyWith(void Function(EthCallRequest) updates) => super.copyWith((message) => updates(message as EthCallRequest)) as EthCallRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EthCallRequest create() => EthCallRequest._();
  EthCallRequest createEmptyInstance() => create();
  static $pb.PbList<EthCallRequest> createRepeated() => $pb.PbList<EthCallRequest>();
  @$core.pragma('dart2js:noInline')
  static EthCallRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EthCallRequest>(create);
  static EthCallRequest? _defaultInstance;

  /// args uses the same json format as the json rpc api.
  @$pb.TagNumber(1)
  $core.List<$core.int> get args => $_getN(0);
  @$pb.TagNumber(1)
  set args($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasArgs() => $_has(0);
  @$pb.TagNumber(1)
  void clearArgs() => clearField(1);

  /// gas_cap defines the default gas cap to be used
  @$pb.TagNumber(2)
  $fixnum.Int64 get gasCap => $_getI64(1);
  @$pb.TagNumber(2)
  set gasCap($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGasCap() => $_has(1);
  @$pb.TagNumber(2)
  void clearGasCap() => clearField(2);

  /// proposer_address of the requested block in hex format
  @$pb.TagNumber(3)
  $core.List<$core.int> get proposerAddress => $_getN(2);
  @$pb.TagNumber(3)
  set proposerAddress($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasProposerAddress() => $_has(2);
  @$pb.TagNumber(3)
  void clearProposerAddress() => clearField(3);

  /// chain_id is the eip155 chain id parsed from the requested block header
  @$pb.TagNumber(4)
  $fixnum.Int64 get chainId => $_getI64(3);
  @$pb.TagNumber(4)
  set chainId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasChainId() => $_has(3);
  @$pb.TagNumber(4)
  void clearChainId() => clearField(4);

  /// state overrides encoded as json
  @$pb.TagNumber(5)
  $core.List<$core.int> get overrides => $_getN(4);
  @$pb.TagNumber(5)
  set overrides($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasOverrides() => $_has(4);
  @$pb.TagNumber(5)
  void clearOverrides() => clearField(5);
}

/// EstimateGasResponse defines EstimateGas response
class EstimateGasResponse extends $pb.GeneratedMessage {
  factory EstimateGasResponse({
    $fixnum.Int64? gas,
    $core.List<$core.int>? ret,
    $core.String? vmError,
  }) {
    final $result = create();
    if (gas != null) {
      $result.gas = gas;
    }
    if (ret != null) {
      $result.ret = ret;
    }
    if (vmError != null) {
      $result.vmError = vmError;
    }
    return $result;
  }
  EstimateGasResponse._() : super();
  factory EstimateGasResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EstimateGasResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EstimateGasResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'gas', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'ret', $pb.PbFieldType.OY)
    ..aOS(3, _omitFieldNames ? '' : 'vmError')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EstimateGasResponse clone() => EstimateGasResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EstimateGasResponse copyWith(void Function(EstimateGasResponse) updates) => super.copyWith((message) => updates(message as EstimateGasResponse)) as EstimateGasResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EstimateGasResponse create() => EstimateGasResponse._();
  EstimateGasResponse createEmptyInstance() => create();
  static $pb.PbList<EstimateGasResponse> createRepeated() => $pb.PbList<EstimateGasResponse>();
  @$core.pragma('dart2js:noInline')
  static EstimateGasResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EstimateGasResponse>(create);
  static EstimateGasResponse? _defaultInstance;

  /// gas returns the estimated gas
  @$pb.TagNumber(1)
  $fixnum.Int64 get gas => $_getI64(0);
  @$pb.TagNumber(1)
  set gas($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGas() => $_has(0);
  @$pb.TagNumber(1)
  void clearGas() => clearField(1);

  /// ret is the returned data from evm function (result or data supplied with
  /// revert opcode)
  @$pb.TagNumber(2)
  $core.List<$core.int> get ret => $_getN(1);
  @$pb.TagNumber(2)
  set ret($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRet() => $_has(1);
  @$pb.TagNumber(2)
  void clearRet() => clearField(2);

  /// vm_error is the error returned by vm execution
  @$pb.TagNumber(3)
  $core.String get vmError => $_getSZ(2);
  @$pb.TagNumber(3)
  set vmError($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVmError() => $_has(2);
  @$pb.TagNumber(3)
  void clearVmError() => clearField(3);
}

/// QueryTraceTxRequest defines TraceTx request
class QueryTraceTxRequest extends $pb.GeneratedMessage {
  factory QueryTraceTxRequest({
    $0.MsgEthereumTx? msg,
    $2.TraceConfig? traceConfig,
    $core.Iterable<$0.MsgEthereumTx>? predecessors,
    $fixnum.Int64? blockNumber,
    $core.String? blockHash,
    $4.Timestamp? blockTime,
    $core.List<$core.int>? proposerAddress,
    $fixnum.Int64? chainId,
    $fixnum.Int64? blockMaxGas,
  }) {
    final $result = create();
    if (msg != null) {
      $result.msg = msg;
    }
    if (traceConfig != null) {
      $result.traceConfig = traceConfig;
    }
    if (predecessors != null) {
      $result.predecessors.addAll(predecessors);
    }
    if (blockNumber != null) {
      $result.blockNumber = blockNumber;
    }
    if (blockHash != null) {
      $result.blockHash = blockHash;
    }
    if (blockTime != null) {
      $result.blockTime = blockTime;
    }
    if (proposerAddress != null) {
      $result.proposerAddress = proposerAddress;
    }
    if (chainId != null) {
      $result.chainId = chainId;
    }
    if (blockMaxGas != null) {
      $result.blockMaxGas = blockMaxGas;
    }
    return $result;
  }
  QueryTraceTxRequest._() : super();
  factory QueryTraceTxRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryTraceTxRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryTraceTxRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..aOM<$0.MsgEthereumTx>(1, _omitFieldNames ? '' : 'msg', subBuilder: $0.MsgEthereumTx.create)
    ..aOM<$2.TraceConfig>(3, _omitFieldNames ? '' : 'traceConfig', subBuilder: $2.TraceConfig.create)
    ..pc<$0.MsgEthereumTx>(4, _omitFieldNames ? '' : 'predecessors', $pb.PbFieldType.PM, subBuilder: $0.MsgEthereumTx.create)
    ..aInt64(5, _omitFieldNames ? '' : 'blockNumber')
    ..aOS(6, _omitFieldNames ? '' : 'blockHash')
    ..aOM<$4.Timestamp>(7, _omitFieldNames ? '' : 'blockTime', subBuilder: $4.Timestamp.create)
    ..a<$core.List<$core.int>>(8, _omitFieldNames ? '' : 'proposerAddress', $pb.PbFieldType.OY)
    ..aInt64(9, _omitFieldNames ? '' : 'chainId')
    ..aInt64(10, _omitFieldNames ? '' : 'blockMaxGas')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryTraceTxRequest clone() => QueryTraceTxRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryTraceTxRequest copyWith(void Function(QueryTraceTxRequest) updates) => super.copyWith((message) => updates(message as QueryTraceTxRequest)) as QueryTraceTxRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryTraceTxRequest create() => QueryTraceTxRequest._();
  QueryTraceTxRequest createEmptyInstance() => create();
  static $pb.PbList<QueryTraceTxRequest> createRepeated() => $pb.PbList<QueryTraceTxRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryTraceTxRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryTraceTxRequest>(create);
  static QueryTraceTxRequest? _defaultInstance;

  /// msg is the MsgEthereumTx for the requested transaction
  @$pb.TagNumber(1)
  $0.MsgEthereumTx get msg => $_getN(0);
  @$pb.TagNumber(1)
  set msg($0.MsgEthereumTx v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsg() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsg() => clearField(1);
  @$pb.TagNumber(1)
  $0.MsgEthereumTx ensureMsg() => $_ensure(0);

  /// trace_config holds extra parameters to trace functions.
  @$pb.TagNumber(3)
  $2.TraceConfig get traceConfig => $_getN(1);
  @$pb.TagNumber(3)
  set traceConfig($2.TraceConfig v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTraceConfig() => $_has(1);
  @$pb.TagNumber(3)
  void clearTraceConfig() => clearField(3);
  @$pb.TagNumber(3)
  $2.TraceConfig ensureTraceConfig() => $_ensure(1);

  /// predecessors is an array of transactions included in the same block
  /// need to be replayed first to get correct context for tracing.
  @$pb.TagNumber(4)
  $core.List<$0.MsgEthereumTx> get predecessors => $_getList(2);

  /// block_number of requested transaction
  @$pb.TagNumber(5)
  $fixnum.Int64 get blockNumber => $_getI64(3);
  @$pb.TagNumber(5)
  set blockNumber($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasBlockNumber() => $_has(3);
  @$pb.TagNumber(5)
  void clearBlockNumber() => clearField(5);

  /// block_hash of requested transaction
  @$pb.TagNumber(6)
  $core.String get blockHash => $_getSZ(4);
  @$pb.TagNumber(6)
  set blockHash($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasBlockHash() => $_has(4);
  @$pb.TagNumber(6)
  void clearBlockHash() => clearField(6);

  /// block_time of requested transaction
  @$pb.TagNumber(7)
  $4.Timestamp get blockTime => $_getN(5);
  @$pb.TagNumber(7)
  set blockTime($4.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasBlockTime() => $_has(5);
  @$pb.TagNumber(7)
  void clearBlockTime() => clearField(7);
  @$pb.TagNumber(7)
  $4.Timestamp ensureBlockTime() => $_ensure(5);

  /// proposer_address is the proposer of the requested block
  @$pb.TagNumber(8)
  $core.List<$core.int> get proposerAddress => $_getN(6);
  @$pb.TagNumber(8)
  set proposerAddress($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasProposerAddress() => $_has(6);
  @$pb.TagNumber(8)
  void clearProposerAddress() => clearField(8);

  /// chain_id is the eip155 chain id parsed from the requested block header
  @$pb.TagNumber(9)
  $fixnum.Int64 get chainId => $_getI64(7);
  @$pb.TagNumber(9)
  set chainId($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasChainId() => $_has(7);
  @$pb.TagNumber(9)
  void clearChainId() => clearField(9);

  /// block_max_gas of the block of the requested transaction
  @$pb.TagNumber(10)
  $fixnum.Int64 get blockMaxGas => $_getI64(8);
  @$pb.TagNumber(10)
  set blockMaxGas($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasBlockMaxGas() => $_has(8);
  @$pb.TagNumber(10)
  void clearBlockMaxGas() => clearField(10);
}

/// QueryTraceTxResponse defines TraceTx response
class QueryTraceTxResponse extends $pb.GeneratedMessage {
  factory QueryTraceTxResponse({
    $core.List<$core.int>? data,
  }) {
    final $result = create();
    if (data != null) {
      $result.data = data;
    }
    return $result;
  }
  QueryTraceTxResponse._() : super();
  factory QueryTraceTxResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryTraceTxResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryTraceTxResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryTraceTxResponse clone() => QueryTraceTxResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryTraceTxResponse copyWith(void Function(QueryTraceTxResponse) updates) => super.copyWith((message) => updates(message as QueryTraceTxResponse)) as QueryTraceTxResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryTraceTxResponse create() => QueryTraceTxResponse._();
  QueryTraceTxResponse createEmptyInstance() => create();
  static $pb.PbList<QueryTraceTxResponse> createRepeated() => $pb.PbList<QueryTraceTxResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryTraceTxResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryTraceTxResponse>(create);
  static QueryTraceTxResponse? _defaultInstance;

  /// data is the response serialized in bytes
  @$pb.TagNumber(1)
  $core.List<$core.int> get data => $_getN(0);
  @$pb.TagNumber(1)
  set data($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);
}

/// QueryTraceBlockRequest defines TraceTx request
class QueryTraceBlockRequest extends $pb.GeneratedMessage {
  factory QueryTraceBlockRequest({
    $core.Iterable<$0.MsgEthereumTx>? txs,
    $2.TraceConfig? traceConfig,
    $fixnum.Int64? blockNumber,
    $core.String? blockHash,
    $4.Timestamp? blockTime,
    $core.List<$core.int>? proposerAddress,
    $fixnum.Int64? chainId,
    $fixnum.Int64? blockMaxGas,
  }) {
    final $result = create();
    if (txs != null) {
      $result.txs.addAll(txs);
    }
    if (traceConfig != null) {
      $result.traceConfig = traceConfig;
    }
    if (blockNumber != null) {
      $result.blockNumber = blockNumber;
    }
    if (blockHash != null) {
      $result.blockHash = blockHash;
    }
    if (blockTime != null) {
      $result.blockTime = blockTime;
    }
    if (proposerAddress != null) {
      $result.proposerAddress = proposerAddress;
    }
    if (chainId != null) {
      $result.chainId = chainId;
    }
    if (blockMaxGas != null) {
      $result.blockMaxGas = blockMaxGas;
    }
    return $result;
  }
  QueryTraceBlockRequest._() : super();
  factory QueryTraceBlockRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryTraceBlockRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryTraceBlockRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..pc<$0.MsgEthereumTx>(1, _omitFieldNames ? '' : 'txs', $pb.PbFieldType.PM, subBuilder: $0.MsgEthereumTx.create)
    ..aOM<$2.TraceConfig>(3, _omitFieldNames ? '' : 'traceConfig', subBuilder: $2.TraceConfig.create)
    ..aInt64(5, _omitFieldNames ? '' : 'blockNumber')
    ..aOS(6, _omitFieldNames ? '' : 'blockHash')
    ..aOM<$4.Timestamp>(7, _omitFieldNames ? '' : 'blockTime', subBuilder: $4.Timestamp.create)
    ..a<$core.List<$core.int>>(8, _omitFieldNames ? '' : 'proposerAddress', $pb.PbFieldType.OY)
    ..aInt64(9, _omitFieldNames ? '' : 'chainId')
    ..aInt64(10, _omitFieldNames ? '' : 'blockMaxGas')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryTraceBlockRequest clone() => QueryTraceBlockRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryTraceBlockRequest copyWith(void Function(QueryTraceBlockRequest) updates) => super.copyWith((message) => updates(message as QueryTraceBlockRequest)) as QueryTraceBlockRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryTraceBlockRequest create() => QueryTraceBlockRequest._();
  QueryTraceBlockRequest createEmptyInstance() => create();
  static $pb.PbList<QueryTraceBlockRequest> createRepeated() => $pb.PbList<QueryTraceBlockRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryTraceBlockRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryTraceBlockRequest>(create);
  static QueryTraceBlockRequest? _defaultInstance;

  /// txs is an array of messages in the block
  @$pb.TagNumber(1)
  $core.List<$0.MsgEthereumTx> get txs => $_getList(0);

  /// trace_config holds extra parameters to trace functions.
  @$pb.TagNumber(3)
  $2.TraceConfig get traceConfig => $_getN(1);
  @$pb.TagNumber(3)
  set traceConfig($2.TraceConfig v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTraceConfig() => $_has(1);
  @$pb.TagNumber(3)
  void clearTraceConfig() => clearField(3);
  @$pb.TagNumber(3)
  $2.TraceConfig ensureTraceConfig() => $_ensure(1);

  /// block_number of the traced block
  @$pb.TagNumber(5)
  $fixnum.Int64 get blockNumber => $_getI64(2);
  @$pb.TagNumber(5)
  set blockNumber($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(5)
  $core.bool hasBlockNumber() => $_has(2);
  @$pb.TagNumber(5)
  void clearBlockNumber() => clearField(5);

  /// block_hash (hex) of the traced block
  @$pb.TagNumber(6)
  $core.String get blockHash => $_getSZ(3);
  @$pb.TagNumber(6)
  set blockHash($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(6)
  $core.bool hasBlockHash() => $_has(3);
  @$pb.TagNumber(6)
  void clearBlockHash() => clearField(6);

  /// block_time of the traced block
  @$pb.TagNumber(7)
  $4.Timestamp get blockTime => $_getN(4);
  @$pb.TagNumber(7)
  set blockTime($4.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasBlockTime() => $_has(4);
  @$pb.TagNumber(7)
  void clearBlockTime() => clearField(7);
  @$pb.TagNumber(7)
  $4.Timestamp ensureBlockTime() => $_ensure(4);

  /// proposer_address is the address of the requested block
  @$pb.TagNumber(8)
  $core.List<$core.int> get proposerAddress => $_getN(5);
  @$pb.TagNumber(8)
  set proposerAddress($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(8)
  $core.bool hasProposerAddress() => $_has(5);
  @$pb.TagNumber(8)
  void clearProposerAddress() => clearField(8);

  /// chain_id is the eip155 chain id parsed from the requested block header
  @$pb.TagNumber(9)
  $fixnum.Int64 get chainId => $_getI64(6);
  @$pb.TagNumber(9)
  set chainId($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(9)
  $core.bool hasChainId() => $_has(6);
  @$pb.TagNumber(9)
  void clearChainId() => clearField(9);

  /// block_max_gas of the traced block
  @$pb.TagNumber(10)
  $fixnum.Int64 get blockMaxGas => $_getI64(7);
  @$pb.TagNumber(10)
  set blockMaxGas($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(10)
  $core.bool hasBlockMaxGas() => $_has(7);
  @$pb.TagNumber(10)
  void clearBlockMaxGas() => clearField(10);
}

/// QueryTraceBlockResponse defines TraceBlock response
class QueryTraceBlockResponse extends $pb.GeneratedMessage {
  factory QueryTraceBlockResponse({
    $core.List<$core.int>? data,
  }) {
    final $result = create();
    if (data != null) {
      $result.data = data;
    }
    return $result;
  }
  QueryTraceBlockResponse._() : super();
  factory QueryTraceBlockResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryTraceBlockResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryTraceBlockResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryTraceBlockResponse clone() => QueryTraceBlockResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryTraceBlockResponse copyWith(void Function(QueryTraceBlockResponse) updates) => super.copyWith((message) => updates(message as QueryTraceBlockResponse)) as QueryTraceBlockResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryTraceBlockResponse create() => QueryTraceBlockResponse._();
  QueryTraceBlockResponse createEmptyInstance() => create();
  static $pb.PbList<QueryTraceBlockResponse> createRepeated() => $pb.PbList<QueryTraceBlockResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryTraceBlockResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryTraceBlockResponse>(create);
  static QueryTraceBlockResponse? _defaultInstance;

  /// data is the response serialized in bytes
  @$pb.TagNumber(1)
  $core.List<$core.int> get data => $_getN(0);
  @$pb.TagNumber(1)
  set data($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);
}

/// QueryTraceCallRequest defines TraceCall request
class QueryTraceCallRequest extends $pb.GeneratedMessage {
  factory QueryTraceCallRequest({
    $core.List<$core.int>? args,
    $fixnum.Int64? gasCap,
    $core.List<$core.int>? proposerAddress,
    $2.TraceConfig? traceConfig,
    $fixnum.Int64? blockNumber,
    $core.String? blockHash,
    $4.Timestamp? blockTime,
    $fixnum.Int64? chainId,
  }) {
    final $result = create();
    if (args != null) {
      $result.args = args;
    }
    if (gasCap != null) {
      $result.gasCap = gasCap;
    }
    if (proposerAddress != null) {
      $result.proposerAddress = proposerAddress;
    }
    if (traceConfig != null) {
      $result.traceConfig = traceConfig;
    }
    if (blockNumber != null) {
      $result.blockNumber = blockNumber;
    }
    if (blockHash != null) {
      $result.blockHash = blockHash;
    }
    if (blockTime != null) {
      $result.blockTime = blockTime;
    }
    if (chainId != null) {
      $result.chainId = chainId;
    }
    return $result;
  }
  QueryTraceCallRequest._() : super();
  factory QueryTraceCallRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryTraceCallRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryTraceCallRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'args', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'gasCap', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'proposerAddress', $pb.PbFieldType.OY)
    ..aOM<$2.TraceConfig>(4, _omitFieldNames ? '' : 'traceConfig', subBuilder: $2.TraceConfig.create)
    ..aInt64(5, _omitFieldNames ? '' : 'blockNumber')
    ..aOS(6, _omitFieldNames ? '' : 'blockHash')
    ..aOM<$4.Timestamp>(7, _omitFieldNames ? '' : 'blockTime', subBuilder: $4.Timestamp.create)
    ..aInt64(8, _omitFieldNames ? '' : 'chainId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryTraceCallRequest clone() => QueryTraceCallRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryTraceCallRequest copyWith(void Function(QueryTraceCallRequest) updates) => super.copyWith((message) => updates(message as QueryTraceCallRequest)) as QueryTraceCallRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryTraceCallRequest create() => QueryTraceCallRequest._();
  QueryTraceCallRequest createEmptyInstance() => create();
  static $pb.PbList<QueryTraceCallRequest> createRepeated() => $pb.PbList<QueryTraceCallRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryTraceCallRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryTraceCallRequest>(create);
  static QueryTraceCallRequest? _defaultInstance;

  /// args uses the same json format as the json rpc api.
  @$pb.TagNumber(1)
  $core.List<$core.int> get args => $_getN(0);
  @$pb.TagNumber(1)
  set args($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasArgs() => $_has(0);
  @$pb.TagNumber(1)
  void clearArgs() => clearField(1);

  /// gas_cap defines the default gas cap to be used
  @$pb.TagNumber(2)
  $fixnum.Int64 get gasCap => $_getI64(1);
  @$pb.TagNumber(2)
  set gasCap($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGasCap() => $_has(1);
  @$pb.TagNumber(2)
  void clearGasCap() => clearField(2);

  /// proposer_address of the requested block in hex format
  @$pb.TagNumber(3)
  $core.List<$core.int> get proposerAddress => $_getN(2);
  @$pb.TagNumber(3)
  set proposerAddress($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasProposerAddress() => $_has(2);
  @$pb.TagNumber(3)
  void clearProposerAddress() => clearField(3);

  /// trace_config holds extra parameters to trace functions.
  @$pb.TagNumber(4)
  $2.TraceConfig get traceConfig => $_getN(3);
  @$pb.TagNumber(4)
  set traceConfig($2.TraceConfig v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasTraceConfig() => $_has(3);
  @$pb.TagNumber(4)
  void clearTraceConfig() => clearField(4);
  @$pb.TagNumber(4)
  $2.TraceConfig ensureTraceConfig() => $_ensure(3);

  /// block_number of requested transaction
  @$pb.TagNumber(5)
  $fixnum.Int64 get blockNumber => $_getI64(4);
  @$pb.TagNumber(5)
  set blockNumber($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBlockNumber() => $_has(4);
  @$pb.TagNumber(5)
  void clearBlockNumber() => clearField(5);

  /// block_hash of requested transaction
  @$pb.TagNumber(6)
  $core.String get blockHash => $_getSZ(5);
  @$pb.TagNumber(6)
  set blockHash($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBlockHash() => $_has(5);
  @$pb.TagNumber(6)
  void clearBlockHash() => clearField(6);

  /// block_time of requested transaction
  @$pb.TagNumber(7)
  $4.Timestamp get blockTime => $_getN(6);
  @$pb.TagNumber(7)
  set blockTime($4.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasBlockTime() => $_has(6);
  @$pb.TagNumber(7)
  void clearBlockTime() => clearField(7);
  @$pb.TagNumber(7)
  $4.Timestamp ensureBlockTime() => $_ensure(6);

  /// chain_id is the the eip155 chain id parsed from the requested block header
  @$pb.TagNumber(8)
  $fixnum.Int64 get chainId => $_getI64(7);
  @$pb.TagNumber(8)
  set chainId($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasChainId() => $_has(7);
  @$pb.TagNumber(8)
  void clearChainId() => clearField(8);
}

/// QueryTraceCallResponse defines TraceCall response
class QueryTraceCallResponse extends $pb.GeneratedMessage {
  factory QueryTraceCallResponse({
    $core.List<$core.int>? data,
  }) {
    final $result = create();
    if (data != null) {
      $result.data = data;
    }
    return $result;
  }
  QueryTraceCallResponse._() : super();
  factory QueryTraceCallResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryTraceCallResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryTraceCallResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryTraceCallResponse clone() => QueryTraceCallResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryTraceCallResponse copyWith(void Function(QueryTraceCallResponse) updates) => super.copyWith((message) => updates(message as QueryTraceCallResponse)) as QueryTraceCallResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryTraceCallResponse create() => QueryTraceCallResponse._();
  QueryTraceCallResponse createEmptyInstance() => create();
  static $pb.PbList<QueryTraceCallResponse> createRepeated() => $pb.PbList<QueryTraceCallResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryTraceCallResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryTraceCallResponse>(create);
  static QueryTraceCallResponse? _defaultInstance;

  /// data is the response serialized in bytes
  @$pb.TagNumber(1)
  $core.List<$core.int> get data => $_getN(0);
  @$pb.TagNumber(1)
  set data($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);
}

/// QueryBaseFeeRequest defines the request type for querying the EIP1559 base
/// fee.
class QueryBaseFeeRequest extends $pb.GeneratedMessage {
  factory QueryBaseFeeRequest() => create();
  QueryBaseFeeRequest._() : super();
  factory QueryBaseFeeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryBaseFeeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryBaseFeeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryBaseFeeRequest clone() => QueryBaseFeeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryBaseFeeRequest copyWith(void Function(QueryBaseFeeRequest) updates) => super.copyWith((message) => updates(message as QueryBaseFeeRequest)) as QueryBaseFeeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryBaseFeeRequest create() => QueryBaseFeeRequest._();
  QueryBaseFeeRequest createEmptyInstance() => create();
  static $pb.PbList<QueryBaseFeeRequest> createRepeated() => $pb.PbList<QueryBaseFeeRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryBaseFeeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryBaseFeeRequest>(create);
  static QueryBaseFeeRequest? _defaultInstance;
}

/// QueryBaseFeeResponse returns the EIP1559 base fee.
class QueryBaseFeeResponse extends $pb.GeneratedMessage {
  factory QueryBaseFeeResponse({
    $core.String? baseFee,
  }) {
    final $result = create();
    if (baseFee != null) {
      $result.baseFee = baseFee;
    }
    return $result;
  }
  QueryBaseFeeResponse._() : super();
  factory QueryBaseFeeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryBaseFeeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryBaseFeeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'baseFee')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryBaseFeeResponse clone() => QueryBaseFeeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryBaseFeeResponse copyWith(void Function(QueryBaseFeeResponse) updates) => super.copyWith((message) => updates(message as QueryBaseFeeResponse)) as QueryBaseFeeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryBaseFeeResponse create() => QueryBaseFeeResponse._();
  QueryBaseFeeResponse createEmptyInstance() => create();
  static $pb.PbList<QueryBaseFeeResponse> createRepeated() => $pb.PbList<QueryBaseFeeResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryBaseFeeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryBaseFeeResponse>(create);
  static QueryBaseFeeResponse? _defaultInstance;

  /// base_fee is the EIP1559 base fee
  @$pb.TagNumber(1)
  $core.String get baseFee => $_getSZ(0);
  @$pb.TagNumber(1)
  set baseFee($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBaseFee() => $_has(0);
  @$pb.TagNumber(1)
  void clearBaseFee() => clearField(1);
}

/// QueryGlobalMinGasPriceRequest defines the request type for querying the
/// GlobalMinGasPrice
class QueryGlobalMinGasPriceRequest extends $pb.GeneratedMessage {
  factory QueryGlobalMinGasPriceRequest() => create();
  QueryGlobalMinGasPriceRequest._() : super();
  factory QueryGlobalMinGasPriceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGlobalMinGasPriceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryGlobalMinGasPriceRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGlobalMinGasPriceRequest clone() => QueryGlobalMinGasPriceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGlobalMinGasPriceRequest copyWith(void Function(QueryGlobalMinGasPriceRequest) updates) => super.copyWith((message) => updates(message as QueryGlobalMinGasPriceRequest)) as QueryGlobalMinGasPriceRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryGlobalMinGasPriceRequest create() => QueryGlobalMinGasPriceRequest._();
  QueryGlobalMinGasPriceRequest createEmptyInstance() => create();
  static $pb.PbList<QueryGlobalMinGasPriceRequest> createRepeated() => $pb.PbList<QueryGlobalMinGasPriceRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryGlobalMinGasPriceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGlobalMinGasPriceRequest>(create);
  static QueryGlobalMinGasPriceRequest? _defaultInstance;
}

/// QueryGlobalMinGasPriceResponse returns the GlobalMinGasPrice
class QueryGlobalMinGasPriceResponse extends $pb.GeneratedMessage {
  factory QueryGlobalMinGasPriceResponse({
    $core.String? minGasPrice,
  }) {
    final $result = create();
    if (minGasPrice != null) {
      $result.minGasPrice = minGasPrice;
    }
    return $result;
  }
  QueryGlobalMinGasPriceResponse._() : super();
  factory QueryGlobalMinGasPriceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGlobalMinGasPriceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryGlobalMinGasPriceResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'minGasPrice')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGlobalMinGasPriceResponse clone() => QueryGlobalMinGasPriceResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGlobalMinGasPriceResponse copyWith(void Function(QueryGlobalMinGasPriceResponse) updates) => super.copyWith((message) => updates(message as QueryGlobalMinGasPriceResponse)) as QueryGlobalMinGasPriceResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryGlobalMinGasPriceResponse create() => QueryGlobalMinGasPriceResponse._();
  QueryGlobalMinGasPriceResponse createEmptyInstance() => create();
  static $pb.PbList<QueryGlobalMinGasPriceResponse> createRepeated() => $pb.PbList<QueryGlobalMinGasPriceResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryGlobalMinGasPriceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGlobalMinGasPriceResponse>(create);
  static QueryGlobalMinGasPriceResponse? _defaultInstance;

  /// min_gas_price is the feemarket's min_gas_price
  @$pb.TagNumber(1)
  $core.String get minGasPrice => $_getSZ(0);
  @$pb.TagNumber(1)
  set minGasPrice($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMinGasPrice() => $_has(0);
  @$pb.TagNumber(1)
  void clearMinGasPrice() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
