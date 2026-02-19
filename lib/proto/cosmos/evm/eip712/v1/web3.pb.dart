//
//  Generated code. Do not modify.
//  source: cosmos/evm/eip712/v1/web3.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

/// ExtensionOptionsWeb3Tx is an extension option that specifies the typed chain
/// id, the fee payer as well as its signature data.
class ExtensionOptionsWeb3Tx extends $pb.GeneratedMessage {
  factory ExtensionOptionsWeb3Tx({
    $fixnum.Int64? typedDataChainId,
    $core.String? feePayer,
    $core.List<$core.int>? feePayerSig,
  }) {
    final $result = create();
    if (typedDataChainId != null) {
      $result.typedDataChainId = typedDataChainId;
    }
    if (feePayer != null) {
      $result.feePayer = feePayer;
    }
    if (feePayerSig != null) {
      $result.feePayerSig = feePayerSig;
    }
    return $result;
  }
  ExtensionOptionsWeb3Tx._() : super();
  factory ExtensionOptionsWeb3Tx.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExtensionOptionsWeb3Tx.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ExtensionOptionsWeb3Tx', package: const $pb.PackageName(_omitMessageNames ? '' : 'cosmos.evm.eip712.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'typedDataChainId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'feePayer')
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'feePayerSig', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExtensionOptionsWeb3Tx clone() => ExtensionOptionsWeb3Tx()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExtensionOptionsWeb3Tx copyWith(void Function(ExtensionOptionsWeb3Tx) updates) => super.copyWith((message) => updates(message as ExtensionOptionsWeb3Tx)) as ExtensionOptionsWeb3Tx;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExtensionOptionsWeb3Tx create() => ExtensionOptionsWeb3Tx._();
  ExtensionOptionsWeb3Tx createEmptyInstance() => create();
  static $pb.PbList<ExtensionOptionsWeb3Tx> createRepeated() => $pb.PbList<ExtensionOptionsWeb3Tx>();
  @$core.pragma('dart2js:noInline')
  static ExtensionOptionsWeb3Tx getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExtensionOptionsWeb3Tx>(create);
  static ExtensionOptionsWeb3Tx? _defaultInstance;

  /// typed_data_chain_id is used only in EIP712 Domain and should match
  /// Ethereum network ID in a Web3 provider (e.g. Metamask).
  @$pb.TagNumber(1)
  $fixnum.Int64 get typedDataChainId => $_getI64(0);
  @$pb.TagNumber(1)
  set typedDataChainId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTypedDataChainId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTypedDataChainId() => clearField(1);

  /// fee_payer is an account address for the fee payer. It will be validated
  /// during EIP712 signature checking.
  @$pb.TagNumber(2)
  $core.String get feePayer => $_getSZ(1);
  @$pb.TagNumber(2)
  set feePayer($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFeePayer() => $_has(1);
  @$pb.TagNumber(2)
  void clearFeePayer() => clearField(2);

  /// fee_payer_sig is a signature data from the fee paying account,
  /// allows to perform fee delegation when using EIP712 Domain.
  @$pb.TagNumber(3)
  $core.List<$core.int> get feePayerSig => $_getN(2);
  @$pb.TagNumber(3)
  set feePayerSig($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFeePayerSig() => $_has(2);
  @$pb.TagNumber(3)
  void clearFeePayerSig() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
