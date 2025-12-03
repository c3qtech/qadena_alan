//
//  Generated code. Do not modify.
//  source: qadena/qadena/tx.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/timestamp.pb.dart' as $16;
import 'b_pedersen_commit.pb.dart' as $19;
import 'bigint.pb.dart' as $14;
import 'bulk_credential.pb.dart' as $26;
import 'params.pb.dart' as $20;
import 'pedersen_commit.pb.dart' as $22;
import 'range_proof.pb.dart' as $23;
import 'recover_share.pb.dart' as $25;
import 'secret_share_priv_k.pb.dart' as $12;
import 'share.pb.dart' as $24;
import 'v_share_bind_data.pb.dart' as $21;

/// MsgUpdateParams is the Msg/UpdateParams request type.
class MsgUpdateParams extends $pb.GeneratedMessage {
  factory MsgUpdateParams({
    $core.String? authority,
    $20.Params? params,
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgUpdateParams', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'authority')
    ..aOM<$20.Params>(2, _omitFieldNames ? '' : 'params', subBuilder: $20.Params.create)
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

  /// authority is the address that controls the module (defaults to x/gov unless overwritten).
  @$pb.TagNumber(1)
  $core.String get authority => $_getSZ(0);
  @$pb.TagNumber(1)
  set authority($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAuthority() => $_has(0);
  @$pb.TagNumber(1)
  void clearAuthority() => clearField(1);

  /// NOTE: All parameters must be supplied.
  @$pb.TagNumber(2)
  $20.Params get params => $_getN(1);
  @$pb.TagNumber(2)
  set params($20.Params v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasParams() => $_has(1);
  @$pb.TagNumber(2)
  void clearParams() => clearField(2);
  @$pb.TagNumber(2)
  $20.Params ensureParams() => $_ensure(1);
}

/// MsgUpdateParamsResponse defines the response structure for executing a
/// MsgUpdateParams message.
class MsgUpdateParamsResponse extends $pb.GeneratedMessage {
  factory MsgUpdateParamsResponse() => create();
  MsgUpdateParamsResponse._() : super();
  factory MsgUpdateParamsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgUpdateParamsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgUpdateParamsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
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

class MsgCreateSuspiciousTransaction extends $pb.GeneratedMessage {
  factory MsgCreateSuspiciousTransaction({
    $core.String? creator,
    $core.String? jarID,
    $core.String? regulatorPubKID,
    $core.String? reason,
    $16.Timestamp? time,
    $core.List<$core.int>? encSourcePersonalInfoRegulatorPubK,
    $core.List<$core.int>? encDestinationPersonalInfoRegulatorPubK,
    $core.List<$core.int>? encEAmountRegulatorPubK,
    $core.List<$core.int>? encOptInReasonRegulatorPubK,
  }) {
    final $result = create();
    if (creator != null) {
      $result.creator = creator;
    }
    if (jarID != null) {
      $result.jarID = jarID;
    }
    if (regulatorPubKID != null) {
      $result.regulatorPubKID = regulatorPubKID;
    }
    if (reason != null) {
      $result.reason = reason;
    }
    if (time != null) {
      $result.time = time;
    }
    if (encSourcePersonalInfoRegulatorPubK != null) {
      $result.encSourcePersonalInfoRegulatorPubK = encSourcePersonalInfoRegulatorPubK;
    }
    if (encDestinationPersonalInfoRegulatorPubK != null) {
      $result.encDestinationPersonalInfoRegulatorPubK = encDestinationPersonalInfoRegulatorPubK;
    }
    if (encEAmountRegulatorPubK != null) {
      $result.encEAmountRegulatorPubK = encEAmountRegulatorPubK;
    }
    if (encOptInReasonRegulatorPubK != null) {
      $result.encOptInReasonRegulatorPubK = encOptInReasonRegulatorPubK;
    }
    return $result;
  }
  MsgCreateSuspiciousTransaction._() : super();
  factory MsgCreateSuspiciousTransaction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgCreateSuspiciousTransaction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgCreateSuspiciousTransaction', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'creator')
    ..aOS(2, _omitFieldNames ? '' : 'jarID', protoName: 'jarID')
    ..aOS(3, _omitFieldNames ? '' : 'regulatorPubKID', protoName: 'regulatorPubKID')
    ..aOS(4, _omitFieldNames ? '' : 'reason')
    ..aOM<$16.Timestamp>(5, _omitFieldNames ? '' : 'time', subBuilder: $16.Timestamp.create)
    ..a<$core.List<$core.int>>(6, _omitFieldNames ? '' : 'encSourcePersonalInfoRegulatorPubK', $pb.PbFieldType.OY, protoName: 'encSourcePersonalInfoRegulatorPubK')
    ..a<$core.List<$core.int>>(7, _omitFieldNames ? '' : 'encDestinationPersonalInfoRegulatorPubK', $pb.PbFieldType.OY, protoName: 'encDestinationPersonalInfoRegulatorPubK')
    ..a<$core.List<$core.int>>(8, _omitFieldNames ? '' : 'encEAmountRegulatorPubK', $pb.PbFieldType.OY, protoName: 'encEAmountRegulatorPubK')
    ..a<$core.List<$core.int>>(9, _omitFieldNames ? '' : 'encOptInReasonRegulatorPubK', $pb.PbFieldType.OY, protoName: 'encOptInReasonRegulatorPubK')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgCreateSuspiciousTransaction clone() => MsgCreateSuspiciousTransaction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgCreateSuspiciousTransaction copyWith(void Function(MsgCreateSuspiciousTransaction) updates) => super.copyWith((message) => updates(message as MsgCreateSuspiciousTransaction)) as MsgCreateSuspiciousTransaction;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgCreateSuspiciousTransaction create() => MsgCreateSuspiciousTransaction._();
  MsgCreateSuspiciousTransaction createEmptyInstance() => create();
  static $pb.PbList<MsgCreateSuspiciousTransaction> createRepeated() => $pb.PbList<MsgCreateSuspiciousTransaction>();
  @$core.pragma('dart2js:noInline')
  static MsgCreateSuspiciousTransaction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgCreateSuspiciousTransaction>(create);
  static MsgCreateSuspiciousTransaction? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get jarID => $_getSZ(1);
  @$pb.TagNumber(2)
  set jarID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasJarID() => $_has(1);
  @$pb.TagNumber(2)
  void clearJarID() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get regulatorPubKID => $_getSZ(2);
  @$pb.TagNumber(3)
  set regulatorPubKID($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRegulatorPubKID() => $_has(2);
  @$pb.TagNumber(3)
  void clearRegulatorPubKID() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get reason => $_getSZ(3);
  @$pb.TagNumber(4)
  set reason($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasReason() => $_has(3);
  @$pb.TagNumber(4)
  void clearReason() => clearField(4);

  @$pb.TagNumber(5)
  $16.Timestamp get time => $_getN(4);
  @$pb.TagNumber(5)
  set time($16.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearTime() => clearField(5);
  @$pb.TagNumber(5)
  $16.Timestamp ensureTime() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.List<$core.int> get encSourcePersonalInfoRegulatorPubK => $_getN(5);
  @$pb.TagNumber(6)
  set encSourcePersonalInfoRegulatorPubK($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasEncSourcePersonalInfoRegulatorPubK() => $_has(5);
  @$pb.TagNumber(6)
  void clearEncSourcePersonalInfoRegulatorPubK() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get encDestinationPersonalInfoRegulatorPubK => $_getN(6);
  @$pb.TagNumber(7)
  set encDestinationPersonalInfoRegulatorPubK($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasEncDestinationPersonalInfoRegulatorPubK() => $_has(6);
  @$pb.TagNumber(7)
  void clearEncDestinationPersonalInfoRegulatorPubK() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$core.int> get encEAmountRegulatorPubK => $_getN(7);
  @$pb.TagNumber(8)
  set encEAmountRegulatorPubK($core.List<$core.int> v) { $_setBytes(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasEncEAmountRegulatorPubK() => $_has(7);
  @$pb.TagNumber(8)
  void clearEncEAmountRegulatorPubK() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<$core.int> get encOptInReasonRegulatorPubK => $_getN(8);
  @$pb.TagNumber(9)
  set encOptInReasonRegulatorPubK($core.List<$core.int> v) { $_setBytes(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasEncOptInReasonRegulatorPubK() => $_has(8);
  @$pb.TagNumber(9)
  void clearEncOptInReasonRegulatorPubK() => clearField(9);
}

class MsgCreateSuspiciousTransactionResponse extends $pb.GeneratedMessage {
  factory MsgCreateSuspiciousTransactionResponse({
    $fixnum.Int64? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  MsgCreateSuspiciousTransactionResponse._() : super();
  factory MsgCreateSuspiciousTransactionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgCreateSuspiciousTransactionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgCreateSuspiciousTransactionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgCreateSuspiciousTransactionResponse clone() => MsgCreateSuspiciousTransactionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgCreateSuspiciousTransactionResponse copyWith(void Function(MsgCreateSuspiciousTransactionResponse) updates) => super.copyWith((message) => updates(message as MsgCreateSuspiciousTransactionResponse)) as MsgCreateSuspiciousTransactionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgCreateSuspiciousTransactionResponse create() => MsgCreateSuspiciousTransactionResponse._();
  MsgCreateSuspiciousTransactionResponse createEmptyInstance() => create();
  static $pb.PbList<MsgCreateSuspiciousTransactionResponse> createRepeated() => $pb.PbList<MsgCreateSuspiciousTransactionResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgCreateSuspiciousTransactionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgCreateSuspiciousTransactionResponse>(create);
  static MsgCreateSuspiciousTransactionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class MsgUpdateSuspiciousTransaction extends $pb.GeneratedMessage {
  factory MsgUpdateSuspiciousTransaction({
    $core.String? creator,
    $fixnum.Int64? id,
    $core.String? jarID,
    $core.String? regulatorPubKID,
    $core.String? reason,
    $16.Timestamp? time,
    $core.List<$core.int>? encSourcePersonalInfoRegulatorPubK,
    $core.List<$core.int>? encDestinationPersonalInfoRegulatorPubK,
    $core.List<$core.int>? encEAmountRegulatorPubK,
    $core.List<$core.int>? encOptInReasonRegulatorPubK,
  }) {
    final $result = create();
    if (creator != null) {
      $result.creator = creator;
    }
    if (id != null) {
      $result.id = id;
    }
    if (jarID != null) {
      $result.jarID = jarID;
    }
    if (regulatorPubKID != null) {
      $result.regulatorPubKID = regulatorPubKID;
    }
    if (reason != null) {
      $result.reason = reason;
    }
    if (time != null) {
      $result.time = time;
    }
    if (encSourcePersonalInfoRegulatorPubK != null) {
      $result.encSourcePersonalInfoRegulatorPubK = encSourcePersonalInfoRegulatorPubK;
    }
    if (encDestinationPersonalInfoRegulatorPubK != null) {
      $result.encDestinationPersonalInfoRegulatorPubK = encDestinationPersonalInfoRegulatorPubK;
    }
    if (encEAmountRegulatorPubK != null) {
      $result.encEAmountRegulatorPubK = encEAmountRegulatorPubK;
    }
    if (encOptInReasonRegulatorPubK != null) {
      $result.encOptInReasonRegulatorPubK = encOptInReasonRegulatorPubK;
    }
    return $result;
  }
  MsgUpdateSuspiciousTransaction._() : super();
  factory MsgUpdateSuspiciousTransaction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgUpdateSuspiciousTransaction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgUpdateSuspiciousTransaction', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'creator')
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(3, _omitFieldNames ? '' : 'jarID', protoName: 'jarID')
    ..aOS(4, _omitFieldNames ? '' : 'regulatorPubKID', protoName: 'regulatorPubKID')
    ..aOS(5, _omitFieldNames ? '' : 'reason')
    ..aOM<$16.Timestamp>(6, _omitFieldNames ? '' : 'time', subBuilder: $16.Timestamp.create)
    ..a<$core.List<$core.int>>(7, _omitFieldNames ? '' : 'encSourcePersonalInfoRegulatorPubK', $pb.PbFieldType.OY, protoName: 'encSourcePersonalInfoRegulatorPubK')
    ..a<$core.List<$core.int>>(8, _omitFieldNames ? '' : 'encDestinationPersonalInfoRegulatorPubK', $pb.PbFieldType.OY, protoName: 'encDestinationPersonalInfoRegulatorPubK')
    ..a<$core.List<$core.int>>(9, _omitFieldNames ? '' : 'encEAmountRegulatorPubK', $pb.PbFieldType.OY, protoName: 'encEAmountRegulatorPubK')
    ..a<$core.List<$core.int>>(10, _omitFieldNames ? '' : 'encOptInReasonRegulatorPubK', $pb.PbFieldType.OY, protoName: 'encOptInReasonRegulatorPubK')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgUpdateSuspiciousTransaction clone() => MsgUpdateSuspiciousTransaction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgUpdateSuspiciousTransaction copyWith(void Function(MsgUpdateSuspiciousTransaction) updates) => super.copyWith((message) => updates(message as MsgUpdateSuspiciousTransaction)) as MsgUpdateSuspiciousTransaction;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgUpdateSuspiciousTransaction create() => MsgUpdateSuspiciousTransaction._();
  MsgUpdateSuspiciousTransaction createEmptyInstance() => create();
  static $pb.PbList<MsgUpdateSuspiciousTransaction> createRepeated() => $pb.PbList<MsgUpdateSuspiciousTransaction>();
  @$core.pragma('dart2js:noInline')
  static MsgUpdateSuspiciousTransaction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgUpdateSuspiciousTransaction>(create);
  static MsgUpdateSuspiciousTransaction? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get id => $_getI64(1);
  @$pb.TagNumber(2)
  set id($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get jarID => $_getSZ(2);
  @$pb.TagNumber(3)
  set jarID($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasJarID() => $_has(2);
  @$pb.TagNumber(3)
  void clearJarID() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get regulatorPubKID => $_getSZ(3);
  @$pb.TagNumber(4)
  set regulatorPubKID($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRegulatorPubKID() => $_has(3);
  @$pb.TagNumber(4)
  void clearRegulatorPubKID() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get reason => $_getSZ(4);
  @$pb.TagNumber(5)
  set reason($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasReason() => $_has(4);
  @$pb.TagNumber(5)
  void clearReason() => clearField(5);

  @$pb.TagNumber(6)
  $16.Timestamp get time => $_getN(5);
  @$pb.TagNumber(6)
  set time($16.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearTime() => clearField(6);
  @$pb.TagNumber(6)
  $16.Timestamp ensureTime() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.List<$core.int> get encSourcePersonalInfoRegulatorPubK => $_getN(6);
  @$pb.TagNumber(7)
  set encSourcePersonalInfoRegulatorPubK($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasEncSourcePersonalInfoRegulatorPubK() => $_has(6);
  @$pb.TagNumber(7)
  void clearEncSourcePersonalInfoRegulatorPubK() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$core.int> get encDestinationPersonalInfoRegulatorPubK => $_getN(7);
  @$pb.TagNumber(8)
  set encDestinationPersonalInfoRegulatorPubK($core.List<$core.int> v) { $_setBytes(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasEncDestinationPersonalInfoRegulatorPubK() => $_has(7);
  @$pb.TagNumber(8)
  void clearEncDestinationPersonalInfoRegulatorPubK() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<$core.int> get encEAmountRegulatorPubK => $_getN(8);
  @$pb.TagNumber(9)
  set encEAmountRegulatorPubK($core.List<$core.int> v) { $_setBytes(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasEncEAmountRegulatorPubK() => $_has(8);
  @$pb.TagNumber(9)
  void clearEncEAmountRegulatorPubK() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<$core.int> get encOptInReasonRegulatorPubK => $_getN(9);
  @$pb.TagNumber(10)
  set encOptInReasonRegulatorPubK($core.List<$core.int> v) { $_setBytes(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasEncOptInReasonRegulatorPubK() => $_has(9);
  @$pb.TagNumber(10)
  void clearEncOptInReasonRegulatorPubK() => clearField(10);
}

class MsgUpdateSuspiciousTransactionResponse extends $pb.GeneratedMessage {
  factory MsgUpdateSuspiciousTransactionResponse() => create();
  MsgUpdateSuspiciousTransactionResponse._() : super();
  factory MsgUpdateSuspiciousTransactionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgUpdateSuspiciousTransactionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgUpdateSuspiciousTransactionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgUpdateSuspiciousTransactionResponse clone() => MsgUpdateSuspiciousTransactionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgUpdateSuspiciousTransactionResponse copyWith(void Function(MsgUpdateSuspiciousTransactionResponse) updates) => super.copyWith((message) => updates(message as MsgUpdateSuspiciousTransactionResponse)) as MsgUpdateSuspiciousTransactionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgUpdateSuspiciousTransactionResponse create() => MsgUpdateSuspiciousTransactionResponse._();
  MsgUpdateSuspiciousTransactionResponse createEmptyInstance() => create();
  static $pb.PbList<MsgUpdateSuspiciousTransactionResponse> createRepeated() => $pb.PbList<MsgUpdateSuspiciousTransactionResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgUpdateSuspiciousTransactionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgUpdateSuspiciousTransactionResponse>(create);
  static MsgUpdateSuspiciousTransactionResponse? _defaultInstance;
}

class MsgDeleteSuspiciousTransaction extends $pb.GeneratedMessage {
  factory MsgDeleteSuspiciousTransaction({
    $core.String? creator,
    $fixnum.Int64? id,
  }) {
    final $result = create();
    if (creator != null) {
      $result.creator = creator;
    }
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  MsgDeleteSuspiciousTransaction._() : super();
  factory MsgDeleteSuspiciousTransaction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgDeleteSuspiciousTransaction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgDeleteSuspiciousTransaction', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'creator')
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgDeleteSuspiciousTransaction clone() => MsgDeleteSuspiciousTransaction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgDeleteSuspiciousTransaction copyWith(void Function(MsgDeleteSuspiciousTransaction) updates) => super.copyWith((message) => updates(message as MsgDeleteSuspiciousTransaction)) as MsgDeleteSuspiciousTransaction;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgDeleteSuspiciousTransaction create() => MsgDeleteSuspiciousTransaction._();
  MsgDeleteSuspiciousTransaction createEmptyInstance() => create();
  static $pb.PbList<MsgDeleteSuspiciousTransaction> createRepeated() => $pb.PbList<MsgDeleteSuspiciousTransaction>();
  @$core.pragma('dart2js:noInline')
  static MsgDeleteSuspiciousTransaction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgDeleteSuspiciousTransaction>(create);
  static MsgDeleteSuspiciousTransaction? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get id => $_getI64(1);
  @$pb.TagNumber(2)
  set id($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);
}

class MsgDeleteSuspiciousTransactionResponse extends $pb.GeneratedMessage {
  factory MsgDeleteSuspiciousTransactionResponse() => create();
  MsgDeleteSuspiciousTransactionResponse._() : super();
  factory MsgDeleteSuspiciousTransactionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgDeleteSuspiciousTransactionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgDeleteSuspiciousTransactionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgDeleteSuspiciousTransactionResponse clone() => MsgDeleteSuspiciousTransactionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgDeleteSuspiciousTransactionResponse copyWith(void Function(MsgDeleteSuspiciousTransactionResponse) updates) => super.copyWith((message) => updates(message as MsgDeleteSuspiciousTransactionResponse)) as MsgDeleteSuspiciousTransactionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgDeleteSuspiciousTransactionResponse create() => MsgDeleteSuspiciousTransactionResponse._();
  MsgDeleteSuspiciousTransactionResponse createEmptyInstance() => create();
  static $pb.PbList<MsgDeleteSuspiciousTransactionResponse> createRepeated() => $pb.PbList<MsgDeleteSuspiciousTransactionResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgDeleteSuspiciousTransactionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgDeleteSuspiciousTransactionResponse>(create);
  static MsgDeleteSuspiciousTransactionResponse? _defaultInstance;
}

class MsgAddPublicKey extends $pb.GeneratedMessage {
  factory MsgAddPublicKey({
    $core.String? creator,
    $core.String? pubK,
    $core.String? pubKType,
  }) {
    final $result = create();
    if (creator != null) {
      $result.creator = creator;
    }
    if (pubK != null) {
      $result.pubK = pubK;
    }
    if (pubKType != null) {
      $result.pubKType = pubKType;
    }
    return $result;
  }
  MsgAddPublicKey._() : super();
  factory MsgAddPublicKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgAddPublicKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgAddPublicKey', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'creator')
    ..aOS(2, _omitFieldNames ? '' : 'pubK', protoName: 'pubK')
    ..aOS(3, _omitFieldNames ? '' : 'pubKType', protoName: 'pubKType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgAddPublicKey clone() => MsgAddPublicKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgAddPublicKey copyWith(void Function(MsgAddPublicKey) updates) => super.copyWith((message) => updates(message as MsgAddPublicKey)) as MsgAddPublicKey;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgAddPublicKey create() => MsgAddPublicKey._();
  MsgAddPublicKey createEmptyInstance() => create();
  static $pb.PbList<MsgAddPublicKey> createRepeated() => $pb.PbList<MsgAddPublicKey>();
  @$core.pragma('dart2js:noInline')
  static MsgAddPublicKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgAddPublicKey>(create);
  static MsgAddPublicKey? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get pubK => $_getSZ(1);
  @$pb.TagNumber(2)
  set pubK($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPubK() => $_has(1);
  @$pb.TagNumber(2)
  void clearPubK() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get pubKType => $_getSZ(2);
  @$pb.TagNumber(3)
  set pubKType($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPubKType() => $_has(2);
  @$pb.TagNumber(3)
  void clearPubKType() => clearField(3);
}

class MsgAddPublicKeyResponse extends $pb.GeneratedMessage {
  factory MsgAddPublicKeyResponse() => create();
  MsgAddPublicKeyResponse._() : super();
  factory MsgAddPublicKeyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgAddPublicKeyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgAddPublicKeyResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgAddPublicKeyResponse clone() => MsgAddPublicKeyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgAddPublicKeyResponse copyWith(void Function(MsgAddPublicKeyResponse) updates) => super.copyWith((message) => updates(message as MsgAddPublicKeyResponse)) as MsgAddPublicKeyResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgAddPublicKeyResponse create() => MsgAddPublicKeyResponse._();
  MsgAddPublicKeyResponse createEmptyInstance() => create();
  static $pb.PbList<MsgAddPublicKeyResponse> createRepeated() => $pb.PbList<MsgAddPublicKeyResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgAddPublicKeyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgAddPublicKeyResponse>(create);
  static MsgAddPublicKeyResponse? _defaultInstance;
}

class MsgAddServiceProvider extends $pb.GeneratedMessage {
  factory MsgAddServiceProvider({
    $core.String? authority,
    $core.String? pubKID,
    $core.String? nodeID,
    $core.String? serviceProviderType,
    $core.String? homePioneerID,
  }) {
    final $result = create();
    if (authority != null) {
      $result.authority = authority;
    }
    if (pubKID != null) {
      $result.pubKID = pubKID;
    }
    if (nodeID != null) {
      $result.nodeID = nodeID;
    }
    if (serviceProviderType != null) {
      $result.serviceProviderType = serviceProviderType;
    }
    if (homePioneerID != null) {
      $result.homePioneerID = homePioneerID;
    }
    return $result;
  }
  MsgAddServiceProvider._() : super();
  factory MsgAddServiceProvider.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgAddServiceProvider.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgAddServiceProvider', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'authority')
    ..aOS(2, _omitFieldNames ? '' : 'pubKID', protoName: 'pubKID')
    ..aOS(3, _omitFieldNames ? '' : 'nodeID', protoName: 'nodeID')
    ..aOS(4, _omitFieldNames ? '' : 'serviceProviderType', protoName: 'serviceProviderType')
    ..aOS(5, _omitFieldNames ? '' : 'homePioneerID', protoName: 'homePioneerID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgAddServiceProvider clone() => MsgAddServiceProvider()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgAddServiceProvider copyWith(void Function(MsgAddServiceProvider) updates) => super.copyWith((message) => updates(message as MsgAddServiceProvider)) as MsgAddServiceProvider;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgAddServiceProvider create() => MsgAddServiceProvider._();
  MsgAddServiceProvider createEmptyInstance() => create();
  static $pb.PbList<MsgAddServiceProvider> createRepeated() => $pb.PbList<MsgAddServiceProvider>();
  @$core.pragma('dart2js:noInline')
  static MsgAddServiceProvider getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgAddServiceProvider>(create);
  static MsgAddServiceProvider? _defaultInstance;

  /// authority is the address that controls the module (defaults to x/gov unless overwritten).
  @$pb.TagNumber(1)
  $core.String get authority => $_getSZ(0);
  @$pb.TagNumber(1)
  set authority($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAuthority() => $_has(0);
  @$pb.TagNumber(1)
  void clearAuthority() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get pubKID => $_getSZ(1);
  @$pb.TagNumber(2)
  set pubKID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPubKID() => $_has(1);
  @$pb.TagNumber(2)
  void clearPubKID() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get nodeID => $_getSZ(2);
  @$pb.TagNumber(3)
  set nodeID($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNodeID() => $_has(2);
  @$pb.TagNumber(3)
  void clearNodeID() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get serviceProviderType => $_getSZ(3);
  @$pb.TagNumber(4)
  set serviceProviderType($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasServiceProviderType() => $_has(3);
  @$pb.TagNumber(4)
  void clearServiceProviderType() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get homePioneerID => $_getSZ(4);
  @$pb.TagNumber(5)
  set homePioneerID($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasHomePioneerID() => $_has(4);
  @$pb.TagNumber(5)
  void clearHomePioneerID() => clearField(5);
}

class MsgAddServiceProviderResponse extends $pb.GeneratedMessage {
  factory MsgAddServiceProviderResponse() => create();
  MsgAddServiceProviderResponse._() : super();
  factory MsgAddServiceProviderResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgAddServiceProviderResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgAddServiceProviderResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgAddServiceProviderResponse clone() => MsgAddServiceProviderResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgAddServiceProviderResponse copyWith(void Function(MsgAddServiceProviderResponse) updates) => super.copyWith((message) => updates(message as MsgAddServiceProviderResponse)) as MsgAddServiceProviderResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgAddServiceProviderResponse create() => MsgAddServiceProviderResponse._();
  MsgAddServiceProviderResponse createEmptyInstance() => create();
  static $pb.PbList<MsgAddServiceProviderResponse> createRepeated() => $pb.PbList<MsgAddServiceProviderResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgAddServiceProviderResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgAddServiceProviderResponse>(create);
  static MsgAddServiceProviderResponse? _defaultInstance;
}

class MsgDeactivateServiceProvider extends $pb.GeneratedMessage {
  factory MsgDeactivateServiceProvider({
    $core.String? authority,
    $core.String? nodeID,
  }) {
    final $result = create();
    if (authority != null) {
      $result.authority = authority;
    }
    if (nodeID != null) {
      $result.nodeID = nodeID;
    }
    return $result;
  }
  MsgDeactivateServiceProvider._() : super();
  factory MsgDeactivateServiceProvider.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgDeactivateServiceProvider.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgDeactivateServiceProvider', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'authority')
    ..aOS(2, _omitFieldNames ? '' : 'nodeID', protoName: 'nodeID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgDeactivateServiceProvider clone() => MsgDeactivateServiceProvider()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgDeactivateServiceProvider copyWith(void Function(MsgDeactivateServiceProvider) updates) => super.copyWith((message) => updates(message as MsgDeactivateServiceProvider)) as MsgDeactivateServiceProvider;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgDeactivateServiceProvider create() => MsgDeactivateServiceProvider._();
  MsgDeactivateServiceProvider createEmptyInstance() => create();
  static $pb.PbList<MsgDeactivateServiceProvider> createRepeated() => $pb.PbList<MsgDeactivateServiceProvider>();
  @$core.pragma('dart2js:noInline')
  static MsgDeactivateServiceProvider getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgDeactivateServiceProvider>(create);
  static MsgDeactivateServiceProvider? _defaultInstance;

  /// authority is the address that controls the module (defaults to x/gov unless overwritten).
  @$pb.TagNumber(1)
  $core.String get authority => $_getSZ(0);
  @$pb.TagNumber(1)
  set authority($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAuthority() => $_has(0);
  @$pb.TagNumber(1)
  void clearAuthority() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nodeID => $_getSZ(1);
  @$pb.TagNumber(2)
  set nodeID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNodeID() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeID() => clearField(2);
}

class MsgDeactivateServiceProviderResponse extends $pb.GeneratedMessage {
  factory MsgDeactivateServiceProviderResponse() => create();
  MsgDeactivateServiceProviderResponse._() : super();
  factory MsgDeactivateServiceProviderResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgDeactivateServiceProviderResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgDeactivateServiceProviderResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgDeactivateServiceProviderResponse clone() => MsgDeactivateServiceProviderResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgDeactivateServiceProviderResponse copyWith(void Function(MsgDeactivateServiceProviderResponse) updates) => super.copyWith((message) => updates(message as MsgDeactivateServiceProviderResponse)) as MsgDeactivateServiceProviderResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgDeactivateServiceProviderResponse create() => MsgDeactivateServiceProviderResponse._();
  MsgDeactivateServiceProviderResponse createEmptyInstance() => create();
  static $pb.PbList<MsgDeactivateServiceProviderResponse> createRepeated() => $pb.PbList<MsgDeactivateServiceProviderResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgDeactivateServiceProviderResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgDeactivateServiceProviderResponse>(create);
  static MsgDeactivateServiceProviderResponse? _defaultInstance;
}

class MsgUpdateEnclaveIdentity extends $pb.GeneratedMessage {
  factory MsgUpdateEnclaveIdentity({
    $core.String? authority,
    $core.String? uniqueID,
    $core.String? signerID,
    $core.String? productID,
    $core.String? status,
  }) {
    final $result = create();
    if (authority != null) {
      $result.authority = authority;
    }
    if (uniqueID != null) {
      $result.uniqueID = uniqueID;
    }
    if (signerID != null) {
      $result.signerID = signerID;
    }
    if (productID != null) {
      $result.productID = productID;
    }
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  MsgUpdateEnclaveIdentity._() : super();
  factory MsgUpdateEnclaveIdentity.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgUpdateEnclaveIdentity.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgUpdateEnclaveIdentity', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'authority')
    ..aOS(2, _omitFieldNames ? '' : 'uniqueID', protoName: 'uniqueID')
    ..aOS(3, _omitFieldNames ? '' : 'signerID', protoName: 'signerID')
    ..aOS(4, _omitFieldNames ? '' : 'productID', protoName: 'productID')
    ..aOS(5, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgUpdateEnclaveIdentity clone() => MsgUpdateEnclaveIdentity()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgUpdateEnclaveIdentity copyWith(void Function(MsgUpdateEnclaveIdentity) updates) => super.copyWith((message) => updates(message as MsgUpdateEnclaveIdentity)) as MsgUpdateEnclaveIdentity;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgUpdateEnclaveIdentity create() => MsgUpdateEnclaveIdentity._();
  MsgUpdateEnclaveIdentity createEmptyInstance() => create();
  static $pb.PbList<MsgUpdateEnclaveIdentity> createRepeated() => $pb.PbList<MsgUpdateEnclaveIdentity>();
  @$core.pragma('dart2js:noInline')
  static MsgUpdateEnclaveIdentity getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgUpdateEnclaveIdentity>(create);
  static MsgUpdateEnclaveIdentity? _defaultInstance;

  /// authority is the address that controls the module (defaults to x/gov unless overwritten).
  @$pb.TagNumber(1)
  $core.String get authority => $_getSZ(0);
  @$pb.TagNumber(1)
  set authority($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAuthority() => $_has(0);
  @$pb.TagNumber(1)
  void clearAuthority() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get uniqueID => $_getSZ(1);
  @$pb.TagNumber(2)
  set uniqueID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUniqueID() => $_has(1);
  @$pb.TagNumber(2)
  void clearUniqueID() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get signerID => $_getSZ(2);
  @$pb.TagNumber(3)
  set signerID($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSignerID() => $_has(2);
  @$pb.TagNumber(3)
  void clearSignerID() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get productID => $_getSZ(3);
  @$pb.TagNumber(4)
  set productID($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasProductID() => $_has(3);
  @$pb.TagNumber(4)
  void clearProductID() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get status => $_getSZ(4);
  @$pb.TagNumber(5)
  set status($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => clearField(5);
}

class MsgUpdateEnclaveIdentityResponse extends $pb.GeneratedMessage {
  factory MsgUpdateEnclaveIdentityResponse() => create();
  MsgUpdateEnclaveIdentityResponse._() : super();
  factory MsgUpdateEnclaveIdentityResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgUpdateEnclaveIdentityResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgUpdateEnclaveIdentityResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgUpdateEnclaveIdentityResponse clone() => MsgUpdateEnclaveIdentityResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgUpdateEnclaveIdentityResponse copyWith(void Function(MsgUpdateEnclaveIdentityResponse) updates) => super.copyWith((message) => updates(message as MsgUpdateEnclaveIdentityResponse)) as MsgUpdateEnclaveIdentityResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgUpdateEnclaveIdentityResponse create() => MsgUpdateEnclaveIdentityResponse._();
  MsgUpdateEnclaveIdentityResponse createEmptyInstance() => create();
  static $pb.PbList<MsgUpdateEnclaveIdentityResponse> createRepeated() => $pb.PbList<MsgUpdateEnclaveIdentityResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgUpdateEnclaveIdentityResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgUpdateEnclaveIdentityResponse>(create);
  static MsgUpdateEnclaveIdentityResponse? _defaultInstance;
}

class MsgPioneerUpdatePioneerJar extends $pb.GeneratedMessage {
  factory MsgPioneerUpdatePioneerJar({
    $core.String? creator,
    $core.String? pioneerID,
    $core.String? jarID,
    $core.List<$core.int>? remoteReport,
  }) {
    final $result = create();
    if (creator != null) {
      $result.creator = creator;
    }
    if (pioneerID != null) {
      $result.pioneerID = pioneerID;
    }
    if (jarID != null) {
      $result.jarID = jarID;
    }
    if (remoteReport != null) {
      $result.remoteReport = remoteReport;
    }
    return $result;
  }
  MsgPioneerUpdatePioneerJar._() : super();
  factory MsgPioneerUpdatePioneerJar.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgPioneerUpdatePioneerJar.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgPioneerUpdatePioneerJar', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'creator')
    ..aOS(2, _omitFieldNames ? '' : 'pioneerID', protoName: 'pioneerID')
    ..aOS(3, _omitFieldNames ? '' : 'jarID', protoName: 'jarID')
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'remoteReport', $pb.PbFieldType.OY, protoName: 'remoteReport')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgPioneerUpdatePioneerJar clone() => MsgPioneerUpdatePioneerJar()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgPioneerUpdatePioneerJar copyWith(void Function(MsgPioneerUpdatePioneerJar) updates) => super.copyWith((message) => updates(message as MsgPioneerUpdatePioneerJar)) as MsgPioneerUpdatePioneerJar;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgPioneerUpdatePioneerJar create() => MsgPioneerUpdatePioneerJar._();
  MsgPioneerUpdatePioneerJar createEmptyInstance() => create();
  static $pb.PbList<MsgPioneerUpdatePioneerJar> createRepeated() => $pb.PbList<MsgPioneerUpdatePioneerJar>();
  @$core.pragma('dart2js:noInline')
  static MsgPioneerUpdatePioneerJar getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgPioneerUpdatePioneerJar>(create);
  static MsgPioneerUpdatePioneerJar? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get pioneerID => $_getSZ(1);
  @$pb.TagNumber(2)
  set pioneerID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPioneerID() => $_has(1);
  @$pb.TagNumber(2)
  void clearPioneerID() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get jarID => $_getSZ(2);
  @$pb.TagNumber(3)
  set jarID($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasJarID() => $_has(2);
  @$pb.TagNumber(3)
  void clearJarID() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get remoteReport => $_getN(3);
  @$pb.TagNumber(4)
  set remoteReport($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRemoteReport() => $_has(3);
  @$pb.TagNumber(4)
  void clearRemoteReport() => clearField(4);
}

class MsgPioneerUpdatePioneerJarResponse extends $pb.GeneratedMessage {
  factory MsgPioneerUpdatePioneerJarResponse() => create();
  MsgPioneerUpdatePioneerJarResponse._() : super();
  factory MsgPioneerUpdatePioneerJarResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgPioneerUpdatePioneerJarResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgPioneerUpdatePioneerJarResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgPioneerUpdatePioneerJarResponse clone() => MsgPioneerUpdatePioneerJarResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgPioneerUpdatePioneerJarResponse copyWith(void Function(MsgPioneerUpdatePioneerJarResponse) updates) => super.copyWith((message) => updates(message as MsgPioneerUpdatePioneerJarResponse)) as MsgPioneerUpdatePioneerJarResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgPioneerUpdatePioneerJarResponse create() => MsgPioneerUpdatePioneerJarResponse._();
  MsgPioneerUpdatePioneerJarResponse createEmptyInstance() => create();
  static $pb.PbList<MsgPioneerUpdatePioneerJarResponse> createRepeated() => $pb.PbList<MsgPioneerUpdatePioneerJarResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgPioneerUpdatePioneerJarResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgPioneerUpdatePioneerJarResponse>(create);
  static MsgPioneerUpdatePioneerJarResponse? _defaultInstance;
}

class MsgPioneerUpdateJarRegulator extends $pb.GeneratedMessage {
  factory MsgPioneerUpdateJarRegulator({
    $core.String? creator,
    $core.String? jarID,
    $core.String? regulatorID,
    $core.List<$core.int>? remoteReport,
  }) {
    final $result = create();
    if (creator != null) {
      $result.creator = creator;
    }
    if (jarID != null) {
      $result.jarID = jarID;
    }
    if (regulatorID != null) {
      $result.regulatorID = regulatorID;
    }
    if (remoteReport != null) {
      $result.remoteReport = remoteReport;
    }
    return $result;
  }
  MsgPioneerUpdateJarRegulator._() : super();
  factory MsgPioneerUpdateJarRegulator.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgPioneerUpdateJarRegulator.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgPioneerUpdateJarRegulator', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'creator')
    ..aOS(2, _omitFieldNames ? '' : 'jarID', protoName: 'jarID')
    ..aOS(3, _omitFieldNames ? '' : 'regulatorID', protoName: 'regulatorID')
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'remoteReport', $pb.PbFieldType.OY, protoName: 'remoteReport')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgPioneerUpdateJarRegulator clone() => MsgPioneerUpdateJarRegulator()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgPioneerUpdateJarRegulator copyWith(void Function(MsgPioneerUpdateJarRegulator) updates) => super.copyWith((message) => updates(message as MsgPioneerUpdateJarRegulator)) as MsgPioneerUpdateJarRegulator;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgPioneerUpdateJarRegulator create() => MsgPioneerUpdateJarRegulator._();
  MsgPioneerUpdateJarRegulator createEmptyInstance() => create();
  static $pb.PbList<MsgPioneerUpdateJarRegulator> createRepeated() => $pb.PbList<MsgPioneerUpdateJarRegulator>();
  @$core.pragma('dart2js:noInline')
  static MsgPioneerUpdateJarRegulator getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgPioneerUpdateJarRegulator>(create);
  static MsgPioneerUpdateJarRegulator? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get jarID => $_getSZ(1);
  @$pb.TagNumber(2)
  set jarID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasJarID() => $_has(1);
  @$pb.TagNumber(2)
  void clearJarID() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get regulatorID => $_getSZ(2);
  @$pb.TagNumber(3)
  set regulatorID($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRegulatorID() => $_has(2);
  @$pb.TagNumber(3)
  void clearRegulatorID() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get remoteReport => $_getN(3);
  @$pb.TagNumber(4)
  set remoteReport($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRemoteReport() => $_has(3);
  @$pb.TagNumber(4)
  void clearRemoteReport() => clearField(4);
}

class MsgPioneerUpdateJarRegulatorResponse extends $pb.GeneratedMessage {
  factory MsgPioneerUpdateJarRegulatorResponse() => create();
  MsgPioneerUpdateJarRegulatorResponse._() : super();
  factory MsgPioneerUpdateJarRegulatorResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgPioneerUpdateJarRegulatorResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgPioneerUpdateJarRegulatorResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgPioneerUpdateJarRegulatorResponse clone() => MsgPioneerUpdateJarRegulatorResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgPioneerUpdateJarRegulatorResponse copyWith(void Function(MsgPioneerUpdateJarRegulatorResponse) updates) => super.copyWith((message) => updates(message as MsgPioneerUpdateJarRegulatorResponse)) as MsgPioneerUpdateJarRegulatorResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgPioneerUpdateJarRegulatorResponse create() => MsgPioneerUpdateJarRegulatorResponse._();
  MsgPioneerUpdateJarRegulatorResponse createEmptyInstance() => create();
  static $pb.PbList<MsgPioneerUpdateJarRegulatorResponse> createRepeated() => $pb.PbList<MsgPioneerUpdateJarRegulatorResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgPioneerUpdateJarRegulatorResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgPioneerUpdateJarRegulatorResponse>(create);
  static MsgPioneerUpdateJarRegulatorResponse? _defaultInstance;
}

class MsgPioneerUpdateEnclaveIdentity extends $pb.GeneratedMessage {
  factory MsgPioneerUpdateEnclaveIdentity({
    $core.String? creator,
    $core.String? uniqueID,
    $core.String? signerID,
    $core.String? productID,
    $core.String? status,
    $core.List<$core.int>? remoteReport,
  }) {
    final $result = create();
    if (creator != null) {
      $result.creator = creator;
    }
    if (uniqueID != null) {
      $result.uniqueID = uniqueID;
    }
    if (signerID != null) {
      $result.signerID = signerID;
    }
    if (productID != null) {
      $result.productID = productID;
    }
    if (status != null) {
      $result.status = status;
    }
    if (remoteReport != null) {
      $result.remoteReport = remoteReport;
    }
    return $result;
  }
  MsgPioneerUpdateEnclaveIdentity._() : super();
  factory MsgPioneerUpdateEnclaveIdentity.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgPioneerUpdateEnclaveIdentity.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgPioneerUpdateEnclaveIdentity', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'creator')
    ..aOS(2, _omitFieldNames ? '' : 'uniqueID', protoName: 'uniqueID')
    ..aOS(3, _omitFieldNames ? '' : 'signerID', protoName: 'signerID')
    ..aOS(4, _omitFieldNames ? '' : 'productID', protoName: 'productID')
    ..aOS(5, _omitFieldNames ? '' : 'status')
    ..a<$core.List<$core.int>>(6, _omitFieldNames ? '' : 'remoteReport', $pb.PbFieldType.OY, protoName: 'remoteReport')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgPioneerUpdateEnclaveIdentity clone() => MsgPioneerUpdateEnclaveIdentity()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgPioneerUpdateEnclaveIdentity copyWith(void Function(MsgPioneerUpdateEnclaveIdentity) updates) => super.copyWith((message) => updates(message as MsgPioneerUpdateEnclaveIdentity)) as MsgPioneerUpdateEnclaveIdentity;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgPioneerUpdateEnclaveIdentity create() => MsgPioneerUpdateEnclaveIdentity._();
  MsgPioneerUpdateEnclaveIdentity createEmptyInstance() => create();
  static $pb.PbList<MsgPioneerUpdateEnclaveIdentity> createRepeated() => $pb.PbList<MsgPioneerUpdateEnclaveIdentity>();
  @$core.pragma('dart2js:noInline')
  static MsgPioneerUpdateEnclaveIdentity getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgPioneerUpdateEnclaveIdentity>(create);
  static MsgPioneerUpdateEnclaveIdentity? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get uniqueID => $_getSZ(1);
  @$pb.TagNumber(2)
  set uniqueID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUniqueID() => $_has(1);
  @$pb.TagNumber(2)
  void clearUniqueID() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get signerID => $_getSZ(2);
  @$pb.TagNumber(3)
  set signerID($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSignerID() => $_has(2);
  @$pb.TagNumber(3)
  void clearSignerID() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get productID => $_getSZ(3);
  @$pb.TagNumber(4)
  set productID($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasProductID() => $_has(3);
  @$pb.TagNumber(4)
  void clearProductID() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get status => $_getSZ(4);
  @$pb.TagNumber(5)
  set status($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get remoteReport => $_getN(5);
  @$pb.TagNumber(6)
  set remoteReport($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRemoteReport() => $_has(5);
  @$pb.TagNumber(6)
  void clearRemoteReport() => clearField(6);
}

class MsgPioneerUpdateEnclaveIdentityResponse extends $pb.GeneratedMessage {
  factory MsgPioneerUpdateEnclaveIdentityResponse() => create();
  MsgPioneerUpdateEnclaveIdentityResponse._() : super();
  factory MsgPioneerUpdateEnclaveIdentityResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgPioneerUpdateEnclaveIdentityResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgPioneerUpdateEnclaveIdentityResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgPioneerUpdateEnclaveIdentityResponse clone() => MsgPioneerUpdateEnclaveIdentityResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgPioneerUpdateEnclaveIdentityResponse copyWith(void Function(MsgPioneerUpdateEnclaveIdentityResponse) updates) => super.copyWith((message) => updates(message as MsgPioneerUpdateEnclaveIdentityResponse)) as MsgPioneerUpdateEnclaveIdentityResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgPioneerUpdateEnclaveIdentityResponse create() => MsgPioneerUpdateEnclaveIdentityResponse._();
  MsgPioneerUpdateEnclaveIdentityResponse createEmptyInstance() => create();
  static $pb.PbList<MsgPioneerUpdateEnclaveIdentityResponse> createRepeated() => $pb.PbList<MsgPioneerUpdateEnclaveIdentityResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgPioneerUpdateEnclaveIdentityResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgPioneerUpdateEnclaveIdentityResponse>(create);
  static MsgPioneerUpdateEnclaveIdentityResponse? _defaultInstance;
}

class MsgCreateWallet extends $pb.GeneratedMessage {
  factory MsgCreateWallet({
    $core.String? creator,
    $core.String? homePioneerID,
    $core.Iterable<$core.String>? serviceProviderID,
    $core.List<$core.int>? encCreateWalletVShare,
    $21.VShareBindData? createWalletVShareBind,
    $19.BPedersenCommit? acceptPasswordPC,
    $core.List<$core.int>? encAcceptValidatedCredentialsVShare,
    $21.VShareBindData? acceptValidatedCredentialsVShareBind,
    $22.EncryptablePedersenCommit? walletAmountPedersenCommit,
    $core.List<$core.int>? encWalletAmountVShare,
    $21.VShareBindData? walletAmountVShareBind,
    $22.EncryptablePedersenCommit? transparentWalletAmountPC,
    $core.String? acceptCredentialType,
  }) {
    final $result = create();
    if (creator != null) {
      $result.creator = creator;
    }
    if (homePioneerID != null) {
      $result.homePioneerID = homePioneerID;
    }
    if (serviceProviderID != null) {
      $result.serviceProviderID.addAll(serviceProviderID);
    }
    if (encCreateWalletVShare != null) {
      $result.encCreateWalletVShare = encCreateWalletVShare;
    }
    if (createWalletVShareBind != null) {
      $result.createWalletVShareBind = createWalletVShareBind;
    }
    if (acceptPasswordPC != null) {
      $result.acceptPasswordPC = acceptPasswordPC;
    }
    if (encAcceptValidatedCredentialsVShare != null) {
      $result.encAcceptValidatedCredentialsVShare = encAcceptValidatedCredentialsVShare;
    }
    if (acceptValidatedCredentialsVShareBind != null) {
      $result.acceptValidatedCredentialsVShareBind = acceptValidatedCredentialsVShareBind;
    }
    if (walletAmountPedersenCommit != null) {
      $result.walletAmountPedersenCommit = walletAmountPedersenCommit;
    }
    if (encWalletAmountVShare != null) {
      $result.encWalletAmountVShare = encWalletAmountVShare;
    }
    if (walletAmountVShareBind != null) {
      $result.walletAmountVShareBind = walletAmountVShareBind;
    }
    if (transparentWalletAmountPC != null) {
      $result.transparentWalletAmountPC = transparentWalletAmountPC;
    }
    if (acceptCredentialType != null) {
      $result.acceptCredentialType = acceptCredentialType;
    }
    return $result;
  }
  MsgCreateWallet._() : super();
  factory MsgCreateWallet.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgCreateWallet.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgCreateWallet', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'creator')
    ..aOS(2, _omitFieldNames ? '' : 'homePioneerID', protoName: 'homePioneerID')
    ..pPS(3, _omitFieldNames ? '' : 'serviceProviderID', protoName: 'serviceProviderID')
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'encCreateWalletVShare', $pb.PbFieldType.OY, protoName: 'encCreateWalletVShare')
    ..aOM<$21.VShareBindData>(5, _omitFieldNames ? '' : 'createWalletVShareBind', protoName: 'createWalletVShareBind', subBuilder: $21.VShareBindData.create)
    ..aOM<$19.BPedersenCommit>(6, _omitFieldNames ? '' : 'acceptPasswordPC', protoName: 'acceptPasswordPC', subBuilder: $19.BPedersenCommit.create)
    ..a<$core.List<$core.int>>(7, _omitFieldNames ? '' : 'encAcceptValidatedCredentialsVShare', $pb.PbFieldType.OY, protoName: 'encAcceptValidatedCredentialsVShare')
    ..aOM<$21.VShareBindData>(8, _omitFieldNames ? '' : 'acceptValidatedCredentialsVShareBind', protoName: 'acceptValidatedCredentialsVShareBind', subBuilder: $21.VShareBindData.create)
    ..aOM<$22.EncryptablePedersenCommit>(9, _omitFieldNames ? '' : 'walletAmountPedersenCommit', protoName: 'walletAmountPedersenCommit', subBuilder: $22.EncryptablePedersenCommit.create)
    ..a<$core.List<$core.int>>(10, _omitFieldNames ? '' : 'encWalletAmountVShare', $pb.PbFieldType.OY, protoName: 'encWalletAmountVShare')
    ..aOM<$21.VShareBindData>(11, _omitFieldNames ? '' : 'walletAmountVShareBind', protoName: 'walletAmountVShareBind', subBuilder: $21.VShareBindData.create)
    ..aOM<$22.EncryptablePedersenCommit>(12, _omitFieldNames ? '' : 'transparentWalletAmountPC', protoName: 'transparentWalletAmountPC', subBuilder: $22.EncryptablePedersenCommit.create)
    ..aOS(13, _omitFieldNames ? '' : 'acceptCredentialType', protoName: 'acceptCredentialType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgCreateWallet clone() => MsgCreateWallet()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgCreateWallet copyWith(void Function(MsgCreateWallet) updates) => super.copyWith((message) => updates(message as MsgCreateWallet)) as MsgCreateWallet;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgCreateWallet create() => MsgCreateWallet._();
  MsgCreateWallet createEmptyInstance() => create();
  static $pb.PbList<MsgCreateWallet> createRepeated() => $pb.PbList<MsgCreateWallet>();
  @$core.pragma('dart2js:noInline')
  static MsgCreateWallet getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgCreateWallet>(create);
  static MsgCreateWallet? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get homePioneerID => $_getSZ(1);
  @$pb.TagNumber(2)
  set homePioneerID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHomePioneerID() => $_has(1);
  @$pb.TagNumber(2)
  void clearHomePioneerID() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get serviceProviderID => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.int> get encCreateWalletVShare => $_getN(3);
  @$pb.TagNumber(4)
  set encCreateWalletVShare($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEncCreateWalletVShare() => $_has(3);
  @$pb.TagNumber(4)
  void clearEncCreateWalletVShare() => clearField(4);

  @$pb.TagNumber(5)
  $21.VShareBindData get createWalletVShareBind => $_getN(4);
  @$pb.TagNumber(5)
  set createWalletVShareBind($21.VShareBindData v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreateWalletVShareBind() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreateWalletVShareBind() => clearField(5);
  @$pb.TagNumber(5)
  $21.VShareBindData ensureCreateWalletVShareBind() => $_ensure(4);

  @$pb.TagNumber(6)
  $19.BPedersenCommit get acceptPasswordPC => $_getN(5);
  @$pb.TagNumber(6)
  set acceptPasswordPC($19.BPedersenCommit v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasAcceptPasswordPC() => $_has(5);
  @$pb.TagNumber(6)
  void clearAcceptPasswordPC() => clearField(6);
  @$pb.TagNumber(6)
  $19.BPedersenCommit ensureAcceptPasswordPC() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.List<$core.int> get encAcceptValidatedCredentialsVShare => $_getN(6);
  @$pb.TagNumber(7)
  set encAcceptValidatedCredentialsVShare($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasEncAcceptValidatedCredentialsVShare() => $_has(6);
  @$pb.TagNumber(7)
  void clearEncAcceptValidatedCredentialsVShare() => clearField(7);

  @$pb.TagNumber(8)
  $21.VShareBindData get acceptValidatedCredentialsVShareBind => $_getN(7);
  @$pb.TagNumber(8)
  set acceptValidatedCredentialsVShareBind($21.VShareBindData v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasAcceptValidatedCredentialsVShareBind() => $_has(7);
  @$pb.TagNumber(8)
  void clearAcceptValidatedCredentialsVShareBind() => clearField(8);
  @$pb.TagNumber(8)
  $21.VShareBindData ensureAcceptValidatedCredentialsVShareBind() => $_ensure(7);

  @$pb.TagNumber(9)
  $22.EncryptablePedersenCommit get walletAmountPedersenCommit => $_getN(8);
  @$pb.TagNumber(9)
  set walletAmountPedersenCommit($22.EncryptablePedersenCommit v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasWalletAmountPedersenCommit() => $_has(8);
  @$pb.TagNumber(9)
  void clearWalletAmountPedersenCommit() => clearField(9);
  @$pb.TagNumber(9)
  $22.EncryptablePedersenCommit ensureWalletAmountPedersenCommit() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.List<$core.int> get encWalletAmountVShare => $_getN(9);
  @$pb.TagNumber(10)
  set encWalletAmountVShare($core.List<$core.int> v) { $_setBytes(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasEncWalletAmountVShare() => $_has(9);
  @$pb.TagNumber(10)
  void clearEncWalletAmountVShare() => clearField(10);

  @$pb.TagNumber(11)
  $21.VShareBindData get walletAmountVShareBind => $_getN(10);
  @$pb.TagNumber(11)
  set walletAmountVShareBind($21.VShareBindData v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasWalletAmountVShareBind() => $_has(10);
  @$pb.TagNumber(11)
  void clearWalletAmountVShareBind() => clearField(11);
  @$pb.TagNumber(11)
  $21.VShareBindData ensureWalletAmountVShareBind() => $_ensure(10);

  @$pb.TagNumber(12)
  $22.EncryptablePedersenCommit get transparentWalletAmountPC => $_getN(11);
  @$pb.TagNumber(12)
  set transparentWalletAmountPC($22.EncryptablePedersenCommit v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasTransparentWalletAmountPC() => $_has(11);
  @$pb.TagNumber(12)
  void clearTransparentWalletAmountPC() => clearField(12);
  @$pb.TagNumber(12)
  $22.EncryptablePedersenCommit ensureTransparentWalletAmountPC() => $_ensure(11);

  @$pb.TagNumber(13)
  $core.String get acceptCredentialType => $_getSZ(12);
  @$pb.TagNumber(13)
  set acceptCredentialType($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasAcceptCredentialType() => $_has(12);
  @$pb.TagNumber(13)
  void clearAcceptCredentialType() => clearField(13);
}

class MsgCreateWalletResponse extends $pb.GeneratedMessage {
  factory MsgCreateWalletResponse() => create();
  MsgCreateWalletResponse._() : super();
  factory MsgCreateWalletResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgCreateWalletResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgCreateWalletResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgCreateWalletResponse clone() => MsgCreateWalletResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgCreateWalletResponse copyWith(void Function(MsgCreateWalletResponse) updates) => super.copyWith((message) => updates(message as MsgCreateWalletResponse)) as MsgCreateWalletResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgCreateWalletResponse create() => MsgCreateWalletResponse._();
  MsgCreateWalletResponse createEmptyInstance() => create();
  static $pb.PbList<MsgCreateWalletResponse> createRepeated() => $pb.PbList<MsgCreateWalletResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgCreateWalletResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgCreateWalletResponse>(create);
  static MsgCreateWalletResponse? _defaultInstance;
}

class MsgTransferFunds extends $pb.GeneratedMessage {
  factory MsgTransferFunds({
    $core.String? creator,
    $core.String? transactionID,
    $19.BPedersenCommit? sourcePC,
    $19.BPedersenCommit? hiddenTransferPC,
    $19.BPedersenCommit? newSourcePC,
    $core.List<$core.int>? encNewSourceWalletAmountVShare,
    $21.VShareBindData? newSourceWalletAmountVShareBind,
    $core.List<$core.int>? encNewDestinationWalletAmountVShare,
    $21.VShareBindData? newDestinationWalletAmountVShareBind,
    $core.List<$core.int>? encAnonTransferFundsVShare,
    $21.VShareBindData? anonTransferFundsVShareBind,
    $14.BInt? transparentAmount,
    $core.String? tokenDenom,
    $23.BRangeProof? hiddenTransferPCProof,
    $23.BRangeProof? newSourcePCProof,
    $core.List<$core.int>? encTransferFundsVShare,
    $21.VShareBindData? transferFundsVShareBind,
  }) {
    final $result = create();
    if (creator != null) {
      $result.creator = creator;
    }
    if (transactionID != null) {
      $result.transactionID = transactionID;
    }
    if (sourcePC != null) {
      $result.sourcePC = sourcePC;
    }
    if (hiddenTransferPC != null) {
      $result.hiddenTransferPC = hiddenTransferPC;
    }
    if (newSourcePC != null) {
      $result.newSourcePC = newSourcePC;
    }
    if (encNewSourceWalletAmountVShare != null) {
      $result.encNewSourceWalletAmountVShare = encNewSourceWalletAmountVShare;
    }
    if (newSourceWalletAmountVShareBind != null) {
      $result.newSourceWalletAmountVShareBind = newSourceWalletAmountVShareBind;
    }
    if (encNewDestinationWalletAmountVShare != null) {
      $result.encNewDestinationWalletAmountVShare = encNewDestinationWalletAmountVShare;
    }
    if (newDestinationWalletAmountVShareBind != null) {
      $result.newDestinationWalletAmountVShareBind = newDestinationWalletAmountVShareBind;
    }
    if (encAnonTransferFundsVShare != null) {
      $result.encAnonTransferFundsVShare = encAnonTransferFundsVShare;
    }
    if (anonTransferFundsVShareBind != null) {
      $result.anonTransferFundsVShareBind = anonTransferFundsVShareBind;
    }
    if (transparentAmount != null) {
      $result.transparentAmount = transparentAmount;
    }
    if (tokenDenom != null) {
      $result.tokenDenom = tokenDenom;
    }
    if (hiddenTransferPCProof != null) {
      $result.hiddenTransferPCProof = hiddenTransferPCProof;
    }
    if (newSourcePCProof != null) {
      $result.newSourcePCProof = newSourcePCProof;
    }
    if (encTransferFundsVShare != null) {
      $result.encTransferFundsVShare = encTransferFundsVShare;
    }
    if (transferFundsVShareBind != null) {
      $result.transferFundsVShareBind = transferFundsVShareBind;
    }
    return $result;
  }
  MsgTransferFunds._() : super();
  factory MsgTransferFunds.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgTransferFunds.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgTransferFunds', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'creator')
    ..aOS(2, _omitFieldNames ? '' : 'transactionID', protoName: 'transactionID')
    ..aOM<$19.BPedersenCommit>(3, _omitFieldNames ? '' : 'sourcePC', protoName: 'sourcePC', subBuilder: $19.BPedersenCommit.create)
    ..aOM<$19.BPedersenCommit>(4, _omitFieldNames ? '' : 'hiddenTransferPC', protoName: 'hiddenTransferPC', subBuilder: $19.BPedersenCommit.create)
    ..aOM<$19.BPedersenCommit>(5, _omitFieldNames ? '' : 'newSourcePC', protoName: 'newSourcePC', subBuilder: $19.BPedersenCommit.create)
    ..a<$core.List<$core.int>>(6, _omitFieldNames ? '' : 'encNewSourceWalletAmountVShare', $pb.PbFieldType.OY, protoName: 'encNewSourceWalletAmountVShare')
    ..aOM<$21.VShareBindData>(7, _omitFieldNames ? '' : 'newSourceWalletAmountVShareBind', protoName: 'newSourceWalletAmountVShareBind', subBuilder: $21.VShareBindData.create)
    ..a<$core.List<$core.int>>(8, _omitFieldNames ? '' : 'encNewDestinationWalletAmountVShare', $pb.PbFieldType.OY, protoName: 'encNewDestinationWalletAmountVShare')
    ..aOM<$21.VShareBindData>(9, _omitFieldNames ? '' : 'newDestinationWalletAmountVShareBind', protoName: 'newDestinationWalletAmountVShareBind', subBuilder: $21.VShareBindData.create)
    ..a<$core.List<$core.int>>(10, _omitFieldNames ? '' : 'encAnonTransferFundsVShare', $pb.PbFieldType.OY, protoName: 'encAnonTransferFundsVShare')
    ..aOM<$21.VShareBindData>(11, _omitFieldNames ? '' : 'anonTransferFundsVShareBind', protoName: 'anonTransferFundsVShareBind', subBuilder: $21.VShareBindData.create)
    ..aOM<$14.BInt>(12, _omitFieldNames ? '' : 'transparentAmount', protoName: 'transparentAmount', subBuilder: $14.BInt.create)
    ..aOS(13, _omitFieldNames ? '' : 'tokenDenom', protoName: 'tokenDenom')
    ..aOM<$23.BRangeProof>(14, _omitFieldNames ? '' : 'hiddenTransferPCProof', protoName: 'hiddenTransferPCProof', subBuilder: $23.BRangeProof.create)
    ..aOM<$23.BRangeProof>(15, _omitFieldNames ? '' : 'newSourcePCProof', protoName: 'newSourcePCProof', subBuilder: $23.BRangeProof.create)
    ..a<$core.List<$core.int>>(16, _omitFieldNames ? '' : 'encTransferFundsVShare', $pb.PbFieldType.OY, protoName: 'encTransferFundsVShare')
    ..aOM<$21.VShareBindData>(17, _omitFieldNames ? '' : 'transferFundsVShareBind', protoName: 'transferFundsVShareBind', subBuilder: $21.VShareBindData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgTransferFunds clone() => MsgTransferFunds()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgTransferFunds copyWith(void Function(MsgTransferFunds) updates) => super.copyWith((message) => updates(message as MsgTransferFunds)) as MsgTransferFunds;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgTransferFunds create() => MsgTransferFunds._();
  MsgTransferFunds createEmptyInstance() => create();
  static $pb.PbList<MsgTransferFunds> createRepeated() => $pb.PbList<MsgTransferFunds>();
  @$core.pragma('dart2js:noInline')
  static MsgTransferFunds getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgTransferFunds>(create);
  static MsgTransferFunds? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get transactionID => $_getSZ(1);
  @$pb.TagNumber(2)
  set transactionID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTransactionID() => $_has(1);
  @$pb.TagNumber(2)
  void clearTransactionID() => clearField(2);

  @$pb.TagNumber(3)
  $19.BPedersenCommit get sourcePC => $_getN(2);
  @$pb.TagNumber(3)
  set sourcePC($19.BPedersenCommit v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSourcePC() => $_has(2);
  @$pb.TagNumber(3)
  void clearSourcePC() => clearField(3);
  @$pb.TagNumber(3)
  $19.BPedersenCommit ensureSourcePC() => $_ensure(2);

  @$pb.TagNumber(4)
  $19.BPedersenCommit get hiddenTransferPC => $_getN(3);
  @$pb.TagNumber(4)
  set hiddenTransferPC($19.BPedersenCommit v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasHiddenTransferPC() => $_has(3);
  @$pb.TagNumber(4)
  void clearHiddenTransferPC() => clearField(4);
  @$pb.TagNumber(4)
  $19.BPedersenCommit ensureHiddenTransferPC() => $_ensure(3);

  @$pb.TagNumber(5)
  $19.BPedersenCommit get newSourcePC => $_getN(4);
  @$pb.TagNumber(5)
  set newSourcePC($19.BPedersenCommit v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasNewSourcePC() => $_has(4);
  @$pb.TagNumber(5)
  void clearNewSourcePC() => clearField(5);
  @$pb.TagNumber(5)
  $19.BPedersenCommit ensureNewSourcePC() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.List<$core.int> get encNewSourceWalletAmountVShare => $_getN(5);
  @$pb.TagNumber(6)
  set encNewSourceWalletAmountVShare($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasEncNewSourceWalletAmountVShare() => $_has(5);
  @$pb.TagNumber(6)
  void clearEncNewSourceWalletAmountVShare() => clearField(6);

  @$pb.TagNumber(7)
  $21.VShareBindData get newSourceWalletAmountVShareBind => $_getN(6);
  @$pb.TagNumber(7)
  set newSourceWalletAmountVShareBind($21.VShareBindData v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasNewSourceWalletAmountVShareBind() => $_has(6);
  @$pb.TagNumber(7)
  void clearNewSourceWalletAmountVShareBind() => clearField(7);
  @$pb.TagNumber(7)
  $21.VShareBindData ensureNewSourceWalletAmountVShareBind() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.List<$core.int> get encNewDestinationWalletAmountVShare => $_getN(7);
  @$pb.TagNumber(8)
  set encNewDestinationWalletAmountVShare($core.List<$core.int> v) { $_setBytes(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasEncNewDestinationWalletAmountVShare() => $_has(7);
  @$pb.TagNumber(8)
  void clearEncNewDestinationWalletAmountVShare() => clearField(8);

  @$pb.TagNumber(9)
  $21.VShareBindData get newDestinationWalletAmountVShareBind => $_getN(8);
  @$pb.TagNumber(9)
  set newDestinationWalletAmountVShareBind($21.VShareBindData v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasNewDestinationWalletAmountVShareBind() => $_has(8);
  @$pb.TagNumber(9)
  void clearNewDestinationWalletAmountVShareBind() => clearField(9);
  @$pb.TagNumber(9)
  $21.VShareBindData ensureNewDestinationWalletAmountVShareBind() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.List<$core.int> get encAnonTransferFundsVShare => $_getN(9);
  @$pb.TagNumber(10)
  set encAnonTransferFundsVShare($core.List<$core.int> v) { $_setBytes(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasEncAnonTransferFundsVShare() => $_has(9);
  @$pb.TagNumber(10)
  void clearEncAnonTransferFundsVShare() => clearField(10);

  @$pb.TagNumber(11)
  $21.VShareBindData get anonTransferFundsVShareBind => $_getN(10);
  @$pb.TagNumber(11)
  set anonTransferFundsVShareBind($21.VShareBindData v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasAnonTransferFundsVShareBind() => $_has(10);
  @$pb.TagNumber(11)
  void clearAnonTransferFundsVShareBind() => clearField(11);
  @$pb.TagNumber(11)
  $21.VShareBindData ensureAnonTransferFundsVShareBind() => $_ensure(10);

  @$pb.TagNumber(12)
  $14.BInt get transparentAmount => $_getN(11);
  @$pb.TagNumber(12)
  set transparentAmount($14.BInt v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasTransparentAmount() => $_has(11);
  @$pb.TagNumber(12)
  void clearTransparentAmount() => clearField(12);
  @$pb.TagNumber(12)
  $14.BInt ensureTransparentAmount() => $_ensure(11);

  @$pb.TagNumber(13)
  $core.String get tokenDenom => $_getSZ(12);
  @$pb.TagNumber(13)
  set tokenDenom($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasTokenDenom() => $_has(12);
  @$pb.TagNumber(13)
  void clearTokenDenom() => clearField(13);

  @$pb.TagNumber(14)
  $23.BRangeProof get hiddenTransferPCProof => $_getN(13);
  @$pb.TagNumber(14)
  set hiddenTransferPCProof($23.BRangeProof v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasHiddenTransferPCProof() => $_has(13);
  @$pb.TagNumber(14)
  void clearHiddenTransferPCProof() => clearField(14);
  @$pb.TagNumber(14)
  $23.BRangeProof ensureHiddenTransferPCProof() => $_ensure(13);

  @$pb.TagNumber(15)
  $23.BRangeProof get newSourcePCProof => $_getN(14);
  @$pb.TagNumber(15)
  set newSourcePCProof($23.BRangeProof v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasNewSourcePCProof() => $_has(14);
  @$pb.TagNumber(15)
  void clearNewSourcePCProof() => clearField(15);
  @$pb.TagNumber(15)
  $23.BRangeProof ensureNewSourcePCProof() => $_ensure(14);

  @$pb.TagNumber(16)
  $core.List<$core.int> get encTransferFundsVShare => $_getN(15);
  @$pb.TagNumber(16)
  set encTransferFundsVShare($core.List<$core.int> v) { $_setBytes(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasEncTransferFundsVShare() => $_has(15);
  @$pb.TagNumber(16)
  void clearEncTransferFundsVShare() => clearField(16);

  @$pb.TagNumber(17)
  $21.VShareBindData get transferFundsVShareBind => $_getN(16);
  @$pb.TagNumber(17)
  set transferFundsVShareBind($21.VShareBindData v) { setField(17, v); }
  @$pb.TagNumber(17)
  $core.bool hasTransferFundsVShareBind() => $_has(16);
  @$pb.TagNumber(17)
  void clearTransferFundsVShareBind() => clearField(17);
  @$pb.TagNumber(17)
  $21.VShareBindData ensureTransferFundsVShareBind() => $_ensure(16);
}

class MsgTransferFundsResponse extends $pb.GeneratedMessage {
  factory MsgTransferFundsResponse() => create();
  MsgTransferFundsResponse._() : super();
  factory MsgTransferFundsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgTransferFundsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgTransferFundsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgTransferFundsResponse clone() => MsgTransferFundsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgTransferFundsResponse copyWith(void Function(MsgTransferFundsResponse) updates) => super.copyWith((message) => updates(message as MsgTransferFundsResponse)) as MsgTransferFundsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgTransferFundsResponse create() => MsgTransferFundsResponse._();
  MsgTransferFundsResponse createEmptyInstance() => create();
  static $pb.PbList<MsgTransferFundsResponse> createRepeated() => $pb.PbList<MsgTransferFundsResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgTransferFundsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgTransferFundsResponse>(create);
  static MsgTransferFundsResponse? _defaultInstance;
}

class MsgReceiveFunds extends $pb.GeneratedMessage {
  factory MsgReceiveFunds({
    $core.String? creator,
    $core.String? transactionID,
    $19.BPedersenCommit? destinationPC,
    $19.BPedersenCommit? hiddenTransferPC,
    $19.BPedersenCommit? newDestinationPC,
    $core.List<$core.int>? encNewDestinationWalletAmountVShare,
    $21.VShareBindData? newDestinationWalletAmountVShareBind,
    $core.List<$core.int>? encAnonReceiveFundsVShare,
    $21.VShareBindData? anonReceiveFundsVShareBind,
    $14.BInt? transparentAmount,
    $core.String? tokenDenom,
    $23.BRangeProof? hiddenTransferPCProof,
    $23.BRangeProof? newDestinationPCProof,
    $core.List<$core.int>? encReceiveFundsVShare,
    $21.VShareBindData? receiveFundsVShareBind,
  }) {
    final $result = create();
    if (creator != null) {
      $result.creator = creator;
    }
    if (transactionID != null) {
      $result.transactionID = transactionID;
    }
    if (destinationPC != null) {
      $result.destinationPC = destinationPC;
    }
    if (hiddenTransferPC != null) {
      $result.hiddenTransferPC = hiddenTransferPC;
    }
    if (newDestinationPC != null) {
      $result.newDestinationPC = newDestinationPC;
    }
    if (encNewDestinationWalletAmountVShare != null) {
      $result.encNewDestinationWalletAmountVShare = encNewDestinationWalletAmountVShare;
    }
    if (newDestinationWalletAmountVShareBind != null) {
      $result.newDestinationWalletAmountVShareBind = newDestinationWalletAmountVShareBind;
    }
    if (encAnonReceiveFundsVShare != null) {
      $result.encAnonReceiveFundsVShare = encAnonReceiveFundsVShare;
    }
    if (anonReceiveFundsVShareBind != null) {
      $result.anonReceiveFundsVShareBind = anonReceiveFundsVShareBind;
    }
    if (transparentAmount != null) {
      $result.transparentAmount = transparentAmount;
    }
    if (tokenDenom != null) {
      $result.tokenDenom = tokenDenom;
    }
    if (hiddenTransferPCProof != null) {
      $result.hiddenTransferPCProof = hiddenTransferPCProof;
    }
    if (newDestinationPCProof != null) {
      $result.newDestinationPCProof = newDestinationPCProof;
    }
    if (encReceiveFundsVShare != null) {
      $result.encReceiveFundsVShare = encReceiveFundsVShare;
    }
    if (receiveFundsVShareBind != null) {
      $result.receiveFundsVShareBind = receiveFundsVShareBind;
    }
    return $result;
  }
  MsgReceiveFunds._() : super();
  factory MsgReceiveFunds.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgReceiveFunds.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgReceiveFunds', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'creator')
    ..aOS(2, _omitFieldNames ? '' : 'transactionID', protoName: 'transactionID')
    ..aOM<$19.BPedersenCommit>(3, _omitFieldNames ? '' : 'destinationPC', protoName: 'destinationPC', subBuilder: $19.BPedersenCommit.create)
    ..aOM<$19.BPedersenCommit>(4, _omitFieldNames ? '' : 'hiddenTransferPC', protoName: 'hiddenTransferPC', subBuilder: $19.BPedersenCommit.create)
    ..aOM<$19.BPedersenCommit>(5, _omitFieldNames ? '' : 'newDestinationPC', protoName: 'newDestinationPC', subBuilder: $19.BPedersenCommit.create)
    ..a<$core.List<$core.int>>(6, _omitFieldNames ? '' : 'encNewDestinationWalletAmountVShare', $pb.PbFieldType.OY, protoName: 'encNewDestinationWalletAmountVShare')
    ..aOM<$21.VShareBindData>(7, _omitFieldNames ? '' : 'newDestinationWalletAmountVShareBind', protoName: 'newDestinationWalletAmountVShareBind', subBuilder: $21.VShareBindData.create)
    ..a<$core.List<$core.int>>(8, _omitFieldNames ? '' : 'encAnonReceiveFundsVShare', $pb.PbFieldType.OY, protoName: 'encAnonReceiveFundsVShare')
    ..aOM<$21.VShareBindData>(9, _omitFieldNames ? '' : 'anonReceiveFundsVShareBind', protoName: 'anonReceiveFundsVShareBind', subBuilder: $21.VShareBindData.create)
    ..aOM<$14.BInt>(10, _omitFieldNames ? '' : 'transparentAmount', protoName: 'transparentAmount', subBuilder: $14.BInt.create)
    ..aOS(11, _omitFieldNames ? '' : 'tokenDenom', protoName: 'tokenDenom')
    ..aOM<$23.BRangeProof>(12, _omitFieldNames ? '' : 'hiddenTransferPCProof', protoName: 'hiddenTransferPCProof', subBuilder: $23.BRangeProof.create)
    ..aOM<$23.BRangeProof>(13, _omitFieldNames ? '' : 'newDestinationPCProof', protoName: 'newDestinationPCProof', subBuilder: $23.BRangeProof.create)
    ..a<$core.List<$core.int>>(14, _omitFieldNames ? '' : 'encReceiveFundsVShare', $pb.PbFieldType.OY, protoName: 'encReceiveFundsVShare')
    ..aOM<$21.VShareBindData>(15, _omitFieldNames ? '' : 'receiveFundsVShareBind', protoName: 'receiveFundsVShareBind', subBuilder: $21.VShareBindData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgReceiveFunds clone() => MsgReceiveFunds()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgReceiveFunds copyWith(void Function(MsgReceiveFunds) updates) => super.copyWith((message) => updates(message as MsgReceiveFunds)) as MsgReceiveFunds;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgReceiveFunds create() => MsgReceiveFunds._();
  MsgReceiveFunds createEmptyInstance() => create();
  static $pb.PbList<MsgReceiveFunds> createRepeated() => $pb.PbList<MsgReceiveFunds>();
  @$core.pragma('dart2js:noInline')
  static MsgReceiveFunds getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgReceiveFunds>(create);
  static MsgReceiveFunds? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get transactionID => $_getSZ(1);
  @$pb.TagNumber(2)
  set transactionID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTransactionID() => $_has(1);
  @$pb.TagNumber(2)
  void clearTransactionID() => clearField(2);

  @$pb.TagNumber(3)
  $19.BPedersenCommit get destinationPC => $_getN(2);
  @$pb.TagNumber(3)
  set destinationPC($19.BPedersenCommit v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDestinationPC() => $_has(2);
  @$pb.TagNumber(3)
  void clearDestinationPC() => clearField(3);
  @$pb.TagNumber(3)
  $19.BPedersenCommit ensureDestinationPC() => $_ensure(2);

  @$pb.TagNumber(4)
  $19.BPedersenCommit get hiddenTransferPC => $_getN(3);
  @$pb.TagNumber(4)
  set hiddenTransferPC($19.BPedersenCommit v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasHiddenTransferPC() => $_has(3);
  @$pb.TagNumber(4)
  void clearHiddenTransferPC() => clearField(4);
  @$pb.TagNumber(4)
  $19.BPedersenCommit ensureHiddenTransferPC() => $_ensure(3);

  @$pb.TagNumber(5)
  $19.BPedersenCommit get newDestinationPC => $_getN(4);
  @$pb.TagNumber(5)
  set newDestinationPC($19.BPedersenCommit v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasNewDestinationPC() => $_has(4);
  @$pb.TagNumber(5)
  void clearNewDestinationPC() => clearField(5);
  @$pb.TagNumber(5)
  $19.BPedersenCommit ensureNewDestinationPC() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.List<$core.int> get encNewDestinationWalletAmountVShare => $_getN(5);
  @$pb.TagNumber(6)
  set encNewDestinationWalletAmountVShare($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasEncNewDestinationWalletAmountVShare() => $_has(5);
  @$pb.TagNumber(6)
  void clearEncNewDestinationWalletAmountVShare() => clearField(6);

  @$pb.TagNumber(7)
  $21.VShareBindData get newDestinationWalletAmountVShareBind => $_getN(6);
  @$pb.TagNumber(7)
  set newDestinationWalletAmountVShareBind($21.VShareBindData v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasNewDestinationWalletAmountVShareBind() => $_has(6);
  @$pb.TagNumber(7)
  void clearNewDestinationWalletAmountVShareBind() => clearField(7);
  @$pb.TagNumber(7)
  $21.VShareBindData ensureNewDestinationWalletAmountVShareBind() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.List<$core.int> get encAnonReceiveFundsVShare => $_getN(7);
  @$pb.TagNumber(8)
  set encAnonReceiveFundsVShare($core.List<$core.int> v) { $_setBytes(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasEncAnonReceiveFundsVShare() => $_has(7);
  @$pb.TagNumber(8)
  void clearEncAnonReceiveFundsVShare() => clearField(8);

  @$pb.TagNumber(9)
  $21.VShareBindData get anonReceiveFundsVShareBind => $_getN(8);
  @$pb.TagNumber(9)
  set anonReceiveFundsVShareBind($21.VShareBindData v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasAnonReceiveFundsVShareBind() => $_has(8);
  @$pb.TagNumber(9)
  void clearAnonReceiveFundsVShareBind() => clearField(9);
  @$pb.TagNumber(9)
  $21.VShareBindData ensureAnonReceiveFundsVShareBind() => $_ensure(8);

  @$pb.TagNumber(10)
  $14.BInt get transparentAmount => $_getN(9);
  @$pb.TagNumber(10)
  set transparentAmount($14.BInt v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasTransparentAmount() => $_has(9);
  @$pb.TagNumber(10)
  void clearTransparentAmount() => clearField(10);
  @$pb.TagNumber(10)
  $14.BInt ensureTransparentAmount() => $_ensure(9);

  @$pb.TagNumber(11)
  $core.String get tokenDenom => $_getSZ(10);
  @$pb.TagNumber(11)
  set tokenDenom($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasTokenDenom() => $_has(10);
  @$pb.TagNumber(11)
  void clearTokenDenom() => clearField(11);

  @$pb.TagNumber(12)
  $23.BRangeProof get hiddenTransferPCProof => $_getN(11);
  @$pb.TagNumber(12)
  set hiddenTransferPCProof($23.BRangeProof v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasHiddenTransferPCProof() => $_has(11);
  @$pb.TagNumber(12)
  void clearHiddenTransferPCProof() => clearField(12);
  @$pb.TagNumber(12)
  $23.BRangeProof ensureHiddenTransferPCProof() => $_ensure(11);

  @$pb.TagNumber(13)
  $23.BRangeProof get newDestinationPCProof => $_getN(12);
  @$pb.TagNumber(13)
  set newDestinationPCProof($23.BRangeProof v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasNewDestinationPCProof() => $_has(12);
  @$pb.TagNumber(13)
  void clearNewDestinationPCProof() => clearField(13);
  @$pb.TagNumber(13)
  $23.BRangeProof ensureNewDestinationPCProof() => $_ensure(12);

  @$pb.TagNumber(14)
  $core.List<$core.int> get encReceiveFundsVShare => $_getN(13);
  @$pb.TagNumber(14)
  set encReceiveFundsVShare($core.List<$core.int> v) { $_setBytes(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasEncReceiveFundsVShare() => $_has(13);
  @$pb.TagNumber(14)
  void clearEncReceiveFundsVShare() => clearField(14);

  @$pb.TagNumber(15)
  $21.VShareBindData get receiveFundsVShareBind => $_getN(14);
  @$pb.TagNumber(15)
  set receiveFundsVShareBind($21.VShareBindData v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasReceiveFundsVShareBind() => $_has(14);
  @$pb.TagNumber(15)
  void clearReceiveFundsVShareBind() => clearField(15);
  @$pb.TagNumber(15)
  $21.VShareBindData ensureReceiveFundsVShareBind() => $_ensure(14);
}

class MsgReceiveFundsResponse extends $pb.GeneratedMessage {
  factory MsgReceiveFundsResponse() => create();
  MsgReceiveFundsResponse._() : super();
  factory MsgReceiveFundsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgReceiveFundsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgReceiveFundsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgReceiveFundsResponse clone() => MsgReceiveFundsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgReceiveFundsResponse copyWith(void Function(MsgReceiveFundsResponse) updates) => super.copyWith((message) => updates(message as MsgReceiveFundsResponse)) as MsgReceiveFundsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgReceiveFundsResponse create() => MsgReceiveFundsResponse._();
  MsgReceiveFundsResponse createEmptyInstance() => create();
  static $pb.PbList<MsgReceiveFundsResponse> createRepeated() => $pb.PbList<MsgReceiveFundsResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgReceiveFundsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgReceiveFundsResponse>(create);
  static MsgReceiveFundsResponse? _defaultInstance;
}

class MsgDeploySmartContract extends $pb.GeneratedMessage {
  factory MsgDeploySmartContract({
    $core.String? creator,
    $core.String? srcWalletID,
    $core.String? smartContractHex,
  }) {
    final $result = create();
    if (creator != null) {
      $result.creator = creator;
    }
    if (srcWalletID != null) {
      $result.srcWalletID = srcWalletID;
    }
    if (smartContractHex != null) {
      $result.smartContractHex = smartContractHex;
    }
    return $result;
  }
  MsgDeploySmartContract._() : super();
  factory MsgDeploySmartContract.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgDeploySmartContract.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgDeploySmartContract', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'creator')
    ..aOS(2, _omitFieldNames ? '' : 'srcWalletID', protoName: 'srcWalletID')
    ..aOS(3, _omitFieldNames ? '' : 'smartContractHex', protoName: 'smartContractHex')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgDeploySmartContract clone() => MsgDeploySmartContract()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgDeploySmartContract copyWith(void Function(MsgDeploySmartContract) updates) => super.copyWith((message) => updates(message as MsgDeploySmartContract)) as MsgDeploySmartContract;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgDeploySmartContract create() => MsgDeploySmartContract._();
  MsgDeploySmartContract createEmptyInstance() => create();
  static $pb.PbList<MsgDeploySmartContract> createRepeated() => $pb.PbList<MsgDeploySmartContract>();
  @$core.pragma('dart2js:noInline')
  static MsgDeploySmartContract getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgDeploySmartContract>(create);
  static MsgDeploySmartContract? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get srcWalletID => $_getSZ(1);
  @$pb.TagNumber(2)
  set srcWalletID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSrcWalletID() => $_has(1);
  @$pb.TagNumber(2)
  void clearSrcWalletID() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get smartContractHex => $_getSZ(2);
  @$pb.TagNumber(3)
  set smartContractHex($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSmartContractHex() => $_has(2);
  @$pb.TagNumber(3)
  void clearSmartContractHex() => clearField(3);
}

class MsgDeploySmartContractResponse extends $pb.GeneratedMessage {
  factory MsgDeploySmartContractResponse() => create();
  MsgDeploySmartContractResponse._() : super();
  factory MsgDeploySmartContractResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgDeploySmartContractResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgDeploySmartContractResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgDeploySmartContractResponse clone() => MsgDeploySmartContractResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgDeploySmartContractResponse copyWith(void Function(MsgDeploySmartContractResponse) updates) => super.copyWith((message) => updates(message as MsgDeploySmartContractResponse)) as MsgDeploySmartContractResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgDeploySmartContractResponse create() => MsgDeploySmartContractResponse._();
  MsgDeploySmartContractResponse createEmptyInstance() => create();
  static $pb.PbList<MsgDeploySmartContractResponse> createRepeated() => $pb.PbList<MsgDeploySmartContractResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgDeploySmartContractResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgDeploySmartContractResponse>(create);
  static MsgDeploySmartContractResponse? _defaultInstance;
}

class MsgExecuteSmartContract extends $pb.GeneratedMessage {
  factory MsgExecuteSmartContract({
    $core.String? creator,
    $core.String? srcWalletID,
    $core.String? smartContractHex,
  }) {
    final $result = create();
    if (creator != null) {
      $result.creator = creator;
    }
    if (srcWalletID != null) {
      $result.srcWalletID = srcWalletID;
    }
    if (smartContractHex != null) {
      $result.smartContractHex = smartContractHex;
    }
    return $result;
  }
  MsgExecuteSmartContract._() : super();
  factory MsgExecuteSmartContract.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgExecuteSmartContract.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgExecuteSmartContract', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'creator')
    ..aOS(2, _omitFieldNames ? '' : 'srcWalletID', protoName: 'srcWalletID')
    ..aOS(3, _omitFieldNames ? '' : 'smartContractHex', protoName: 'smartContractHex')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgExecuteSmartContract clone() => MsgExecuteSmartContract()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgExecuteSmartContract copyWith(void Function(MsgExecuteSmartContract) updates) => super.copyWith((message) => updates(message as MsgExecuteSmartContract)) as MsgExecuteSmartContract;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgExecuteSmartContract create() => MsgExecuteSmartContract._();
  MsgExecuteSmartContract createEmptyInstance() => create();
  static $pb.PbList<MsgExecuteSmartContract> createRepeated() => $pb.PbList<MsgExecuteSmartContract>();
  @$core.pragma('dart2js:noInline')
  static MsgExecuteSmartContract getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgExecuteSmartContract>(create);
  static MsgExecuteSmartContract? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get srcWalletID => $_getSZ(1);
  @$pb.TagNumber(2)
  set srcWalletID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSrcWalletID() => $_has(1);
  @$pb.TagNumber(2)
  void clearSrcWalletID() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get smartContractHex => $_getSZ(2);
  @$pb.TagNumber(3)
  set smartContractHex($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSmartContractHex() => $_has(2);
  @$pb.TagNumber(3)
  void clearSmartContractHex() => clearField(3);
}

class MsgExecuteSmartContractResponse extends $pb.GeneratedMessage {
  factory MsgExecuteSmartContractResponse() => create();
  MsgExecuteSmartContractResponse._() : super();
  factory MsgExecuteSmartContractResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgExecuteSmartContractResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgExecuteSmartContractResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgExecuteSmartContractResponse clone() => MsgExecuteSmartContractResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgExecuteSmartContractResponse copyWith(void Function(MsgExecuteSmartContractResponse) updates) => super.copyWith((message) => updates(message as MsgExecuteSmartContractResponse)) as MsgExecuteSmartContractResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgExecuteSmartContractResponse create() => MsgExecuteSmartContractResponse._();
  MsgExecuteSmartContractResponse createEmptyInstance() => create();
  static $pb.PbList<MsgExecuteSmartContractResponse> createRepeated() => $pb.PbList<MsgExecuteSmartContractResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgExecuteSmartContractResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgExecuteSmartContractResponse>(create);
  static MsgExecuteSmartContractResponse? _defaultInstance;
}

class MsgCreateCredential extends $pb.GeneratedMessage {
  factory MsgCreateCredential({
    $core.String? creator,
    $core.String? credentialID,
    $core.String? credentialType,
    $19.BPedersenCommit? credentialPedersenCommit,
    $core.List<$core.int>? encCredentialInfoVShare,
    $21.VShareBindData? credentialInfoVShareBind,
    $core.List<$core.int>? encCredentialHashVShare,
    $21.VShareBindData? credentialHashVShareBind,
    $19.BPedersenCommit? findCredentialPedersenCommit,
    $core.String? eKYCAppWalletID,
    $core.String? referenceCredentialID,
    $core.String? identityOwnerWalletID,
  }) {
    final $result = create();
    if (creator != null) {
      $result.creator = creator;
    }
    if (credentialID != null) {
      $result.credentialID = credentialID;
    }
    if (credentialType != null) {
      $result.credentialType = credentialType;
    }
    if (credentialPedersenCommit != null) {
      $result.credentialPedersenCommit = credentialPedersenCommit;
    }
    if (encCredentialInfoVShare != null) {
      $result.encCredentialInfoVShare = encCredentialInfoVShare;
    }
    if (credentialInfoVShareBind != null) {
      $result.credentialInfoVShareBind = credentialInfoVShareBind;
    }
    if (encCredentialHashVShare != null) {
      $result.encCredentialHashVShare = encCredentialHashVShare;
    }
    if (credentialHashVShareBind != null) {
      $result.credentialHashVShareBind = credentialHashVShareBind;
    }
    if (findCredentialPedersenCommit != null) {
      $result.findCredentialPedersenCommit = findCredentialPedersenCommit;
    }
    if (eKYCAppWalletID != null) {
      $result.eKYCAppWalletID = eKYCAppWalletID;
    }
    if (referenceCredentialID != null) {
      $result.referenceCredentialID = referenceCredentialID;
    }
    if (identityOwnerWalletID != null) {
      $result.identityOwnerWalletID = identityOwnerWalletID;
    }
    return $result;
  }
  MsgCreateCredential._() : super();
  factory MsgCreateCredential.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgCreateCredential.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgCreateCredential', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'creator')
    ..aOS(2, _omitFieldNames ? '' : 'credentialID', protoName: 'credentialID')
    ..aOS(3, _omitFieldNames ? '' : 'credentialType', protoName: 'credentialType')
    ..aOM<$19.BPedersenCommit>(4, _omitFieldNames ? '' : 'credentialPedersenCommit', protoName: 'credentialPedersenCommit', subBuilder: $19.BPedersenCommit.create)
    ..a<$core.List<$core.int>>(5, _omitFieldNames ? '' : 'encCredentialInfoVShare', $pb.PbFieldType.OY, protoName: 'encCredentialInfoVShare')
    ..aOM<$21.VShareBindData>(6, _omitFieldNames ? '' : 'credentialInfoVShareBind', protoName: 'credentialInfoVShareBind', subBuilder: $21.VShareBindData.create)
    ..a<$core.List<$core.int>>(7, _omitFieldNames ? '' : 'encCredentialHashVShare', $pb.PbFieldType.OY, protoName: 'encCredentialHashVShare')
    ..aOM<$21.VShareBindData>(8, _omitFieldNames ? '' : 'credentialHashVShareBind', protoName: 'credentialHashVShareBind', subBuilder: $21.VShareBindData.create)
    ..aOM<$19.BPedersenCommit>(9, _omitFieldNames ? '' : 'findCredentialPedersenCommit', protoName: 'findCredentialPedersenCommit', subBuilder: $19.BPedersenCommit.create)
    ..aOS(10, _omitFieldNames ? '' : 'eKYCAppWalletID', protoName: 'eKYCAppWalletID')
    ..aOS(11, _omitFieldNames ? '' : 'referenceCredentialID', protoName: 'referenceCredentialID')
    ..aOS(12, _omitFieldNames ? '' : 'identityOwnerWalletID', protoName: 'identityOwnerWalletID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgCreateCredential clone() => MsgCreateCredential()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgCreateCredential copyWith(void Function(MsgCreateCredential) updates) => super.copyWith((message) => updates(message as MsgCreateCredential)) as MsgCreateCredential;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgCreateCredential create() => MsgCreateCredential._();
  MsgCreateCredential createEmptyInstance() => create();
  static $pb.PbList<MsgCreateCredential> createRepeated() => $pb.PbList<MsgCreateCredential>();
  @$core.pragma('dart2js:noInline')
  static MsgCreateCredential getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgCreateCredential>(create);
  static MsgCreateCredential? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get credentialID => $_getSZ(1);
  @$pb.TagNumber(2)
  set credentialID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCredentialID() => $_has(1);
  @$pb.TagNumber(2)
  void clearCredentialID() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get credentialType => $_getSZ(2);
  @$pb.TagNumber(3)
  set credentialType($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCredentialType() => $_has(2);
  @$pb.TagNumber(3)
  void clearCredentialType() => clearField(3);

  @$pb.TagNumber(4)
  $19.BPedersenCommit get credentialPedersenCommit => $_getN(3);
  @$pb.TagNumber(4)
  set credentialPedersenCommit($19.BPedersenCommit v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCredentialPedersenCommit() => $_has(3);
  @$pb.TagNumber(4)
  void clearCredentialPedersenCommit() => clearField(4);
  @$pb.TagNumber(4)
  $19.BPedersenCommit ensureCredentialPedersenCommit() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.List<$core.int> get encCredentialInfoVShare => $_getN(4);
  @$pb.TagNumber(5)
  set encCredentialInfoVShare($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEncCredentialInfoVShare() => $_has(4);
  @$pb.TagNumber(5)
  void clearEncCredentialInfoVShare() => clearField(5);

  @$pb.TagNumber(6)
  $21.VShareBindData get credentialInfoVShareBind => $_getN(5);
  @$pb.TagNumber(6)
  set credentialInfoVShareBind($21.VShareBindData v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasCredentialInfoVShareBind() => $_has(5);
  @$pb.TagNumber(6)
  void clearCredentialInfoVShareBind() => clearField(6);
  @$pb.TagNumber(6)
  $21.VShareBindData ensureCredentialInfoVShareBind() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.List<$core.int> get encCredentialHashVShare => $_getN(6);
  @$pb.TagNumber(7)
  set encCredentialHashVShare($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasEncCredentialHashVShare() => $_has(6);
  @$pb.TagNumber(7)
  void clearEncCredentialHashVShare() => clearField(7);

  @$pb.TagNumber(8)
  $21.VShareBindData get credentialHashVShareBind => $_getN(7);
  @$pb.TagNumber(8)
  set credentialHashVShareBind($21.VShareBindData v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasCredentialHashVShareBind() => $_has(7);
  @$pb.TagNumber(8)
  void clearCredentialHashVShareBind() => clearField(8);
  @$pb.TagNumber(8)
  $21.VShareBindData ensureCredentialHashVShareBind() => $_ensure(7);

  @$pb.TagNumber(9)
  $19.BPedersenCommit get findCredentialPedersenCommit => $_getN(8);
  @$pb.TagNumber(9)
  set findCredentialPedersenCommit($19.BPedersenCommit v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasFindCredentialPedersenCommit() => $_has(8);
  @$pb.TagNumber(9)
  void clearFindCredentialPedersenCommit() => clearField(9);
  @$pb.TagNumber(9)
  $19.BPedersenCommit ensureFindCredentialPedersenCommit() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.String get eKYCAppWalletID => $_getSZ(9);
  @$pb.TagNumber(10)
  set eKYCAppWalletID($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasEKYCAppWalletID() => $_has(9);
  @$pb.TagNumber(10)
  void clearEKYCAppWalletID() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get referenceCredentialID => $_getSZ(10);
  @$pb.TagNumber(11)
  set referenceCredentialID($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasReferenceCredentialID() => $_has(10);
  @$pb.TagNumber(11)
  void clearReferenceCredentialID() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get identityOwnerWalletID => $_getSZ(11);
  @$pb.TagNumber(12)
  set identityOwnerWalletID($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasIdentityOwnerWalletID() => $_has(11);
  @$pb.TagNumber(12)
  void clearIdentityOwnerWalletID() => clearField(12);
}

class MsgCreateCredentialResponse extends $pb.GeneratedMessage {
  factory MsgCreateCredentialResponse() => create();
  MsgCreateCredentialResponse._() : super();
  factory MsgCreateCredentialResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgCreateCredentialResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgCreateCredentialResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgCreateCredentialResponse clone() => MsgCreateCredentialResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgCreateCredentialResponse copyWith(void Function(MsgCreateCredentialResponse) updates) => super.copyWith((message) => updates(message as MsgCreateCredentialResponse)) as MsgCreateCredentialResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgCreateCredentialResponse create() => MsgCreateCredentialResponse._();
  MsgCreateCredentialResponse createEmptyInstance() => create();
  static $pb.PbList<MsgCreateCredentialResponse> createRepeated() => $pb.PbList<MsgCreateCredentialResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgCreateCredentialResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgCreateCredentialResponse>(create);
  static MsgCreateCredentialResponse? _defaultInstance;
}

class MsgRemoveCredential extends $pb.GeneratedMessage {
  factory MsgRemoveCredential({
    $core.String? creator,
    $core.String? credentialID,
    $core.String? credentialType,
  }) {
    final $result = create();
    if (creator != null) {
      $result.creator = creator;
    }
    if (credentialID != null) {
      $result.credentialID = credentialID;
    }
    if (credentialType != null) {
      $result.credentialType = credentialType;
    }
    return $result;
  }
  MsgRemoveCredential._() : super();
  factory MsgRemoveCredential.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgRemoveCredential.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgRemoveCredential', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'creator')
    ..aOS(2, _omitFieldNames ? '' : 'credentialID', protoName: 'credentialID')
    ..aOS(3, _omitFieldNames ? '' : 'credentialType', protoName: 'credentialType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgRemoveCredential clone() => MsgRemoveCredential()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgRemoveCredential copyWith(void Function(MsgRemoveCredential) updates) => super.copyWith((message) => updates(message as MsgRemoveCredential)) as MsgRemoveCredential;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgRemoveCredential create() => MsgRemoveCredential._();
  MsgRemoveCredential createEmptyInstance() => create();
  static $pb.PbList<MsgRemoveCredential> createRepeated() => $pb.PbList<MsgRemoveCredential>();
  @$core.pragma('dart2js:noInline')
  static MsgRemoveCredential getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgRemoveCredential>(create);
  static MsgRemoveCredential? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get credentialID => $_getSZ(1);
  @$pb.TagNumber(2)
  set credentialID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCredentialID() => $_has(1);
  @$pb.TagNumber(2)
  void clearCredentialID() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get credentialType => $_getSZ(2);
  @$pb.TagNumber(3)
  set credentialType($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCredentialType() => $_has(2);
  @$pb.TagNumber(3)
  void clearCredentialType() => clearField(3);
}

class MsgRemoveCredentialResponse extends $pb.GeneratedMessage {
  factory MsgRemoveCredentialResponse() => create();
  MsgRemoveCredentialResponse._() : super();
  factory MsgRemoveCredentialResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgRemoveCredentialResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgRemoveCredentialResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgRemoveCredentialResponse clone() => MsgRemoveCredentialResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgRemoveCredentialResponse copyWith(void Function(MsgRemoveCredentialResponse) updates) => super.copyWith((message) => updates(message as MsgRemoveCredentialResponse)) as MsgRemoveCredentialResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgRemoveCredentialResponse create() => MsgRemoveCredentialResponse._();
  MsgRemoveCredentialResponse createEmptyInstance() => create();
  static $pb.PbList<MsgRemoveCredentialResponse> createRepeated() => $pb.PbList<MsgRemoveCredentialResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgRemoveCredentialResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgRemoveCredentialResponse>(create);
  static MsgRemoveCredentialResponse? _defaultInstance;
}

class MsgPioneerAddPublicKey extends $pb.GeneratedMessage {
  factory MsgPioneerAddPublicKey({
    $core.String? creator,
    $core.String? pubKID,
    $core.String? pubK,
    $core.String? pubKType,
    $core.Iterable<$24.Share>? shares,
    $core.List<$core.int>? remoteReport,
  }) {
    final $result = create();
    if (creator != null) {
      $result.creator = creator;
    }
    if (pubKID != null) {
      $result.pubKID = pubKID;
    }
    if (pubK != null) {
      $result.pubK = pubK;
    }
    if (pubKType != null) {
      $result.pubKType = pubKType;
    }
    if (shares != null) {
      $result.shares.addAll(shares);
    }
    if (remoteReport != null) {
      $result.remoteReport = remoteReport;
    }
    return $result;
  }
  MsgPioneerAddPublicKey._() : super();
  factory MsgPioneerAddPublicKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgPioneerAddPublicKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgPioneerAddPublicKey', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'creator')
    ..aOS(2, _omitFieldNames ? '' : 'pubKID', protoName: 'pubKID')
    ..aOS(3, _omitFieldNames ? '' : 'pubK', protoName: 'pubK')
    ..aOS(4, _omitFieldNames ? '' : 'pubKType', protoName: 'pubKType')
    ..pc<$24.Share>(5, _omitFieldNames ? '' : 'shares', $pb.PbFieldType.PM, subBuilder: $24.Share.create)
    ..a<$core.List<$core.int>>(6, _omitFieldNames ? '' : 'remoteReport', $pb.PbFieldType.OY, protoName: 'remoteReport')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgPioneerAddPublicKey clone() => MsgPioneerAddPublicKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgPioneerAddPublicKey copyWith(void Function(MsgPioneerAddPublicKey) updates) => super.copyWith((message) => updates(message as MsgPioneerAddPublicKey)) as MsgPioneerAddPublicKey;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgPioneerAddPublicKey create() => MsgPioneerAddPublicKey._();
  MsgPioneerAddPublicKey createEmptyInstance() => create();
  static $pb.PbList<MsgPioneerAddPublicKey> createRepeated() => $pb.PbList<MsgPioneerAddPublicKey>();
  @$core.pragma('dart2js:noInline')
  static MsgPioneerAddPublicKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgPioneerAddPublicKey>(create);
  static MsgPioneerAddPublicKey? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get pubKID => $_getSZ(1);
  @$pb.TagNumber(2)
  set pubKID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPubKID() => $_has(1);
  @$pb.TagNumber(2)
  void clearPubKID() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get pubK => $_getSZ(2);
  @$pb.TagNumber(3)
  set pubK($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPubK() => $_has(2);
  @$pb.TagNumber(3)
  void clearPubK() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get pubKType => $_getSZ(3);
  @$pb.TagNumber(4)
  set pubKType($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPubKType() => $_has(3);
  @$pb.TagNumber(4)
  void clearPubKType() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$24.Share> get shares => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<$core.int> get remoteReport => $_getN(5);
  @$pb.TagNumber(6)
  set remoteReport($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRemoteReport() => $_has(5);
  @$pb.TagNumber(6)
  void clearRemoteReport() => clearField(6);
}

class MsgPioneerAddPublicKeyResponse extends $pb.GeneratedMessage {
  factory MsgPioneerAddPublicKeyResponse() => create();
  MsgPioneerAddPublicKeyResponse._() : super();
  factory MsgPioneerAddPublicKeyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgPioneerAddPublicKeyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgPioneerAddPublicKeyResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgPioneerAddPublicKeyResponse clone() => MsgPioneerAddPublicKeyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgPioneerAddPublicKeyResponse copyWith(void Function(MsgPioneerAddPublicKeyResponse) updates) => super.copyWith((message) => updates(message as MsgPioneerAddPublicKeyResponse)) as MsgPioneerAddPublicKeyResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgPioneerAddPublicKeyResponse create() => MsgPioneerAddPublicKeyResponse._();
  MsgPioneerAddPublicKeyResponse createEmptyInstance() => create();
  static $pb.PbList<MsgPioneerAddPublicKeyResponse> createRepeated() => $pb.PbList<MsgPioneerAddPublicKeyResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgPioneerAddPublicKeyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgPioneerAddPublicKeyResponse>(create);
  static MsgPioneerAddPublicKeyResponse? _defaultInstance;
}

class MsgPioneerUpdateIntervalPublicKeyID extends $pb.GeneratedMessage {
  factory MsgPioneerUpdateIntervalPublicKeyID({
    $core.String? creator,
    $core.String? pubKID,
    $core.String? nodeID,
    $core.String? nodeType,
    $core.String? externalIPAddress,
    $core.List<$core.int>? remoteReport,
  }) {
    final $result = create();
    if (creator != null) {
      $result.creator = creator;
    }
    if (pubKID != null) {
      $result.pubKID = pubKID;
    }
    if (nodeID != null) {
      $result.nodeID = nodeID;
    }
    if (nodeType != null) {
      $result.nodeType = nodeType;
    }
    if (externalIPAddress != null) {
      $result.externalIPAddress = externalIPAddress;
    }
    if (remoteReport != null) {
      $result.remoteReport = remoteReport;
    }
    return $result;
  }
  MsgPioneerUpdateIntervalPublicKeyID._() : super();
  factory MsgPioneerUpdateIntervalPublicKeyID.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgPioneerUpdateIntervalPublicKeyID.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgPioneerUpdateIntervalPublicKeyID', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'creator')
    ..aOS(2, _omitFieldNames ? '' : 'pubKID', protoName: 'pubKID')
    ..aOS(3, _omitFieldNames ? '' : 'nodeID', protoName: 'nodeID')
    ..aOS(4, _omitFieldNames ? '' : 'nodeType', protoName: 'nodeType')
    ..aOS(5, _omitFieldNames ? '' : 'externalIPAddress', protoName: 'externalIPAddress')
    ..a<$core.List<$core.int>>(6, _omitFieldNames ? '' : 'remoteReport', $pb.PbFieldType.OY, protoName: 'remoteReport')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgPioneerUpdateIntervalPublicKeyID clone() => MsgPioneerUpdateIntervalPublicKeyID()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgPioneerUpdateIntervalPublicKeyID copyWith(void Function(MsgPioneerUpdateIntervalPublicKeyID) updates) => super.copyWith((message) => updates(message as MsgPioneerUpdateIntervalPublicKeyID)) as MsgPioneerUpdateIntervalPublicKeyID;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgPioneerUpdateIntervalPublicKeyID create() => MsgPioneerUpdateIntervalPublicKeyID._();
  MsgPioneerUpdateIntervalPublicKeyID createEmptyInstance() => create();
  static $pb.PbList<MsgPioneerUpdateIntervalPublicKeyID> createRepeated() => $pb.PbList<MsgPioneerUpdateIntervalPublicKeyID>();
  @$core.pragma('dart2js:noInline')
  static MsgPioneerUpdateIntervalPublicKeyID getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgPioneerUpdateIntervalPublicKeyID>(create);
  static MsgPioneerUpdateIntervalPublicKeyID? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get pubKID => $_getSZ(1);
  @$pb.TagNumber(2)
  set pubKID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPubKID() => $_has(1);
  @$pb.TagNumber(2)
  void clearPubKID() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get nodeID => $_getSZ(2);
  @$pb.TagNumber(3)
  set nodeID($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNodeID() => $_has(2);
  @$pb.TagNumber(3)
  void clearNodeID() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get nodeType => $_getSZ(3);
  @$pb.TagNumber(4)
  set nodeType($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNodeType() => $_has(3);
  @$pb.TagNumber(4)
  void clearNodeType() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get externalIPAddress => $_getSZ(4);
  @$pb.TagNumber(5)
  set externalIPAddress($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasExternalIPAddress() => $_has(4);
  @$pb.TagNumber(5)
  void clearExternalIPAddress() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get remoteReport => $_getN(5);
  @$pb.TagNumber(6)
  set remoteReport($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRemoteReport() => $_has(5);
  @$pb.TagNumber(6)
  void clearRemoteReport() => clearField(6);
}

class MsgPioneerUpdateIntervalPublicKeyIDResponse extends $pb.GeneratedMessage {
  factory MsgPioneerUpdateIntervalPublicKeyIDResponse() => create();
  MsgPioneerUpdateIntervalPublicKeyIDResponse._() : super();
  factory MsgPioneerUpdateIntervalPublicKeyIDResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgPioneerUpdateIntervalPublicKeyIDResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgPioneerUpdateIntervalPublicKeyIDResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgPioneerUpdateIntervalPublicKeyIDResponse clone() => MsgPioneerUpdateIntervalPublicKeyIDResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgPioneerUpdateIntervalPublicKeyIDResponse copyWith(void Function(MsgPioneerUpdateIntervalPublicKeyIDResponse) updates) => super.copyWith((message) => updates(message as MsgPioneerUpdateIntervalPublicKeyIDResponse)) as MsgPioneerUpdateIntervalPublicKeyIDResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgPioneerUpdateIntervalPublicKeyIDResponse create() => MsgPioneerUpdateIntervalPublicKeyIDResponse._();
  MsgPioneerUpdateIntervalPublicKeyIDResponse createEmptyInstance() => create();
  static $pb.PbList<MsgPioneerUpdateIntervalPublicKeyIDResponse> createRepeated() => $pb.PbList<MsgPioneerUpdateIntervalPublicKeyIDResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgPioneerUpdateIntervalPublicKeyIDResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgPioneerUpdateIntervalPublicKeyIDResponse>(create);
  static MsgPioneerUpdateIntervalPublicKeyIDResponse? _defaultInstance;
}

class MsgPioneerEnclaveExchange extends $pb.GeneratedMessage {
  factory MsgPioneerEnclaveExchange({
    $core.String? creator,
    $core.String? msgType,
    $core.String? msg,
  }) {
    final $result = create();
    if (creator != null) {
      $result.creator = creator;
    }
    if (msgType != null) {
      $result.msgType = msgType;
    }
    if (msg != null) {
      $result.msg = msg;
    }
    return $result;
  }
  MsgPioneerEnclaveExchange._() : super();
  factory MsgPioneerEnclaveExchange.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgPioneerEnclaveExchange.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgPioneerEnclaveExchange', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'creator')
    ..aOS(2, _omitFieldNames ? '' : 'msgType', protoName: 'msgType')
    ..aOS(3, _omitFieldNames ? '' : 'msg')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgPioneerEnclaveExchange clone() => MsgPioneerEnclaveExchange()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgPioneerEnclaveExchange copyWith(void Function(MsgPioneerEnclaveExchange) updates) => super.copyWith((message) => updates(message as MsgPioneerEnclaveExchange)) as MsgPioneerEnclaveExchange;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgPioneerEnclaveExchange create() => MsgPioneerEnclaveExchange._();
  MsgPioneerEnclaveExchange createEmptyInstance() => create();
  static $pb.PbList<MsgPioneerEnclaveExchange> createRepeated() => $pb.PbList<MsgPioneerEnclaveExchange>();
  @$core.pragma('dart2js:noInline')
  static MsgPioneerEnclaveExchange getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgPioneerEnclaveExchange>(create);
  static MsgPioneerEnclaveExchange? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get msgType => $_getSZ(1);
  @$pb.TagNumber(2)
  set msgType($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMsgType() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsgType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get msg => $_getSZ(2);
  @$pb.TagNumber(3)
  set msg($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMsg() => $_has(2);
  @$pb.TagNumber(3)
  void clearMsg() => clearField(3);
}

class MsgPioneerEnclaveExchangeResponse extends $pb.GeneratedMessage {
  factory MsgPioneerEnclaveExchangeResponse() => create();
  MsgPioneerEnclaveExchangeResponse._() : super();
  factory MsgPioneerEnclaveExchangeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgPioneerEnclaveExchangeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgPioneerEnclaveExchangeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgPioneerEnclaveExchangeResponse clone() => MsgPioneerEnclaveExchangeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgPioneerEnclaveExchangeResponse copyWith(void Function(MsgPioneerEnclaveExchangeResponse) updates) => super.copyWith((message) => updates(message as MsgPioneerEnclaveExchangeResponse)) as MsgPioneerEnclaveExchangeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgPioneerEnclaveExchangeResponse create() => MsgPioneerEnclaveExchangeResponse._();
  MsgPioneerEnclaveExchangeResponse createEmptyInstance() => create();
  static $pb.PbList<MsgPioneerEnclaveExchangeResponse> createRepeated() => $pb.PbList<MsgPioneerEnclaveExchangeResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgPioneerEnclaveExchangeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgPioneerEnclaveExchangeResponse>(create);
  static MsgPioneerEnclaveExchangeResponse? _defaultInstance;
}

class MsgPioneerBroadcastSecretSharePrivateKey extends $pb.GeneratedMessage {
  factory MsgPioneerBroadcastSecretSharePrivateKey({
    $core.String? creator,
    $core.Iterable<$12.SecretSharePrivK>? privateKeys,
    $core.List<$core.int>? remoteReport,
  }) {
    final $result = create();
    if (creator != null) {
      $result.creator = creator;
    }
    if (privateKeys != null) {
      $result.privateKeys.addAll(privateKeys);
    }
    if (remoteReport != null) {
      $result.remoteReport = remoteReport;
    }
    return $result;
  }
  MsgPioneerBroadcastSecretSharePrivateKey._() : super();
  factory MsgPioneerBroadcastSecretSharePrivateKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgPioneerBroadcastSecretSharePrivateKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgPioneerBroadcastSecretSharePrivateKey', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'creator')
    ..pc<$12.SecretSharePrivK>(2, _omitFieldNames ? '' : 'privateKeys', $pb.PbFieldType.PM, protoName: 'privateKeys', subBuilder: $12.SecretSharePrivK.create)
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'remoteReport', $pb.PbFieldType.OY, protoName: 'remoteReport')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgPioneerBroadcastSecretSharePrivateKey clone() => MsgPioneerBroadcastSecretSharePrivateKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgPioneerBroadcastSecretSharePrivateKey copyWith(void Function(MsgPioneerBroadcastSecretSharePrivateKey) updates) => super.copyWith((message) => updates(message as MsgPioneerBroadcastSecretSharePrivateKey)) as MsgPioneerBroadcastSecretSharePrivateKey;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgPioneerBroadcastSecretSharePrivateKey create() => MsgPioneerBroadcastSecretSharePrivateKey._();
  MsgPioneerBroadcastSecretSharePrivateKey createEmptyInstance() => create();
  static $pb.PbList<MsgPioneerBroadcastSecretSharePrivateKey> createRepeated() => $pb.PbList<MsgPioneerBroadcastSecretSharePrivateKey>();
  @$core.pragma('dart2js:noInline')
  static MsgPioneerBroadcastSecretSharePrivateKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgPioneerBroadcastSecretSharePrivateKey>(create);
  static MsgPioneerBroadcastSecretSharePrivateKey? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$12.SecretSharePrivK> get privateKeys => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get remoteReport => $_getN(2);
  @$pb.TagNumber(3)
  set remoteReport($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRemoteReport() => $_has(2);
  @$pb.TagNumber(3)
  void clearRemoteReport() => clearField(3);
}

class MsgPioneerBroadcastSecretSharePrivateKeyResponse extends $pb.GeneratedMessage {
  factory MsgPioneerBroadcastSecretSharePrivateKeyResponse() => create();
  MsgPioneerBroadcastSecretSharePrivateKeyResponse._() : super();
  factory MsgPioneerBroadcastSecretSharePrivateKeyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgPioneerBroadcastSecretSharePrivateKeyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgPioneerBroadcastSecretSharePrivateKeyResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgPioneerBroadcastSecretSharePrivateKeyResponse clone() => MsgPioneerBroadcastSecretSharePrivateKeyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgPioneerBroadcastSecretSharePrivateKeyResponse copyWith(void Function(MsgPioneerBroadcastSecretSharePrivateKeyResponse) updates) => super.copyWith((message) => updates(message as MsgPioneerBroadcastSecretSharePrivateKeyResponse)) as MsgPioneerBroadcastSecretSharePrivateKeyResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgPioneerBroadcastSecretSharePrivateKeyResponse create() => MsgPioneerBroadcastSecretSharePrivateKeyResponse._();
  MsgPioneerBroadcastSecretSharePrivateKeyResponse createEmptyInstance() => create();
  static $pb.PbList<MsgPioneerBroadcastSecretSharePrivateKeyResponse> createRepeated() => $pb.PbList<MsgPioneerBroadcastSecretSharePrivateKeyResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgPioneerBroadcastSecretSharePrivateKeyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgPioneerBroadcastSecretSharePrivateKeyResponse>(create);
  static MsgPioneerBroadcastSecretSharePrivateKeyResponse? _defaultInstance;
}

class MsgProtectPrivateKey extends $pb.GeneratedMessage {
  factory MsgProtectPrivateKey({
    $core.String? creator,
    $core.int? threshold,
    $core.Iterable<$25.RecoverShare>? recoverShare,
  }) {
    final $result = create();
    if (creator != null) {
      $result.creator = creator;
    }
    if (threshold != null) {
      $result.threshold = threshold;
    }
    if (recoverShare != null) {
      $result.recoverShare.addAll(recoverShare);
    }
    return $result;
  }
  MsgProtectPrivateKey._() : super();
  factory MsgProtectPrivateKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgProtectPrivateKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgProtectPrivateKey', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'creator')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'threshold', $pb.PbFieldType.O3)
    ..pc<$25.RecoverShare>(3, _omitFieldNames ? '' : 'recoverShare', $pb.PbFieldType.PM, protoName: 'recoverShare', subBuilder: $25.RecoverShare.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgProtectPrivateKey clone() => MsgProtectPrivateKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgProtectPrivateKey copyWith(void Function(MsgProtectPrivateKey) updates) => super.copyWith((message) => updates(message as MsgProtectPrivateKey)) as MsgProtectPrivateKey;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgProtectPrivateKey create() => MsgProtectPrivateKey._();
  MsgProtectPrivateKey createEmptyInstance() => create();
  static $pb.PbList<MsgProtectPrivateKey> createRepeated() => $pb.PbList<MsgProtectPrivateKey>();
  @$core.pragma('dart2js:noInline')
  static MsgProtectPrivateKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgProtectPrivateKey>(create);
  static MsgProtectPrivateKey? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get threshold => $_getIZ(1);
  @$pb.TagNumber(2)
  set threshold($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasThreshold() => $_has(1);
  @$pb.TagNumber(2)
  void clearThreshold() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$25.RecoverShare> get recoverShare => $_getList(2);
}

class MsgProtectPrivateKeyResponse extends $pb.GeneratedMessage {
  factory MsgProtectPrivateKeyResponse() => create();
  MsgProtectPrivateKeyResponse._() : super();
  factory MsgProtectPrivateKeyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgProtectPrivateKeyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgProtectPrivateKeyResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgProtectPrivateKeyResponse clone() => MsgProtectPrivateKeyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgProtectPrivateKeyResponse copyWith(void Function(MsgProtectPrivateKeyResponse) updates) => super.copyWith((message) => updates(message as MsgProtectPrivateKeyResponse)) as MsgProtectPrivateKeyResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgProtectPrivateKeyResponse create() => MsgProtectPrivateKeyResponse._();
  MsgProtectPrivateKeyResponse createEmptyInstance() => create();
  static $pb.PbList<MsgProtectPrivateKeyResponse> createRepeated() => $pb.PbList<MsgProtectPrivateKeyResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgProtectPrivateKeyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgProtectPrivateKeyResponse>(create);
  static MsgProtectPrivateKeyResponse? _defaultInstance;
}

class MsgSignRecoverPrivateKey extends $pb.GeneratedMessage {
  factory MsgSignRecoverPrivateKey({
    $core.String? creator,
    $core.List<$core.int>? encDestinationEWalletIDVShare,
    $21.VShareBindData? destinationEWalletIDVShareBind,
    $25.RecoverShare? recoverShare,
  }) {
    final $result = create();
    if (creator != null) {
      $result.creator = creator;
    }
    if (encDestinationEWalletIDVShare != null) {
      $result.encDestinationEWalletIDVShare = encDestinationEWalletIDVShare;
    }
    if (destinationEWalletIDVShareBind != null) {
      $result.destinationEWalletIDVShareBind = destinationEWalletIDVShareBind;
    }
    if (recoverShare != null) {
      $result.recoverShare = recoverShare;
    }
    return $result;
  }
  MsgSignRecoverPrivateKey._() : super();
  factory MsgSignRecoverPrivateKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgSignRecoverPrivateKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgSignRecoverPrivateKey', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'creator')
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'encDestinationEWalletIDVShare', $pb.PbFieldType.OY, protoName: 'encDestinationEWalletIDVShare')
    ..aOM<$21.VShareBindData>(3, _omitFieldNames ? '' : 'destinationEWalletIDVShareBind', protoName: 'destinationEWalletIDVShareBind', subBuilder: $21.VShareBindData.create)
    ..aOM<$25.RecoverShare>(4, _omitFieldNames ? '' : 'recoverShare', protoName: 'recoverShare', subBuilder: $25.RecoverShare.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgSignRecoverPrivateKey clone() => MsgSignRecoverPrivateKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgSignRecoverPrivateKey copyWith(void Function(MsgSignRecoverPrivateKey) updates) => super.copyWith((message) => updates(message as MsgSignRecoverPrivateKey)) as MsgSignRecoverPrivateKey;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgSignRecoverPrivateKey create() => MsgSignRecoverPrivateKey._();
  MsgSignRecoverPrivateKey createEmptyInstance() => create();
  static $pb.PbList<MsgSignRecoverPrivateKey> createRepeated() => $pb.PbList<MsgSignRecoverPrivateKey>();
  @$core.pragma('dart2js:noInline')
  static MsgSignRecoverPrivateKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgSignRecoverPrivateKey>(create);
  static MsgSignRecoverPrivateKey? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get encDestinationEWalletIDVShare => $_getN(1);
  @$pb.TagNumber(2)
  set encDestinationEWalletIDVShare($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEncDestinationEWalletIDVShare() => $_has(1);
  @$pb.TagNumber(2)
  void clearEncDestinationEWalletIDVShare() => clearField(2);

  @$pb.TagNumber(3)
  $21.VShareBindData get destinationEWalletIDVShareBind => $_getN(2);
  @$pb.TagNumber(3)
  set destinationEWalletIDVShareBind($21.VShareBindData v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDestinationEWalletIDVShareBind() => $_has(2);
  @$pb.TagNumber(3)
  void clearDestinationEWalletIDVShareBind() => clearField(3);
  @$pb.TagNumber(3)
  $21.VShareBindData ensureDestinationEWalletIDVShareBind() => $_ensure(2);

  @$pb.TagNumber(4)
  $25.RecoverShare get recoverShare => $_getN(3);
  @$pb.TagNumber(4)
  set recoverShare($25.RecoverShare v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasRecoverShare() => $_has(3);
  @$pb.TagNumber(4)
  void clearRecoverShare() => clearField(4);
  @$pb.TagNumber(4)
  $25.RecoverShare ensureRecoverShare() => $_ensure(3);
}

class MsgSignRecoverPrivateKeyResponse extends $pb.GeneratedMessage {
  factory MsgSignRecoverPrivateKeyResponse() => create();
  MsgSignRecoverPrivateKeyResponse._() : super();
  factory MsgSignRecoverPrivateKeyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgSignRecoverPrivateKeyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgSignRecoverPrivateKeyResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgSignRecoverPrivateKeyResponse clone() => MsgSignRecoverPrivateKeyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgSignRecoverPrivateKeyResponse copyWith(void Function(MsgSignRecoverPrivateKeyResponse) updates) => super.copyWith((message) => updates(message as MsgSignRecoverPrivateKeyResponse)) as MsgSignRecoverPrivateKeyResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgSignRecoverPrivateKeyResponse create() => MsgSignRecoverPrivateKeyResponse._();
  MsgSignRecoverPrivateKeyResponse createEmptyInstance() => create();
  static $pb.PbList<MsgSignRecoverPrivateKeyResponse> createRepeated() => $pb.PbList<MsgSignRecoverPrivateKeyResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgSignRecoverPrivateKeyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgSignRecoverPrivateKeyResponse>(create);
  static MsgSignRecoverPrivateKeyResponse? _defaultInstance;
}

class MsgClaimCredential extends $pb.GeneratedMessage {
  factory MsgClaimCredential({
    $core.String? creator,
    $core.String? credentialID,
    $core.String? credentialType,
    $core.bool? recoverKey,
    $core.List<$core.int>? encClaimCredentialExtraParmsVShare,
    $21.VShareBindData? claimCredentialExtraParmsVShareBind,
  }) {
    final $result = create();
    if (creator != null) {
      $result.creator = creator;
    }
    if (credentialID != null) {
      $result.credentialID = credentialID;
    }
    if (credentialType != null) {
      $result.credentialType = credentialType;
    }
    if (recoverKey != null) {
      $result.recoverKey = recoverKey;
    }
    if (encClaimCredentialExtraParmsVShare != null) {
      $result.encClaimCredentialExtraParmsVShare = encClaimCredentialExtraParmsVShare;
    }
    if (claimCredentialExtraParmsVShareBind != null) {
      $result.claimCredentialExtraParmsVShareBind = claimCredentialExtraParmsVShareBind;
    }
    return $result;
  }
  MsgClaimCredential._() : super();
  factory MsgClaimCredential.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgClaimCredential.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgClaimCredential', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'creator')
    ..aOS(2, _omitFieldNames ? '' : 'credentialID', protoName: 'credentialID')
    ..aOS(3, _omitFieldNames ? '' : 'credentialType', protoName: 'credentialType')
    ..aOB(4, _omitFieldNames ? '' : 'recoverKey', protoName: 'recoverKey')
    ..a<$core.List<$core.int>>(5, _omitFieldNames ? '' : 'encClaimCredentialExtraParmsVShare', $pb.PbFieldType.OY, protoName: 'encClaimCredentialExtraParmsVShare')
    ..aOM<$21.VShareBindData>(6, _omitFieldNames ? '' : 'claimCredentialExtraParmsVShareBind', protoName: 'claimCredentialExtraParmsVShareBind', subBuilder: $21.VShareBindData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgClaimCredential clone() => MsgClaimCredential()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgClaimCredential copyWith(void Function(MsgClaimCredential) updates) => super.copyWith((message) => updates(message as MsgClaimCredential)) as MsgClaimCredential;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgClaimCredential create() => MsgClaimCredential._();
  MsgClaimCredential createEmptyInstance() => create();
  static $pb.PbList<MsgClaimCredential> createRepeated() => $pb.PbList<MsgClaimCredential>();
  @$core.pragma('dart2js:noInline')
  static MsgClaimCredential getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgClaimCredential>(create);
  static MsgClaimCredential? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get credentialID => $_getSZ(1);
  @$pb.TagNumber(2)
  set credentialID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCredentialID() => $_has(1);
  @$pb.TagNumber(2)
  void clearCredentialID() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get credentialType => $_getSZ(2);
  @$pb.TagNumber(3)
  set credentialType($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCredentialType() => $_has(2);
  @$pb.TagNumber(3)
  void clearCredentialType() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get recoverKey => $_getBF(3);
  @$pb.TagNumber(4)
  set recoverKey($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRecoverKey() => $_has(3);
  @$pb.TagNumber(4)
  void clearRecoverKey() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get encClaimCredentialExtraParmsVShare => $_getN(4);
  @$pb.TagNumber(5)
  set encClaimCredentialExtraParmsVShare($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEncClaimCredentialExtraParmsVShare() => $_has(4);
  @$pb.TagNumber(5)
  void clearEncClaimCredentialExtraParmsVShare() => clearField(5);

  @$pb.TagNumber(6)
  $21.VShareBindData get claimCredentialExtraParmsVShareBind => $_getN(5);
  @$pb.TagNumber(6)
  set claimCredentialExtraParmsVShareBind($21.VShareBindData v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasClaimCredentialExtraParmsVShareBind() => $_has(5);
  @$pb.TagNumber(6)
  void clearClaimCredentialExtraParmsVShareBind() => clearField(6);
  @$pb.TagNumber(6)
  $21.VShareBindData ensureClaimCredentialExtraParmsVShareBind() => $_ensure(5);
}

class MsgClaimCredentialResponse extends $pb.GeneratedMessage {
  factory MsgClaimCredentialResponse() => create();
  MsgClaimCredentialResponse._() : super();
  factory MsgClaimCredentialResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgClaimCredentialResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgClaimCredentialResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgClaimCredentialResponse clone() => MsgClaimCredentialResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgClaimCredentialResponse copyWith(void Function(MsgClaimCredentialResponse) updates) => super.copyWith((message) => updates(message as MsgClaimCredentialResponse)) as MsgClaimCredentialResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgClaimCredentialResponse create() => MsgClaimCredentialResponse._();
  MsgClaimCredentialResponse createEmptyInstance() => create();
  static $pb.PbList<MsgClaimCredentialResponse> createRepeated() => $pb.PbList<MsgClaimCredentialResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgClaimCredentialResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgClaimCredentialResponse>(create);
  static MsgClaimCredentialResponse? _defaultInstance;
}

class MsgCreateBulkCredentials extends $pb.GeneratedMessage {
  factory MsgCreateBulkCredentials({
    $core.String? creator,
    $core.String? credentialType,
    $21.VShareBindData? credentialInfoVShareBind,
    $21.VShareBindData? credentialHashVShareBind,
    $core.String? eKYCAppWalletID,
    $core.Iterable<$26.BulkCredential>? bulkCredentials,
  }) {
    final $result = create();
    if (creator != null) {
      $result.creator = creator;
    }
    if (credentialType != null) {
      $result.credentialType = credentialType;
    }
    if (credentialInfoVShareBind != null) {
      $result.credentialInfoVShareBind = credentialInfoVShareBind;
    }
    if (credentialHashVShareBind != null) {
      $result.credentialHashVShareBind = credentialHashVShareBind;
    }
    if (eKYCAppWalletID != null) {
      $result.eKYCAppWalletID = eKYCAppWalletID;
    }
    if (bulkCredentials != null) {
      $result.bulkCredentials.addAll(bulkCredentials);
    }
    return $result;
  }
  MsgCreateBulkCredentials._() : super();
  factory MsgCreateBulkCredentials.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgCreateBulkCredentials.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgCreateBulkCredentials', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'creator')
    ..aOS(2, _omitFieldNames ? '' : 'credentialType', protoName: 'credentialType')
    ..aOM<$21.VShareBindData>(3, _omitFieldNames ? '' : 'credentialInfoVShareBind', protoName: 'credentialInfoVShareBind', subBuilder: $21.VShareBindData.create)
    ..aOM<$21.VShareBindData>(4, _omitFieldNames ? '' : 'credentialHashVShareBind', protoName: 'credentialHashVShareBind', subBuilder: $21.VShareBindData.create)
    ..aOS(5, _omitFieldNames ? '' : 'eKYCAppWalletID', protoName: 'eKYCAppWalletID')
    ..pc<$26.BulkCredential>(6, _omitFieldNames ? '' : 'bulkCredentials', $pb.PbFieldType.PM, protoName: 'bulkCredentials', subBuilder: $26.BulkCredential.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgCreateBulkCredentials clone() => MsgCreateBulkCredentials()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgCreateBulkCredentials copyWith(void Function(MsgCreateBulkCredentials) updates) => super.copyWith((message) => updates(message as MsgCreateBulkCredentials)) as MsgCreateBulkCredentials;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgCreateBulkCredentials create() => MsgCreateBulkCredentials._();
  MsgCreateBulkCredentials createEmptyInstance() => create();
  static $pb.PbList<MsgCreateBulkCredentials> createRepeated() => $pb.PbList<MsgCreateBulkCredentials>();
  @$core.pragma('dart2js:noInline')
  static MsgCreateBulkCredentials getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgCreateBulkCredentials>(create);
  static MsgCreateBulkCredentials? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get credentialType => $_getSZ(1);
  @$pb.TagNumber(2)
  set credentialType($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCredentialType() => $_has(1);
  @$pb.TagNumber(2)
  void clearCredentialType() => clearField(2);

  @$pb.TagNumber(3)
  $21.VShareBindData get credentialInfoVShareBind => $_getN(2);
  @$pb.TagNumber(3)
  set credentialInfoVShareBind($21.VShareBindData v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCredentialInfoVShareBind() => $_has(2);
  @$pb.TagNumber(3)
  void clearCredentialInfoVShareBind() => clearField(3);
  @$pb.TagNumber(3)
  $21.VShareBindData ensureCredentialInfoVShareBind() => $_ensure(2);

  @$pb.TagNumber(4)
  $21.VShareBindData get credentialHashVShareBind => $_getN(3);
  @$pb.TagNumber(4)
  set credentialHashVShareBind($21.VShareBindData v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCredentialHashVShareBind() => $_has(3);
  @$pb.TagNumber(4)
  void clearCredentialHashVShareBind() => clearField(4);
  @$pb.TagNumber(4)
  $21.VShareBindData ensureCredentialHashVShareBind() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.String get eKYCAppWalletID => $_getSZ(4);
  @$pb.TagNumber(5)
  set eKYCAppWalletID($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEKYCAppWalletID() => $_has(4);
  @$pb.TagNumber(5)
  void clearEKYCAppWalletID() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$26.BulkCredential> get bulkCredentials => $_getList(5);
}

class MsgCreateBulkCredentialsResponse extends $pb.GeneratedMessage {
  factory MsgCreateBulkCredentialsResponse() => create();
  MsgCreateBulkCredentialsResponse._() : super();
  factory MsgCreateBulkCredentialsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgCreateBulkCredentialsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgCreateBulkCredentialsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgCreateBulkCredentialsResponse clone() => MsgCreateBulkCredentialsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgCreateBulkCredentialsResponse copyWith(void Function(MsgCreateBulkCredentialsResponse) updates) => super.copyWith((message) => updates(message as MsgCreateBulkCredentialsResponse)) as MsgCreateBulkCredentialsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgCreateBulkCredentialsResponse create() => MsgCreateBulkCredentialsResponse._();
  MsgCreateBulkCredentialsResponse createEmptyInstance() => create();
  static $pb.PbList<MsgCreateBulkCredentialsResponse> createRepeated() => $pb.PbList<MsgCreateBulkCredentialsResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgCreateBulkCredentialsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgCreateBulkCredentialsResponse>(create);
  static MsgCreateBulkCredentialsResponse? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
