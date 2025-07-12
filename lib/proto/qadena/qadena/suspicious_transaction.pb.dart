//
//  Generated code. Do not modify.
//  source: qadena/qadena/suspicious_transaction.proto
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

class SuspiciousTransaction extends $pb.GeneratedMessage {
  factory SuspiciousTransaction({
    $fixnum.Int64? id,
    $core.String? jarID,
    $core.String? regulatorPubKID,
    $core.String? reason,
    $16.Timestamp? time,
    $core.List<$core.int>? encSourcePersonalInfoRegulatorPubK,
    $core.List<$core.int>? encDestinationPersonalInfoRegulatorPubK,
    $core.List<$core.int>? encEAmountRegulatorPubK,
    $core.List<$core.int>? encOptInReasonRegulatorPubK,
    $core.String? creator,
  }) {
    final $result = create();
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
    if (creator != null) {
      $result.creator = creator;
    }
    return $result;
  }
  SuspiciousTransaction._() : super();
  factory SuspiciousTransaction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SuspiciousTransaction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SuspiciousTransaction', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'jarID', protoName: 'jarID')
    ..aOS(3, _omitFieldNames ? '' : 'regulatorPubKID', protoName: 'regulatorPubKID')
    ..aOS(4, _omitFieldNames ? '' : 'reason')
    ..aOM<$16.Timestamp>(5, _omitFieldNames ? '' : 'time', subBuilder: $16.Timestamp.create)
    ..a<$core.List<$core.int>>(6, _omitFieldNames ? '' : 'encSourcePersonalInfoRegulatorPubK', $pb.PbFieldType.OY, protoName: 'encSourcePersonalInfoRegulatorPubK')
    ..a<$core.List<$core.int>>(7, _omitFieldNames ? '' : 'encDestinationPersonalInfoRegulatorPubK', $pb.PbFieldType.OY, protoName: 'encDestinationPersonalInfoRegulatorPubK')
    ..a<$core.List<$core.int>>(8, _omitFieldNames ? '' : 'encEAmountRegulatorPubK', $pb.PbFieldType.OY, protoName: 'encEAmountRegulatorPubK')
    ..a<$core.List<$core.int>>(9, _omitFieldNames ? '' : 'encOptInReasonRegulatorPubK', $pb.PbFieldType.OY, protoName: 'encOptInReasonRegulatorPubK')
    ..aOS(10, _omitFieldNames ? '' : 'creator')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SuspiciousTransaction clone() => SuspiciousTransaction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SuspiciousTransaction copyWith(void Function(SuspiciousTransaction) updates) => super.copyWith((message) => updates(message as SuspiciousTransaction)) as SuspiciousTransaction;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SuspiciousTransaction create() => SuspiciousTransaction._();
  SuspiciousTransaction createEmptyInstance() => create();
  static $pb.PbList<SuspiciousTransaction> createRepeated() => $pb.PbList<SuspiciousTransaction>();
  @$core.pragma('dart2js:noInline')
  static SuspiciousTransaction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SuspiciousTransaction>(create);
  static SuspiciousTransaction? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

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

  @$pb.TagNumber(10)
  $core.String get creator => $_getSZ(9);
  @$pb.TagNumber(10)
  set creator($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasCreator() => $_has(9);
  @$pb.TagNumber(10)
  void clearCreator() => clearField(10);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
