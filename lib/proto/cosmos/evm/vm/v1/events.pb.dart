//
//  Generated code. Do not modify.
//  source: cosmos/evm/vm/v1/events.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// EventEthereumTx defines the event for an Ethereum transaction
class EventEthereumTx extends $pb.GeneratedMessage {
  factory EventEthereumTx({
    $core.String? amount,
    $core.String? ethHash,
    $core.String? index,
    $core.String? gasUsed,
    $core.String? hash,
    $core.String? recipient,
    $core.String? ethTxFailed,
  }) {
    final $result = create();
    if (amount != null) {
      $result.amount = amount;
    }
    if (ethHash != null) {
      $result.ethHash = ethHash;
    }
    if (index != null) {
      $result.index = index;
    }
    if (gasUsed != null) {
      $result.gasUsed = gasUsed;
    }
    if (hash != null) {
      $result.hash = hash;
    }
    if (recipient != null) {
      $result.recipient = recipient;
    }
    if (ethTxFailed != null) {
      $result.ethTxFailed = ethTxFailed;
    }
    return $result;
  }
  EventEthereumTx._() : super();
  factory EventEthereumTx.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventEthereumTx.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EventEthereumTx', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'amount')
    ..aOS(2, _omitFieldNames ? '' : 'ethHash')
    ..aOS(3, _omitFieldNames ? '' : 'index')
    ..aOS(4, _omitFieldNames ? '' : 'gasUsed')
    ..aOS(5, _omitFieldNames ? '' : 'hash')
    ..aOS(6, _omitFieldNames ? '' : 'recipient')
    ..aOS(7, _omitFieldNames ? '' : 'ethTxFailed')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EventEthereumTx clone() => EventEthereumTx()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EventEthereumTx copyWith(void Function(EventEthereumTx) updates) => super.copyWith((message) => updates(message as EventEthereumTx)) as EventEthereumTx;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EventEthereumTx create() => EventEthereumTx._();
  EventEthereumTx createEmptyInstance() => create();
  static $pb.PbList<EventEthereumTx> createRepeated() => $pb.PbList<EventEthereumTx>();
  @$core.pragma('dart2js:noInline')
  static EventEthereumTx getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventEthereumTx>(create);
  static EventEthereumTx? _defaultInstance;

