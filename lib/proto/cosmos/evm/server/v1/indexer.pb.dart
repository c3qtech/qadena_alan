//
//  Generated code. Do not modify.
//  source: cosmos/evm/server/v1/indexer.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

/// TxResult is the value stored in eth tx indexer
class TxResult extends $pb.GeneratedMessage {
  factory TxResult({
    $fixnum.Int64? height,
    $core.int? txIndex,
    $core.int? msgIndex,
    $core.int? ethTxIndex,
    $core.bool? failed,
    $fixnum.Int64? gasUsed,
    $fixnum.Int64? cumulativeGasUsed,
  }) {
    final $result = create();
    if (height != null) {
      $result.height = height;
    }
    if (txIndex != null) {
      $result.txIndex = txIndex;
    }
    if (msgIndex != null) {
      $result.msgIndex = msgIndex;
    }
    if (ethTxIndex != null) {
      $result.ethTxIndex = ethTxIndex;
    }
    if (failed != null) {
      $result.failed = failed;
    }
    if (gasUsed != null) {
      $result.gasUsed = gasUsed;
    }
    if (cumulativeGasUsed != null) {
      $result.cumulativeGasUsed = cumulativeGasUsed;
    }
    return $result;
  }
  TxResult._() : super();
  factory TxResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TxResult', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.server.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'height')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'txIndex', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'msgIndex', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'ethTxIndex', $pb.PbFieldType.O3)
    ..aOB(5, _omitFieldNames ? '' : 'failed')
    ..a<$fixnum.Int64>(6, _omitFieldNames ? '' : 'gasUsed', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(7, _omitFieldNames ? '' : 'cumulativeGasUsed', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
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

  /// height of the blockchain
  @$pb.TagNumber(1)
  $fixnum.Int64 get height => $_getI64(0);
  @$pb.TagNumber(1)
  set height($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeight() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeight() => clearField(1);

  /// tx_index of the cosmos transaction
  @$pb.TagNumber(2)
  $core.int get txIndex => $_getIZ(1);
  @$pb.TagNumber(2)
  set txIndex($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTxIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearTxIndex() => clearField(2);

  /// msg_index in a batch transaction
  @$pb.TagNumber(3)
  $core.int get msgIndex => $_getIZ(2);
  @$pb.TagNumber(3)
  set msgIndex($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMsgIndex() => $_has(2);
  @$pb.TagNumber(3)
  void clearMsgIndex() => clearField(3);

  /// eth_tx_index is the index in the list of valid eth tx in the block,
  /// aka. the transaction list returned by eth_getBlock api.
  @$pb.TagNumber(4)
  $core.int get ethTxIndex => $_getIZ(3);
  @$pb.TagNumber(4)
  set ethTxIndex($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEthTxIndex() => $_has(3);
  @$pb.TagNumber(4)
  void clearEthTxIndex() => clearField(4);

  /// failed is true if the eth transaction did not go succeed
  @$pb.TagNumber(5)
  $core.bool get failed => $_getBF(4);
  @$pb.TagNumber(5)
  set failed($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFailed() => $_has(4);
  @$pb.TagNumber(5)
  void clearFailed() => clearField(5);

  /// gas_used by the transaction. If it exceeds the block gas limit,
  /// it's set to gas limit, which is what's actually deducted by ante handler.
  @$pb.TagNumber(6)
  $fixnum.Int64 get gasUsed => $_getI64(5);
  @$pb.TagNumber(6)
  set gasUsed($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasGasUsed() => $_has(5);
  @$pb.TagNumber(6)
  void clearGasUsed() => clearField(6);

  /// cumulative_gas_used specifies the cumulated amount of gas used for all
  /// processed messages within the current batch transaction.
  @$pb.TagNumber(7)
  $fixnum.Int64 get cumulativeGasUsed => $_getI64(6);
  @$pb.TagNumber(7)
  set cumulativeGasUsed($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCumulativeGasUsed() => $_has(6);
  @$pb.TagNumber(7)
  void clearCumulativeGasUsed() => clearField(7);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
