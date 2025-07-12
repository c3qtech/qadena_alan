//
//  Generated code. Do not modify.
//  source: qadena/qadena/genesis.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'credential.pb.dart' as $7;
import 'enclave_identity.pb.dart' as $3;
import 'interval_public_key_i_d.pb.dart' as $10;
import 'jar_regulator.pb.dart' as $9;
import 'params.pb.dart' as $20;
import 'pioneer_jar.pb.dart' as $11;
import 'protect_key.pb.dart' as $5;
import 'public_key.pb.dart' as $8;
import 'recover_key.pb.dart' as $6;
import 'suspicious_transaction.pb.dart' as $28;
import 'wallet.pb.dart' as $4;

/// GenesisState defines the qadena module's genesis state.
class GenesisState extends $pb.GeneratedMessage {
  factory GenesisState({
    $20.Params? params,
    $core.Iterable<$7.Credential>? credentialList,
    $core.Iterable<$8.PublicKey>? publicKeyList,
    $core.Iterable<$4.Wallet>? walletList,
    $core.Iterable<$10.IntervalPublicKeyID>? intervalPublicKeyIDList,
    $core.Iterable<$11.PioneerJar>? pioneerJarList,
    $core.Iterable<$9.JarRegulator>? jarRegulatorList,
    $core.Iterable<$28.SuspiciousTransaction>? suspiciousTransactionList,
    $fixnum.Int64? suspiciousTransactionCount,
    $core.Iterable<$5.ProtectKey>? protectKeyList,
    $core.Iterable<$6.RecoverKey>? recoverKeyList,
    $core.Iterable<$3.EnclaveIdentity>? enclaveIdentityList,
  }) {
    final $result = create();
    if (params != null) {
      $result.params = params;
    }
    if (credentialList != null) {
      $result.credentialList.addAll(credentialList);
    }
    if (publicKeyList != null) {
      $result.publicKeyList.addAll(publicKeyList);
    }
    if (walletList != null) {
      $result.walletList.addAll(walletList);
    }
    if (intervalPublicKeyIDList != null) {
      $result.intervalPublicKeyIDList.addAll(intervalPublicKeyIDList);
    }
    if (pioneerJarList != null) {
      $result.pioneerJarList.addAll(pioneerJarList);
    }
    if (jarRegulatorList != null) {
      $result.jarRegulatorList.addAll(jarRegulatorList);
    }
    if (suspiciousTransactionList != null) {
      $result.suspiciousTransactionList.addAll(suspiciousTransactionList);
    }
    if (suspiciousTransactionCount != null) {
      $result.suspiciousTransactionCount = suspiciousTransactionCount;
    }
    if (protectKeyList != null) {
      $result.protectKeyList.addAll(protectKeyList);
    }
    if (recoverKeyList != null) {
      $result.recoverKeyList.addAll(recoverKeyList);
    }
    if (enclaveIdentityList != null) {
      $result.enclaveIdentityList.addAll(enclaveIdentityList);
    }
    return $result;
  }
  GenesisState._() : super();
  factory GenesisState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenesisState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GenesisState', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOM<$20.Params>(1, _omitFieldNames ? '' : 'params', subBuilder: $20.Params.create)
    ..pc<$7.Credential>(2, _omitFieldNames ? '' : 'credentialList', $pb.PbFieldType.PM, protoName: 'credentialList', subBuilder: $7.Credential.create)
    ..pc<$8.PublicKey>(3, _omitFieldNames ? '' : 'publicKeyList', $pb.PbFieldType.PM, protoName: 'publicKeyList', subBuilder: $8.PublicKey.create)
    ..pc<$4.Wallet>(4, _omitFieldNames ? '' : 'walletList', $pb.PbFieldType.PM, protoName: 'walletList', subBuilder: $4.Wallet.create)
    ..pc<$10.IntervalPublicKeyID>(5, _omitFieldNames ? '' : 'intervalPublicKeyIDList', $pb.PbFieldType.PM, protoName: 'intervalPublicKeyIDList', subBuilder: $10.IntervalPublicKeyID.create)
    ..pc<$11.PioneerJar>(6, _omitFieldNames ? '' : 'pioneerJarList', $pb.PbFieldType.PM, protoName: 'pioneerJarList', subBuilder: $11.PioneerJar.create)
    ..pc<$9.JarRegulator>(7, _omitFieldNames ? '' : 'jarRegulatorList', $pb.PbFieldType.PM, protoName: 'jarRegulatorList', subBuilder: $9.JarRegulator.create)
    ..pc<$28.SuspiciousTransaction>(8, _omitFieldNames ? '' : 'suspiciousTransactionList', $pb.PbFieldType.PM, protoName: 'suspiciousTransactionList', subBuilder: $28.SuspiciousTransaction.create)
    ..a<$fixnum.Int64>(9, _omitFieldNames ? '' : 'suspiciousTransactionCount', $pb.PbFieldType.OU6, protoName: 'suspiciousTransactionCount', defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<$5.ProtectKey>(10, _omitFieldNames ? '' : 'protectKeyList', $pb.PbFieldType.PM, protoName: 'protectKeyList', subBuilder: $5.ProtectKey.create)
    ..pc<$6.RecoverKey>(11, _omitFieldNames ? '' : 'recoverKeyList', $pb.PbFieldType.PM, protoName: 'recoverKeyList', subBuilder: $6.RecoverKey.create)
    ..pc<$3.EnclaveIdentity>(12, _omitFieldNames ? '' : 'enclaveIdentityList', $pb.PbFieldType.PM, protoName: 'enclaveIdentityList', subBuilder: $3.EnclaveIdentity.create)
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

  /// params defines all the parameters of the module.
  @$pb.TagNumber(1)
  $20.Params get params => $_getN(0);
  @$pb.TagNumber(1)
  set params($20.Params v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasParams() => $_has(0);
  @$pb.TagNumber(1)
  void clearParams() => clearField(1);
  @$pb.TagNumber(1)
  $20.Params ensureParams() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$7.Credential> get credentialList => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$8.PublicKey> get publicKeyList => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$4.Wallet> get walletList => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<$10.IntervalPublicKeyID> get intervalPublicKeyIDList => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<$11.PioneerJar> get pioneerJarList => $_getList(5);

  @$pb.TagNumber(7)
  $core.List<$9.JarRegulator> get jarRegulatorList => $_getList(6);

  @$pb.TagNumber(8)
  $core.List<$28.SuspiciousTransaction> get suspiciousTransactionList => $_getList(7);

  @$pb.TagNumber(9)
  $fixnum.Int64 get suspiciousTransactionCount => $_getI64(8);
  @$pb.TagNumber(9)
  set suspiciousTransactionCount($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasSuspiciousTransactionCount() => $_has(8);
  @$pb.TagNumber(9)
  void clearSuspiciousTransactionCount() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<$5.ProtectKey> get protectKeyList => $_getList(9);

  @$pb.TagNumber(11)
  $core.List<$6.RecoverKey> get recoverKeyList => $_getList(10);

  @$pb.TagNumber(12)
  $core.List<$3.EnclaveIdentity> get enclaveIdentityList => $_getList(11);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