  /// amount
  @$pb.TagNumber(1)
  $core.String get amount => $_getSZ(0);
  @$pb.TagNumber(1)
  set amount($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAmount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAmount() => clearField(1);

  /// eth_hash is the Ethereum hash of the transaction
  @$pb.TagNumber(2)
  $core.String get ethHash => $_getSZ(1);
  @$pb.TagNumber(2)
  set ethHash($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEthHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearEthHash() => clearField(2);

  /// index of the transaction in the block
  @$pb.TagNumber(3)
  $core.String get index => $_getSZ(2);
  @$pb.TagNumber(3)
  set index($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIndex() => $_has(2);
  @$pb.TagNumber(3)
  void clearIndex() => clearField(3);

  /// gas_used is the amount of gas used by the transaction
  @$pb.TagNumber(4)
  $core.String get gasUsed => $_getSZ(3);
  @$pb.TagNumber(4)
  set gasUsed($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasGasUsed() => $_has(3);
  @$pb.TagNumber(4)
  void clearGasUsed() => clearField(4);

  /// hash is the CometBFT hash of the transaction
  @$pb.TagNumber(5)
  $core.String get hash => $_getSZ(4);
  @$pb.TagNumber(5)
  set hash($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasHash() => $_has(4);
  @$pb.TagNumber(5)
  void clearHash() => clearField(5);

  /// recipient of the transaction
  @$pb.TagNumber(6)
  $core.String get recipient => $_getSZ(5);
  @$pb.TagNumber(6)
  set recipient($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRecipient() => $_has(5);
  @$pb.TagNumber(6)
  void clearRecipient() => clearField(6);

  /// eth_tx_failed contains a VM error should it occur
  @$pb.TagNumber(7)
  $core.String get ethTxFailed => $_getSZ(6);
  @$pb.TagNumber(7)
  set ethTxFailed($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasEthTxFailed() => $_has(6);
  @$pb.TagNumber(7)
  void clearEthTxFailed() => clearField(7);
}

/// EventTxLog defines the event for an Ethereum transaction log
class EventTxLog extends $pb.GeneratedMessage {
  factory EventTxLog({
    $core.Iterable<$core.String>? txLogs,
  }) {
    final $result = create();
    if (txLogs != null) {
      $result.txLogs.addAll(txLogs);
    }
    return $result;
  }
  EventTxLog._() : super();
  factory EventTxLog.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventTxLog.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EventTxLog', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'txLogs')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EventTxLog clone() => EventTxLog()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EventTxLog copyWith(void Function(EventTxLog) updates) => super.copyWith((message) => updates(message as EventTxLog)) as EventTxLog;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EventTxLog create() => EventTxLog._();
  EventTxLog createEmptyInstance() => create();
  static $pb.PbList<EventTxLog> createRepeated() => $pb.PbList<EventTxLog>();
  @$core.pragma('dart2js:noInline')
  static EventTxLog getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventTxLog>(create);
  static EventTxLog? _defaultInstance;

  /// tx_logs is an array of transaction logs
  @$pb.TagNumber(1)
  $core.List<$core.String> get txLogs => $_getList(0);
}

/// EventMessage
class EventMessage extends $pb.GeneratedMessage {
  factory EventMessage({
    $core.String? module,
    $core.String? sender,
    $core.String? txType,
  }) {
    final $result = create();
    if (module != null) {
      $result.module = module;
    }
    if (sender != null) {
      $result.sender = sender;
    }
    if (txType != null) {
      $result.txType = txType;
    }
    return $result;
  }
  EventMessage._() : super();
  factory EventMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EventMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'module')
    ..aOS(2, _omitFieldNames ? '' : 'sender')
    ..aOS(3, _omitFieldNames ? '' : 'txType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EventMessage clone() => EventMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EventMessage copyWith(void Function(EventMessage) updates) => super.copyWith((message) => updates(message as EventMessage)) as EventMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EventMessage create() => EventMessage._();
  EventMessage createEmptyInstance() => create();
  static $pb.PbList<EventMessage> createRepeated() => $pb.PbList<EventMessage>();
  @$core.pragma('dart2js:noInline')
  static EventMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventMessage>(create);
  static EventMessage? _defaultInstance;

  /// module which emits the event
  @$pb.TagNumber(1)
  $core.String get module => $_getSZ(0);
  @$pb.TagNumber(1)
  set module($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasModule() => $_has(0);
  @$pb.TagNumber(1)
  void clearModule() => clearField(1);

  /// sender of the message
  @$pb.TagNumber(2)
  $core.String get sender => $_getSZ(1);
  @$pb.TagNumber(2)
  set sender($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSender() => $_has(1);
  @$pb.TagNumber(2)
  void clearSender() => clearField(2);

  /// tx_type is the type of the message
  @$pb.TagNumber(3)
  $core.String get txType => $_getSZ(2);
  @$pb.TagNumber(3)
  set txType($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTxType() => $_has(2);
  @$pb.TagNumber(3)
  void clearTxType() => clearField(3);
}

/// EventBlockBloom defines an Ethereum block bloom filter event
class EventBlockBloom extends $pb.GeneratedMessage {
  factory EventBlockBloom({
    $core.String? bloom,
  }) {
    final $result = create();
    if (bloom != null) {
      $result.bloom = bloom;
    }
    return $result;
  }
  EventBlockBloom._() : super();
  factory EventBlockBloom.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventBlockBloom.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EventBlockBloom', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.vm.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'bloom')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EventBlockBloom clone() => EventBlockBloom()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EventBlockBloom copyWith(void Function(EventBlockBloom) updates) => super.copyWith((message) => updates(message as EventBlockBloom)) as EventBlockBloom;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EventBlockBloom create() => EventBlockBloom._();
  EventBlockBloom createEmptyInstance() => create();
  static $pb.PbList<EventBlockBloom> createRepeated() => $pb.PbList<EventBlockBloom>();
  @$core.pragma('dart2js:noInline')
  static EventBlockBloom getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventBlockBloom>(create);
  static EventBlockBloom? _defaultInstance;

  /// bloom is the bloom filter of the block
  @$pb.TagNumber(1)
  $core.String get bloom => $_getSZ(0);
  @$pb.TagNumber(1)
  set bloom($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBloom() => $_has(0);
  @$pb.TagNumber(1)
  void clearBloom() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
