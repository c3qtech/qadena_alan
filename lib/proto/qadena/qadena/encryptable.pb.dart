//
//  Generated code. Do not modify.
//  source: qadena/qadena/encryptable.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../cosmos/base/v1beta1/coin.pb.dart' as $15;
import 'b_pedersen_commit.pb.dart' as $19;
import 'bigint.pb.dart' as $14;
import 'pedersen_commit.pb.dart' as $22;
import 'v_share_bind_data.pb.dart' as $21;

class EncryptableString extends $pb.GeneratedMessage {
  factory EncryptableString({
    $core.String? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  EncryptableString._() : super();
  factory EncryptableString.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EncryptableString.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EncryptableString', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'Value', protoName: 'Value')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EncryptableString clone() => EncryptableString()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EncryptableString copyWith(void Function(EncryptableString) updates) => super.copyWith((message) => updates(message as EncryptableString)) as EncryptableString;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EncryptableString create() => EncryptableString._();
  EncryptableString createEmptyInstance() => create();
  static $pb.PbList<EncryptableString> createRepeated() => $pb.PbList<EncryptableString>();
  @$core.pragma('dart2js:noInline')
  static EncryptableString getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EncryptableString>(create);
  static EncryptableString? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get value => $_getSZ(0);
  @$pb.TagNumber(1)
  set value($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class EncryptableClaimCredentialExtraParms extends $pb.GeneratedMessage {
  factory EncryptableClaimCredentialExtraParms({
    $core.List<$core.int>? encCredentialInfoVShare,
    $21.VShareBindData? credentialInfoVShareBind,
    $core.String? walletID,
    $19.BPedersenCommit? findCredentialPC,
    $19.BPedersenCommit? newCredentialPC,
    $core.List<$core.int>? encWalletIDVShare,
    $21.VShareBindData? walletIDVShareBind,
    $core.List<$core.int>? encCredentialHashVShare,
    $21.VShareBindData? credentialHashVShareBind,
    $22.EncryptablePedersenCommit? zeroPC,
    $19.BPedersenCommit? claimPC,
  }) {
    final $result = create();
    if (encCredentialInfoVShare != null) {
      $result.encCredentialInfoVShare = encCredentialInfoVShare;
    }
    if (credentialInfoVShareBind != null) {
      $result.credentialInfoVShareBind = credentialInfoVShareBind;
    }
    if (walletID != null) {
      $result.walletID = walletID;
    }
    if (findCredentialPC != null) {
      $result.findCredentialPC = findCredentialPC;
    }
    if (newCredentialPC != null) {
      $result.newCredentialPC = newCredentialPC;
    }
    if (encWalletIDVShare != null) {
      $result.encWalletIDVShare = encWalletIDVShare;
    }
    if (walletIDVShareBind != null) {
      $result.walletIDVShareBind = walletIDVShareBind;
    }
    if (encCredentialHashVShare != null) {
      $result.encCredentialHashVShare = encCredentialHashVShare;
    }
    if (credentialHashVShareBind != null) {
      $result.credentialHashVShareBind = credentialHashVShareBind;
    }
    if (zeroPC != null) {
      $result.zeroPC = zeroPC;
    }
    if (claimPC != null) {
      $result.claimPC = claimPC;
    }
    return $result;
  }
  EncryptableClaimCredentialExtraParms._() : super();
  factory EncryptableClaimCredentialExtraParms.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EncryptableClaimCredentialExtraParms.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EncryptableClaimCredentialExtraParms', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'EncCredentialInfoVShare', $pb.PbFieldType.OY, protoName: 'EncCredentialInfoVShare')
    ..aOM<$21.VShareBindData>(2, _omitFieldNames ? '' : 'CredentialInfoVShareBind', protoName: 'CredentialInfoVShareBind', subBuilder: $21.VShareBindData.create)
    ..aOS(3, _omitFieldNames ? '' : 'WalletID', protoName: 'WalletID')
    ..aOM<$19.BPedersenCommit>(4, _omitFieldNames ? '' : 'FindCredentialPC', protoName: 'FindCredentialPC', subBuilder: $19.BPedersenCommit.create)
    ..aOM<$19.BPedersenCommit>(5, _omitFieldNames ? '' : 'NewCredentialPC', protoName: 'NewCredentialPC', subBuilder: $19.BPedersenCommit.create)
    ..a<$core.List<$core.int>>(6, _omitFieldNames ? '' : 'EncWalletIDVShare', $pb.PbFieldType.OY, protoName: 'EncWalletIDVShare')
    ..aOM<$21.VShareBindData>(7, _omitFieldNames ? '' : 'WalletIDVShareBind', protoName: 'WalletIDVShareBind', subBuilder: $21.VShareBindData.create)
    ..a<$core.List<$core.int>>(8, _omitFieldNames ? '' : 'EncCredentialHashVShare', $pb.PbFieldType.OY, protoName: 'EncCredentialHashVShare')
    ..aOM<$21.VShareBindData>(9, _omitFieldNames ? '' : 'CredentialHashVShareBind', protoName: 'CredentialHashVShareBind', subBuilder: $21.VShareBindData.create)
    ..aOM<$22.EncryptablePedersenCommit>(10, _omitFieldNames ? '' : 'ZeroPC', protoName: 'ZeroPC', subBuilder: $22.EncryptablePedersenCommit.create)
    ..aOM<$19.BPedersenCommit>(11, _omitFieldNames ? '' : 'ClaimPC', protoName: 'ClaimPC', subBuilder: $19.BPedersenCommit.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EncryptableClaimCredentialExtraParms clone() => EncryptableClaimCredentialExtraParms()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EncryptableClaimCredentialExtraParms copyWith(void Function(EncryptableClaimCredentialExtraParms) updates) => super.copyWith((message) => updates(message as EncryptableClaimCredentialExtraParms)) as EncryptableClaimCredentialExtraParms;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EncryptableClaimCredentialExtraParms create() => EncryptableClaimCredentialExtraParms._();
  EncryptableClaimCredentialExtraParms createEmptyInstance() => create();
  static $pb.PbList<EncryptableClaimCredentialExtraParms> createRepeated() => $pb.PbList<EncryptableClaimCredentialExtraParms>();
  @$core.pragma('dart2js:noInline')
  static EncryptableClaimCredentialExtraParms getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EncryptableClaimCredentialExtraParms>(create);
  static EncryptableClaimCredentialExtraParms? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get encCredentialInfoVShare => $_getN(0);
  @$pb.TagNumber(1)
  set encCredentialInfoVShare($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEncCredentialInfoVShare() => $_has(0);
  @$pb.TagNumber(1)
  void clearEncCredentialInfoVShare() => clearField(1);

  @$pb.TagNumber(2)
  $21.VShareBindData get credentialInfoVShareBind => $_getN(1);
  @$pb.TagNumber(2)
  set credentialInfoVShareBind($21.VShareBindData v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCredentialInfoVShareBind() => $_has(1);
  @$pb.TagNumber(2)
  void clearCredentialInfoVShareBind() => clearField(2);
  @$pb.TagNumber(2)
  $21.VShareBindData ensureCredentialInfoVShareBind() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get walletID => $_getSZ(2);
  @$pb.TagNumber(3)
  set walletID($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWalletID() => $_has(2);
  @$pb.TagNumber(3)
  void clearWalletID() => clearField(3);

  @$pb.TagNumber(4)
  $19.BPedersenCommit get findCredentialPC => $_getN(3);
  @$pb.TagNumber(4)
  set findCredentialPC($19.BPedersenCommit v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasFindCredentialPC() => $_has(3);
  @$pb.TagNumber(4)
  void clearFindCredentialPC() => clearField(4);
  @$pb.TagNumber(4)
  $19.BPedersenCommit ensureFindCredentialPC() => $_ensure(3);

  @$pb.TagNumber(5)
  $19.BPedersenCommit get newCredentialPC => $_getN(4);
  @$pb.TagNumber(5)
  set newCredentialPC($19.BPedersenCommit v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasNewCredentialPC() => $_has(4);
  @$pb.TagNumber(5)
  void clearNewCredentialPC() => clearField(5);
  @$pb.TagNumber(5)
  $19.BPedersenCommit ensureNewCredentialPC() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.List<$core.int> get encWalletIDVShare => $_getN(5);
  @$pb.TagNumber(6)
  set encWalletIDVShare($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasEncWalletIDVShare() => $_has(5);
  @$pb.TagNumber(6)
  void clearEncWalletIDVShare() => clearField(6);

  @$pb.TagNumber(7)
  $21.VShareBindData get walletIDVShareBind => $_getN(6);
  @$pb.TagNumber(7)
  set walletIDVShareBind($21.VShareBindData v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasWalletIDVShareBind() => $_has(6);
  @$pb.TagNumber(7)
  void clearWalletIDVShareBind() => clearField(7);
  @$pb.TagNumber(7)
  $21.VShareBindData ensureWalletIDVShareBind() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.List<$core.int> get encCredentialHashVShare => $_getN(7);
  @$pb.TagNumber(8)
  set encCredentialHashVShare($core.List<$core.int> v) { $_setBytes(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasEncCredentialHashVShare() => $_has(7);
  @$pb.TagNumber(8)
  void clearEncCredentialHashVShare() => clearField(8);

  @$pb.TagNumber(9)
  $21.VShareBindData get credentialHashVShareBind => $_getN(8);
  @$pb.TagNumber(9)
  set credentialHashVShareBind($21.VShareBindData v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasCredentialHashVShareBind() => $_has(8);
  @$pb.TagNumber(9)
  void clearCredentialHashVShareBind() => clearField(9);
  @$pb.TagNumber(9)
  $21.VShareBindData ensureCredentialHashVShareBind() => $_ensure(8);

  @$pb.TagNumber(10)
  $22.EncryptablePedersenCommit get zeroPC => $_getN(9);
  @$pb.TagNumber(10)
  set zeroPC($22.EncryptablePedersenCommit v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasZeroPC() => $_has(9);
  @$pb.TagNumber(10)
  void clearZeroPC() => clearField(10);
  @$pb.TagNumber(10)
  $22.EncryptablePedersenCommit ensureZeroPC() => $_ensure(9);

  @$pb.TagNumber(11)
  $19.BPedersenCommit get claimPC => $_getN(10);
  @$pb.TagNumber(11)
  set claimPC($19.BPedersenCommit v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasClaimPC() => $_has(10);
  @$pb.TagNumber(11)
  void clearClaimPC() => clearField(11);
  @$pb.TagNumber(11)
  $19.BPedersenCommit ensureClaimPC() => $_ensure(10);
}

class EncryptableAuthorizedSignatory extends $pb.GeneratedMessage {
  factory EncryptableAuthorizedSignatory({
    $core.String? nonce,
    $core.Iterable<$core.String>? walletID,
  }) {
    final $result = create();
    if (nonce != null) {
      $result.nonce = nonce;
    }
    if (walletID != null) {
      $result.walletID.addAll(walletID);
    }
    return $result;
  }
  EncryptableAuthorizedSignatory._() : super();
  factory EncryptableAuthorizedSignatory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EncryptableAuthorizedSignatory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EncryptableAuthorizedSignatory', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'Nonce', protoName: 'Nonce')
    ..pPS(2, _omitFieldNames ? '' : 'WalletID', protoName: 'WalletID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EncryptableAuthorizedSignatory clone() => EncryptableAuthorizedSignatory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EncryptableAuthorizedSignatory copyWith(void Function(EncryptableAuthorizedSignatory) updates) => super.copyWith((message) => updates(message as EncryptableAuthorizedSignatory)) as EncryptableAuthorizedSignatory;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EncryptableAuthorizedSignatory create() => EncryptableAuthorizedSignatory._();
  EncryptableAuthorizedSignatory createEmptyInstance() => create();
  static $pb.PbList<EncryptableAuthorizedSignatory> createRepeated() => $pb.PbList<EncryptableAuthorizedSignatory>();
  @$core.pragma('dart2js:noInline')
  static EncryptableAuthorizedSignatory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EncryptableAuthorizedSignatory>(create);
  static EncryptableAuthorizedSignatory? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nonce => $_getSZ(0);
  @$pb.TagNumber(1)
  set nonce($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNonce() => $_has(0);
  @$pb.TagNumber(1)
  void clearNonce() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get walletID => $_getList(1);
}

class EncryptableSignatory extends $pb.GeneratedMessage {
  factory EncryptableSignatory({
    $core.String? nonce,
    $core.String? email,
    $core.String? phoneNumber,
  }) {
    final $result = create();
    if (nonce != null) {
      $result.nonce = nonce;
    }
    if (email != null) {
      $result.email = email;
    }
    if (phoneNumber != null) {
      $result.phoneNumber = phoneNumber;
    }
    return $result;
  }
  EncryptableSignatory._() : super();
  factory EncryptableSignatory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EncryptableSignatory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EncryptableSignatory', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'Nonce', protoName: 'Nonce')
    ..aOS(2, _omitFieldNames ? '' : 'Email', protoName: 'Email')
    ..aOS(3, _omitFieldNames ? '' : 'PhoneNumber', protoName: 'PhoneNumber')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EncryptableSignatory clone() => EncryptableSignatory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EncryptableSignatory copyWith(void Function(EncryptableSignatory) updates) => super.copyWith((message) => updates(message as EncryptableSignatory)) as EncryptableSignatory;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EncryptableSignatory create() => EncryptableSignatory._();
  EncryptableSignatory createEmptyInstance() => create();
  static $pb.PbList<EncryptableSignatory> createRepeated() => $pb.PbList<EncryptableSignatory>();
  @$core.pragma('dart2js:noInline')
  static EncryptableSignatory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EncryptableSignatory>(create);
  static EncryptableSignatory? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nonce => $_getSZ(0);
  @$pb.TagNumber(1)
  set nonce($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNonce() => $_has(0);
  @$pb.TagNumber(1)
  void clearNonce() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get phoneNumber => $_getSZ(2);
  @$pb.TagNumber(3)
  set phoneNumber($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPhoneNumber() => $_has(2);
  @$pb.TagNumber(3)
  void clearPhoneNumber() => clearField(3);
}

class EncryptableWalletAmount extends $pb.GeneratedMessage {
  factory EncryptableWalletAmount({
    $core.String? nonce,
    $core.String? transactionID,
    $22.EncryptablePedersenCommit? pedersenCommit,
    $core.String? note,
    $core.String? requiredSenderPIN,
    $core.String? requiredSenderFirstName,
    $core.String? requiredSenderMiddleName,
    $core.String? requiredSenderLastName,
  }) {
    final $result = create();
    if (nonce != null) {
      $result.nonce = nonce;
    }
    if (transactionID != null) {
      $result.transactionID = transactionID;
    }
    if (pedersenCommit != null) {
      $result.pedersenCommit = pedersenCommit;
    }
    if (note != null) {
      $result.note = note;
    }
    if (requiredSenderPIN != null) {
      $result.requiredSenderPIN = requiredSenderPIN;
    }
    if (requiredSenderFirstName != null) {
      $result.requiredSenderFirstName = requiredSenderFirstName;
    }
    if (requiredSenderMiddleName != null) {
      $result.requiredSenderMiddleName = requiredSenderMiddleName;
    }
    if (requiredSenderLastName != null) {
      $result.requiredSenderLastName = requiredSenderLastName;
    }
    return $result;
  }
  EncryptableWalletAmount._() : super();
  factory EncryptableWalletAmount.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EncryptableWalletAmount.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EncryptableWalletAmount', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'Nonce', protoName: 'Nonce')
    ..aOS(2, _omitFieldNames ? '' : 'TransactionID', protoName: 'TransactionID')
    ..aOM<$22.EncryptablePedersenCommit>(3, _omitFieldNames ? '' : 'PedersenCommit', protoName: 'PedersenCommit', subBuilder: $22.EncryptablePedersenCommit.create)
    ..aOS(4, _omitFieldNames ? '' : 'Note', protoName: 'Note')
    ..aOS(5, _omitFieldNames ? '' : 'RequiredSenderPIN', protoName: 'RequiredSenderPIN')
    ..aOS(6, _omitFieldNames ? '' : 'RequiredSenderFirstName', protoName: 'RequiredSenderFirstName')
    ..aOS(7, _omitFieldNames ? '' : 'RequiredSenderMiddleName', protoName: 'RequiredSenderMiddleName')
    ..aOS(8, _omitFieldNames ? '' : 'RequiredSenderLastName', protoName: 'RequiredSenderLastName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EncryptableWalletAmount clone() => EncryptableWalletAmount()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EncryptableWalletAmount copyWith(void Function(EncryptableWalletAmount) updates) => super.copyWith((message) => updates(message as EncryptableWalletAmount)) as EncryptableWalletAmount;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EncryptableWalletAmount create() => EncryptableWalletAmount._();
  EncryptableWalletAmount createEmptyInstance() => create();
  static $pb.PbList<EncryptableWalletAmount> createRepeated() => $pb.PbList<EncryptableWalletAmount>();
  @$core.pragma('dart2js:noInline')
  static EncryptableWalletAmount getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EncryptableWalletAmount>(create);
  static EncryptableWalletAmount? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nonce => $_getSZ(0);
  @$pb.TagNumber(1)
  set nonce($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNonce() => $_has(0);
  @$pb.TagNumber(1)
  void clearNonce() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get transactionID => $_getSZ(1);
  @$pb.TagNumber(2)
  set transactionID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTransactionID() => $_has(1);
  @$pb.TagNumber(2)
  void clearTransactionID() => clearField(2);

  @$pb.TagNumber(3)
  $22.EncryptablePedersenCommit get pedersenCommit => $_getN(2);
  @$pb.TagNumber(3)
  set pedersenCommit($22.EncryptablePedersenCommit v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPedersenCommit() => $_has(2);
  @$pb.TagNumber(3)
  void clearPedersenCommit() => clearField(3);
  @$pb.TagNumber(3)
  $22.EncryptablePedersenCommit ensurePedersenCommit() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get note => $_getSZ(3);
  @$pb.TagNumber(4)
  set note($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNote() => $_has(3);
  @$pb.TagNumber(4)
  void clearNote() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get requiredSenderPIN => $_getSZ(4);
  @$pb.TagNumber(5)
  set requiredSenderPIN($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRequiredSenderPIN() => $_has(4);
  @$pb.TagNumber(5)
  void clearRequiredSenderPIN() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get requiredSenderFirstName => $_getSZ(5);
  @$pb.TagNumber(6)
  set requiredSenderFirstName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRequiredSenderFirstName() => $_has(5);
  @$pb.TagNumber(6)
  void clearRequiredSenderFirstName() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get requiredSenderMiddleName => $_getSZ(6);
  @$pb.TagNumber(7)
  set requiredSenderMiddleName($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasRequiredSenderMiddleName() => $_has(6);
  @$pb.TagNumber(7)
  void clearRequiredSenderMiddleName() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get requiredSenderLastName => $_getSZ(7);
  @$pb.TagNumber(8)
  set requiredSenderLastName($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasRequiredSenderLastName() => $_has(7);
  @$pb.TagNumber(8)
  void clearRequiredSenderLastName() => clearField(8);
}

class EncryptablePersonalInfoDetails extends $pb.GeneratedMessage {
  factory EncryptablePersonalInfoDetails({
    $core.String? firstName,
    $core.String? middleName,
    $core.String? lastName,
    $core.String? birthdate,
    $core.String? citizenship,
    $core.String? residency,
    $core.String? gender,
  }) {
    final $result = create();
    if (firstName != null) {
      $result.firstName = firstName;
    }
    if (middleName != null) {
      $result.middleName = middleName;
    }
    if (lastName != null) {
      $result.lastName = lastName;
    }
    if (birthdate != null) {
      $result.birthdate = birthdate;
    }
    if (citizenship != null) {
      $result.citizenship = citizenship;
    }
    if (residency != null) {
      $result.residency = residency;
    }
    if (gender != null) {
      $result.gender = gender;
    }
    return $result;
  }
  EncryptablePersonalInfoDetails._() : super();
  factory EncryptablePersonalInfoDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EncryptablePersonalInfoDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EncryptablePersonalInfoDetails', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'FirstName', protoName: 'FirstName')
    ..aOS(2, _omitFieldNames ? '' : 'MiddleName', protoName: 'MiddleName')
    ..aOS(3, _omitFieldNames ? '' : 'LastName', protoName: 'LastName')
    ..aOS(4, _omitFieldNames ? '' : 'Birthdate', protoName: 'Birthdate')
    ..aOS(5, _omitFieldNames ? '' : 'Citizenship', protoName: 'Citizenship')
    ..aOS(6, _omitFieldNames ? '' : 'Residency', protoName: 'Residency')
    ..aOS(7, _omitFieldNames ? '' : 'Gender', protoName: 'Gender')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EncryptablePersonalInfoDetails clone() => EncryptablePersonalInfoDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EncryptablePersonalInfoDetails copyWith(void Function(EncryptablePersonalInfoDetails) updates) => super.copyWith((message) => updates(message as EncryptablePersonalInfoDetails)) as EncryptablePersonalInfoDetails;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EncryptablePersonalInfoDetails create() => EncryptablePersonalInfoDetails._();
  EncryptablePersonalInfoDetails createEmptyInstance() => create();
  static $pb.PbList<EncryptablePersonalInfoDetails> createRepeated() => $pb.PbList<EncryptablePersonalInfoDetails>();
  @$core.pragma('dart2js:noInline')
  static EncryptablePersonalInfoDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EncryptablePersonalInfoDetails>(create);
  static EncryptablePersonalInfoDetails? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get firstName => $_getSZ(0);
  @$pb.TagNumber(1)
  set firstName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFirstName() => $_has(0);
  @$pb.TagNumber(1)
  void clearFirstName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get middleName => $_getSZ(1);
  @$pb.TagNumber(2)
  set middleName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMiddleName() => $_has(1);
  @$pb.TagNumber(2)
  void clearMiddleName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get lastName => $_getSZ(2);
  @$pb.TagNumber(3)
  set lastName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLastName() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get birthdate => $_getSZ(3);
  @$pb.TagNumber(4)
  set birthdate($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBirthdate() => $_has(3);
  @$pb.TagNumber(4)
  void clearBirthdate() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get citizenship => $_getSZ(4);
  @$pb.TagNumber(5)
  set citizenship($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCitizenship() => $_has(4);
  @$pb.TagNumber(5)
  void clearCitizenship() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get residency => $_getSZ(5);
  @$pb.TagNumber(6)
  set residency($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasResidency() => $_has(5);
  @$pb.TagNumber(6)
  void clearResidency() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get gender => $_getSZ(6);
  @$pb.TagNumber(7)
  set gender($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasGender() => $_has(6);
  @$pb.TagNumber(7)
  void clearGender() => clearField(7);
}

class EncryptablePersonalInfo extends $pb.GeneratedMessage {
  factory EncryptablePersonalInfo({
    $core.String? nonce,
    $core.String? pIN,
    EncryptablePersonalInfoDetails? details,
  }) {
    final $result = create();
    if (nonce != null) {
      $result.nonce = nonce;
    }
    if (pIN != null) {
      $result.pIN = pIN;
    }
    if (details != null) {
      $result.details = details;
    }
    return $result;
  }
  EncryptablePersonalInfo._() : super();
  factory EncryptablePersonalInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EncryptablePersonalInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EncryptablePersonalInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'Nonce', protoName: 'Nonce')
    ..aOS(2, _omitFieldNames ? '' : 'PIN', protoName: 'PIN')
    ..aOM<EncryptablePersonalInfoDetails>(3, _omitFieldNames ? '' : 'Details', protoName: 'Details', subBuilder: EncryptablePersonalInfoDetails.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EncryptablePersonalInfo clone() => EncryptablePersonalInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EncryptablePersonalInfo copyWith(void Function(EncryptablePersonalInfo) updates) => super.copyWith((message) => updates(message as EncryptablePersonalInfo)) as EncryptablePersonalInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EncryptablePersonalInfo create() => EncryptablePersonalInfo._();
  EncryptablePersonalInfo createEmptyInstance() => create();
  static $pb.PbList<EncryptablePersonalInfo> createRepeated() => $pb.PbList<EncryptablePersonalInfo>();
  @$core.pragma('dart2js:noInline')
  static EncryptablePersonalInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EncryptablePersonalInfo>(create);
  static EncryptablePersonalInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nonce => $_getSZ(0);
  @$pb.TagNumber(1)
  set nonce($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNonce() => $_has(0);
  @$pb.TagNumber(1)
  void clearNonce() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get pIN => $_getSZ(1);
  @$pb.TagNumber(2)
  set pIN($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPIN() => $_has(1);
  @$pb.TagNumber(2)
  void clearPIN() => clearField(2);

  @$pb.TagNumber(3)
  EncryptablePersonalInfoDetails get details => $_getN(2);
  @$pb.TagNumber(3)
  set details(EncryptablePersonalInfoDetails v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDetails() => $_has(2);
  @$pb.TagNumber(3)
  void clearDetails() => clearField(3);
  @$pb.TagNumber(3)
  EncryptablePersonalInfoDetails ensureDetails() => $_ensure(2);
}

class EncryptableSingleContactInfoDetails extends $pb.GeneratedMessage {
  factory EncryptableSingleContactInfoDetails({
    $core.String? contact,
  }) {
    final $result = create();
    if (contact != null) {
      $result.contact = contact;
    }
    return $result;
  }
  EncryptableSingleContactInfoDetails._() : super();
  factory EncryptableSingleContactInfoDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EncryptableSingleContactInfoDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EncryptableSingleContactInfoDetails', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'Contact', protoName: 'Contact')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EncryptableSingleContactInfoDetails clone() => EncryptableSingleContactInfoDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EncryptableSingleContactInfoDetails copyWith(void Function(EncryptableSingleContactInfoDetails) updates) => super.copyWith((message) => updates(message as EncryptableSingleContactInfoDetails)) as EncryptableSingleContactInfoDetails;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EncryptableSingleContactInfoDetails create() => EncryptableSingleContactInfoDetails._();
  EncryptableSingleContactInfoDetails createEmptyInstance() => create();
  static $pb.PbList<EncryptableSingleContactInfoDetails> createRepeated() => $pb.PbList<EncryptableSingleContactInfoDetails>();
  @$core.pragma('dart2js:noInline')
  static EncryptableSingleContactInfoDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EncryptableSingleContactInfoDetails>(create);
  static EncryptableSingleContactInfoDetails? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contact => $_getSZ(0);
  @$pb.TagNumber(1)
  set contact($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasContact() => $_has(0);
  @$pb.TagNumber(1)
  void clearContact() => clearField(1);
}

class EncryptableSingleContactInfo extends $pb.GeneratedMessage {
  factory EncryptableSingleContactInfo({
    $core.String? nonce,
    $core.String? pIN,
    EncryptableSingleContactInfoDetails? details,
  }) {
    final $result = create();
    if (nonce != null) {
      $result.nonce = nonce;
    }
    if (pIN != null) {
      $result.pIN = pIN;
    }
    if (details != null) {
      $result.details = details;
    }
    return $result;
  }
  EncryptableSingleContactInfo._() : super();
  factory EncryptableSingleContactInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EncryptableSingleContactInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EncryptableSingleContactInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'Nonce', protoName: 'Nonce')
    ..aOS(2, _omitFieldNames ? '' : 'PIN', protoName: 'PIN')
    ..aOM<EncryptableSingleContactInfoDetails>(3, _omitFieldNames ? '' : 'Details', protoName: 'Details', subBuilder: EncryptableSingleContactInfoDetails.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EncryptableSingleContactInfo clone() => EncryptableSingleContactInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EncryptableSingleContactInfo copyWith(void Function(EncryptableSingleContactInfo) updates) => super.copyWith((message) => updates(message as EncryptableSingleContactInfo)) as EncryptableSingleContactInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EncryptableSingleContactInfo create() => EncryptableSingleContactInfo._();
  EncryptableSingleContactInfo createEmptyInstance() => create();
  static $pb.PbList<EncryptableSingleContactInfo> createRepeated() => $pb.PbList<EncryptableSingleContactInfo>();
  @$core.pragma('dart2js:noInline')
  static EncryptableSingleContactInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EncryptableSingleContactInfo>(create);
  static EncryptableSingleContactInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nonce => $_getSZ(0);
  @$pb.TagNumber(1)
  set nonce($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNonce() => $_has(0);
  @$pb.TagNumber(1)
  void clearNonce() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get pIN => $_getSZ(1);
  @$pb.TagNumber(2)
  set pIN($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPIN() => $_has(1);
  @$pb.TagNumber(2)
  void clearPIN() => clearField(2);

  @$pb.TagNumber(3)
  EncryptableSingleContactInfoDetails get details => $_getN(2);
  @$pb.TagNumber(3)
  set details(EncryptableSingleContactInfoDetails v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDetails() => $_has(2);
  @$pb.TagNumber(3)
  void clearDetails() => clearField(3);
  @$pb.TagNumber(3)
  EncryptableSingleContactInfoDetails ensureDetails() => $_ensure(2);
}

class EncryptableValidatedCredential extends $pb.GeneratedMessage {
  factory EncryptableValidatedCredential({
    $core.String? credentialType,
    $core.String? pIN,
    $19.BPedersenCommit? credentialPC,
  }) {
    final $result = create();
    if (credentialType != null) {
      $result.credentialType = credentialType;
    }
    if (pIN != null) {
      $result.pIN = pIN;
    }
    if (credentialPC != null) {
      $result.credentialPC = credentialPC;
    }
    return $result;
  }
  EncryptableValidatedCredential._() : super();
  factory EncryptableValidatedCredential.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EncryptableValidatedCredential.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EncryptableValidatedCredential', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'CredentialType', protoName: 'CredentialType')
    ..aOS(2, _omitFieldNames ? '' : 'PIN', protoName: 'PIN')
    ..aOM<$19.BPedersenCommit>(3, _omitFieldNames ? '' : 'CredentialPC', protoName: 'CredentialPC', subBuilder: $19.BPedersenCommit.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EncryptableValidatedCredential clone() => EncryptableValidatedCredential()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EncryptableValidatedCredential copyWith(void Function(EncryptableValidatedCredential) updates) => super.copyWith((message) => updates(message as EncryptableValidatedCredential)) as EncryptableValidatedCredential;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EncryptableValidatedCredential create() => EncryptableValidatedCredential._();
  EncryptableValidatedCredential createEmptyInstance() => create();
  static $pb.PbList<EncryptableValidatedCredential> createRepeated() => $pb.PbList<EncryptableValidatedCredential>();
  @$core.pragma('dart2js:noInline')
  static EncryptableValidatedCredential getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EncryptableValidatedCredential>(create);
  static EncryptableValidatedCredential? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get credentialType => $_getSZ(0);
  @$pb.TagNumber(1)
  set credentialType($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCredentialType() => $_has(0);
  @$pb.TagNumber(1)
  void clearCredentialType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get pIN => $_getSZ(1);
  @$pb.TagNumber(2)
  set pIN($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPIN() => $_has(1);
  @$pb.TagNumber(2)
  void clearPIN() => clearField(2);

  @$pb.TagNumber(3)
  $19.BPedersenCommit get credentialPC => $_getN(2);
  @$pb.TagNumber(3)
  set credentialPC($19.BPedersenCommit v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCredentialPC() => $_has(2);
  @$pb.TagNumber(3)
  void clearCredentialPC() => clearField(3);
  @$pb.TagNumber(3)
  $19.BPedersenCommit ensureCredentialPC() => $_ensure(2);
}

class EncryptableValidatedCredentials extends $pb.GeneratedMessage {
  factory EncryptableValidatedCredentials({
    $core.Iterable<EncryptableValidatedCredential>? credentials,
  }) {
    final $result = create();
    if (credentials != null) {
      $result.credentials.addAll(credentials);
    }
    return $result;
  }
  EncryptableValidatedCredentials._() : super();
  factory EncryptableValidatedCredentials.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EncryptableValidatedCredentials.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EncryptableValidatedCredentials', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..pc<EncryptableValidatedCredential>(1, _omitFieldNames ? '' : 'Credentials', $pb.PbFieldType.PM, protoName: 'Credentials', subBuilder: EncryptableValidatedCredential.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EncryptableValidatedCredentials clone() => EncryptableValidatedCredentials()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EncryptableValidatedCredentials copyWith(void Function(EncryptableValidatedCredentials) updates) => super.copyWith((message) => updates(message as EncryptableValidatedCredentials)) as EncryptableValidatedCredentials;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EncryptableValidatedCredentials create() => EncryptableValidatedCredentials._();
  EncryptableValidatedCredentials createEmptyInstance() => create();
  static $pb.PbList<EncryptableValidatedCredentials> createRepeated() => $pb.PbList<EncryptableValidatedCredentials>();
  @$core.pragma('dart2js:noInline')
  static EncryptableValidatedCredentials getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EncryptableValidatedCredentials>(create);
  static EncryptableValidatedCredentials? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<EncryptableValidatedCredential> get credentials => $_getList(0);
}

class EncryptableCreateWalletEWalletIDExtraParms extends $pb.GeneratedMessage {
  factory EncryptableCreateWalletEWalletIDExtraParms({
    $19.BPedersenCommit? proofPC,
  }) {
    final $result = create();
    if (proofPC != null) {
      $result.proofPC = proofPC;
    }
    return $result;
  }
  EncryptableCreateWalletEWalletIDExtraParms._() : super();
  factory EncryptableCreateWalletEWalletIDExtraParms.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EncryptableCreateWalletEWalletIDExtraParms.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EncryptableCreateWalletEWalletIDExtraParms', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOM<$19.BPedersenCommit>(1, _omitFieldNames ? '' : 'ProofPC', protoName: 'ProofPC', subBuilder: $19.BPedersenCommit.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EncryptableCreateWalletEWalletIDExtraParms clone() => EncryptableCreateWalletEWalletIDExtraParms()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EncryptableCreateWalletEWalletIDExtraParms copyWith(void Function(EncryptableCreateWalletEWalletIDExtraParms) updates) => super.copyWith((message) => updates(message as EncryptableCreateWalletEWalletIDExtraParms)) as EncryptableCreateWalletEWalletIDExtraParms;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EncryptableCreateWalletEWalletIDExtraParms create() => EncryptableCreateWalletEWalletIDExtraParms._();
  EncryptableCreateWalletEWalletIDExtraParms createEmptyInstance() => create();
  static $pb.PbList<EncryptableCreateWalletEWalletIDExtraParms> createRepeated() => $pb.PbList<EncryptableCreateWalletEWalletIDExtraParms>();
  @$core.pragma('dart2js:noInline')
  static EncryptableCreateWalletEWalletIDExtraParms getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EncryptableCreateWalletEWalletIDExtraParms>(create);
  static EncryptableCreateWalletEWalletIDExtraParms? _defaultInstance;

  @$pb.TagNumber(1)
  $19.BPedersenCommit get proofPC => $_getN(0);
  @$pb.TagNumber(1)
  set proofPC($19.BPedersenCommit v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasProofPC() => $_has(0);
  @$pb.TagNumber(1)
  void clearProofPC() => clearField(1);
  @$pb.TagNumber(1)
  $19.BPedersenCommit ensureProofPC() => $_ensure(0);
}

class EncryptableCreateWalletEWalletID extends $pb.GeneratedMessage {
  factory EncryptableCreateWalletEWalletID({
    $core.String? nonce,
    $core.String? walletID,
    EncryptableCreateWalletEWalletIDExtraParms? extraParms,
  }) {
    final $result = create();
    if (nonce != null) {
      $result.nonce = nonce;
    }
    if (walletID != null) {
      $result.walletID = walletID;
    }
    if (extraParms != null) {
      $result.extraParms = extraParms;
    }
    return $result;
  }
  EncryptableCreateWalletEWalletID._() : super();
  factory EncryptableCreateWalletEWalletID.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EncryptableCreateWalletEWalletID.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EncryptableCreateWalletEWalletID', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'Nonce', protoName: 'Nonce')
    ..aOS(2, _omitFieldNames ? '' : 'WalletID', protoName: 'WalletID')
    ..aOM<EncryptableCreateWalletEWalletIDExtraParms>(3, _omitFieldNames ? '' : 'ExtraParms', protoName: 'ExtraParms', subBuilder: EncryptableCreateWalletEWalletIDExtraParms.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EncryptableCreateWalletEWalletID clone() => EncryptableCreateWalletEWalletID()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EncryptableCreateWalletEWalletID copyWith(void Function(EncryptableCreateWalletEWalletID) updates) => super.copyWith((message) => updates(message as EncryptableCreateWalletEWalletID)) as EncryptableCreateWalletEWalletID;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EncryptableCreateWalletEWalletID create() => EncryptableCreateWalletEWalletID._();
  EncryptableCreateWalletEWalletID createEmptyInstance() => create();
  static $pb.PbList<EncryptableCreateWalletEWalletID> createRepeated() => $pb.PbList<EncryptableCreateWalletEWalletID>();
  @$core.pragma('dart2js:noInline')
  static EncryptableCreateWalletEWalletID getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EncryptableCreateWalletEWalletID>(create);
  static EncryptableCreateWalletEWalletID? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nonce => $_getSZ(0);
  @$pb.TagNumber(1)
  set nonce($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNonce() => $_has(0);
  @$pb.TagNumber(1)
  void clearNonce() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get walletID => $_getSZ(1);
  @$pb.TagNumber(2)
  set walletID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWalletID() => $_has(1);
  @$pb.TagNumber(2)
  void clearWalletID() => clearField(2);

  @$pb.TagNumber(3)
  EncryptableCreateWalletEWalletIDExtraParms get extraParms => $_getN(2);
  @$pb.TagNumber(3)
  set extraParms(EncryptableCreateWalletEWalletIDExtraParms v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasExtraParms() => $_has(2);
  @$pb.TagNumber(3)
  void clearExtraParms() => clearField(3);
  @$pb.TagNumber(3)
  EncryptableCreateWalletEWalletIDExtraParms ensureExtraParms() => $_ensure(2);
}

class EncryptableCreateWallet extends $pb.GeneratedMessage {
  factory EncryptableCreateWallet({
    EncryptableCreateWalletEWalletID? dstEWalletID,
  }) {
    final $result = create();
    if (dstEWalletID != null) {
      $result.dstEWalletID = dstEWalletID;
    }
    return $result;
  }
  EncryptableCreateWallet._() : super();
  factory EncryptableCreateWallet.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EncryptableCreateWallet.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EncryptableCreateWallet', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOM<EncryptableCreateWalletEWalletID>(1, _omitFieldNames ? '' : 'DstEWalletID', protoName: 'DstEWalletID', subBuilder: EncryptableCreateWalletEWalletID.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EncryptableCreateWallet clone() => EncryptableCreateWallet()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EncryptableCreateWallet copyWith(void Function(EncryptableCreateWallet) updates) => super.copyWith((message) => updates(message as EncryptableCreateWallet)) as EncryptableCreateWallet;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EncryptableCreateWallet create() => EncryptableCreateWallet._();
  EncryptableCreateWallet createEmptyInstance() => create();
  static $pb.PbList<EncryptableCreateWallet> createRepeated() => $pb.PbList<EncryptableCreateWallet>();
  @$core.pragma('dart2js:noInline')
  static EncryptableCreateWallet getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EncryptableCreateWallet>(create);
  static EncryptableCreateWallet? _defaultInstance;

  @$pb.TagNumber(1)
  EncryptableCreateWalletEWalletID get dstEWalletID => $_getN(0);
  @$pb.TagNumber(1)
  set dstEWalletID(EncryptableCreateWalletEWalletID v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDstEWalletID() => $_has(0);
  @$pb.TagNumber(1)
  void clearDstEWalletID() => clearField(1);
  @$pb.TagNumber(1)
  EncryptableCreateWalletEWalletID ensureDstEWalletID() => $_ensure(0);
}

class EncryptableTransferFundsEWalletIDExtraParms extends $pb.GeneratedMessage {
  factory EncryptableTransferFundsEWalletIDExtraParms({
    $19.BPedersenCommit? acceptPasswordPC,
    $core.List<$core.int>? matchFirstNameHashHex,
    $core.List<$core.int>? matchMiddleNameHashHex,
    $core.List<$core.int>? matchLastNameHashHex,
    $19.BPedersenCommit? requiredSenderFirstNameCheckPC,
    $19.BPedersenCommit? requiredSenderFirstNameProofPC,
    $19.BPedersenCommit? requiredSenderMiddleNameCheckPC,
    $19.BPedersenCommit? requiredSenderMiddleNameProofPC,
    $19.BPedersenCommit? requiredSenderLastNameCheckPC,
    $19.BPedersenCommit? requiredSenderLastNameProofPC,
  }) {
    final $result = create();
    if (acceptPasswordPC != null) {
      $result.acceptPasswordPC = acceptPasswordPC;
    }
    if (matchFirstNameHashHex != null) {
      $result.matchFirstNameHashHex = matchFirstNameHashHex;
    }
    if (matchMiddleNameHashHex != null) {
      $result.matchMiddleNameHashHex = matchMiddleNameHashHex;
    }
    if (matchLastNameHashHex != null) {
      $result.matchLastNameHashHex = matchLastNameHashHex;
    }
    if (requiredSenderFirstNameCheckPC != null) {
      $result.requiredSenderFirstNameCheckPC = requiredSenderFirstNameCheckPC;
    }
    if (requiredSenderFirstNameProofPC != null) {
      $result.requiredSenderFirstNameProofPC = requiredSenderFirstNameProofPC;
    }
    if (requiredSenderMiddleNameCheckPC != null) {
      $result.requiredSenderMiddleNameCheckPC = requiredSenderMiddleNameCheckPC;
    }
    if (requiredSenderMiddleNameProofPC != null) {
      $result.requiredSenderMiddleNameProofPC = requiredSenderMiddleNameProofPC;
    }
    if (requiredSenderLastNameCheckPC != null) {
      $result.requiredSenderLastNameCheckPC = requiredSenderLastNameCheckPC;
    }
    if (requiredSenderLastNameProofPC != null) {
      $result.requiredSenderLastNameProofPC = requiredSenderLastNameProofPC;
    }
    return $result;
  }
  EncryptableTransferFundsEWalletIDExtraParms._() : super();
  factory EncryptableTransferFundsEWalletIDExtraParms.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EncryptableTransferFundsEWalletIDExtraParms.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EncryptableTransferFundsEWalletIDExtraParms', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOM<$19.BPedersenCommit>(1, _omitFieldNames ? '' : 'AcceptPasswordPC', protoName: 'AcceptPasswordPC', subBuilder: $19.BPedersenCommit.create)
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'MatchFirstNameHashHex', $pb.PbFieldType.OY, protoName: 'MatchFirstNameHashHex')
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'MatchMiddleNameHashHex', $pb.PbFieldType.OY, protoName: 'MatchMiddleNameHashHex')
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'MatchLastNameHashHex', $pb.PbFieldType.OY, protoName: 'MatchLastNameHashHex')
    ..aOM<$19.BPedersenCommit>(5, _omitFieldNames ? '' : 'RequiredSenderFirstNameCheckPC', protoName: 'RequiredSenderFirstNameCheckPC', subBuilder: $19.BPedersenCommit.create)
    ..aOM<$19.BPedersenCommit>(6, _omitFieldNames ? '' : 'RequiredSenderFirstNameProofPC', protoName: 'RequiredSenderFirstNameProofPC', subBuilder: $19.BPedersenCommit.create)
    ..aOM<$19.BPedersenCommit>(7, _omitFieldNames ? '' : 'RequiredSenderMiddleNameCheckPC', protoName: 'RequiredSenderMiddleNameCheckPC', subBuilder: $19.BPedersenCommit.create)
    ..aOM<$19.BPedersenCommit>(8, _omitFieldNames ? '' : 'RequiredSenderMiddleNameProofPC', protoName: 'RequiredSenderMiddleNameProofPC', subBuilder: $19.BPedersenCommit.create)
    ..aOM<$19.BPedersenCommit>(9, _omitFieldNames ? '' : 'RequiredSenderLastNameCheckPC', protoName: 'RequiredSenderLastNameCheckPC', subBuilder: $19.BPedersenCommit.create)
    ..aOM<$19.BPedersenCommit>(10, _omitFieldNames ? '' : 'RequiredSenderLastNameProofPC', protoName: 'RequiredSenderLastNameProofPC', subBuilder: $19.BPedersenCommit.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EncryptableTransferFundsEWalletIDExtraParms clone() => EncryptableTransferFundsEWalletIDExtraParms()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EncryptableTransferFundsEWalletIDExtraParms copyWith(void Function(EncryptableTransferFundsEWalletIDExtraParms) updates) => super.copyWith((message) => updates(message as EncryptableTransferFundsEWalletIDExtraParms)) as EncryptableTransferFundsEWalletIDExtraParms;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EncryptableTransferFundsEWalletIDExtraParms create() => EncryptableTransferFundsEWalletIDExtraParms._();
  EncryptableTransferFundsEWalletIDExtraParms createEmptyInstance() => create();
  static $pb.PbList<EncryptableTransferFundsEWalletIDExtraParms> createRepeated() => $pb.PbList<EncryptableTransferFundsEWalletIDExtraParms>();
  @$core.pragma('dart2js:noInline')
  static EncryptableTransferFundsEWalletIDExtraParms getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EncryptableTransferFundsEWalletIDExtraParms>(create);
  static EncryptableTransferFundsEWalletIDExtraParms? _defaultInstance;

  @$pb.TagNumber(1)
  $19.BPedersenCommit get acceptPasswordPC => $_getN(0);
  @$pb.TagNumber(1)
  set acceptPasswordPC($19.BPedersenCommit v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAcceptPasswordPC() => $_has(0);
  @$pb.TagNumber(1)
  void clearAcceptPasswordPC() => clearField(1);
  @$pb.TagNumber(1)
  $19.BPedersenCommit ensureAcceptPasswordPC() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get matchFirstNameHashHex => $_getN(1);
  @$pb.TagNumber(2)
  set matchFirstNameHashHex($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMatchFirstNameHashHex() => $_has(1);
  @$pb.TagNumber(2)
  void clearMatchFirstNameHashHex() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get matchMiddleNameHashHex => $_getN(2);
  @$pb.TagNumber(3)
  set matchMiddleNameHashHex($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMatchMiddleNameHashHex() => $_has(2);
  @$pb.TagNumber(3)
  void clearMatchMiddleNameHashHex() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get matchLastNameHashHex => $_getN(3);
  @$pb.TagNumber(4)
  set matchLastNameHashHex($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMatchLastNameHashHex() => $_has(3);
  @$pb.TagNumber(4)
  void clearMatchLastNameHashHex() => clearField(4);

  @$pb.TagNumber(5)
  $19.BPedersenCommit get requiredSenderFirstNameCheckPC => $_getN(4);
  @$pb.TagNumber(5)
  set requiredSenderFirstNameCheckPC($19.BPedersenCommit v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasRequiredSenderFirstNameCheckPC() => $_has(4);
  @$pb.TagNumber(5)
  void clearRequiredSenderFirstNameCheckPC() => clearField(5);
  @$pb.TagNumber(5)
  $19.BPedersenCommit ensureRequiredSenderFirstNameCheckPC() => $_ensure(4);

  @$pb.TagNumber(6)
  $19.BPedersenCommit get requiredSenderFirstNameProofPC => $_getN(5);
  @$pb.TagNumber(6)
  set requiredSenderFirstNameProofPC($19.BPedersenCommit v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasRequiredSenderFirstNameProofPC() => $_has(5);
  @$pb.TagNumber(6)
  void clearRequiredSenderFirstNameProofPC() => clearField(6);
  @$pb.TagNumber(6)
  $19.BPedersenCommit ensureRequiredSenderFirstNameProofPC() => $_ensure(5);

  @$pb.TagNumber(7)
  $19.BPedersenCommit get requiredSenderMiddleNameCheckPC => $_getN(6);
  @$pb.TagNumber(7)
  set requiredSenderMiddleNameCheckPC($19.BPedersenCommit v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasRequiredSenderMiddleNameCheckPC() => $_has(6);
  @$pb.TagNumber(7)
  void clearRequiredSenderMiddleNameCheckPC() => clearField(7);
  @$pb.TagNumber(7)
  $19.BPedersenCommit ensureRequiredSenderMiddleNameCheckPC() => $_ensure(6);

  @$pb.TagNumber(8)
  $19.BPedersenCommit get requiredSenderMiddleNameProofPC => $_getN(7);
  @$pb.TagNumber(8)
  set requiredSenderMiddleNameProofPC($19.BPedersenCommit v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasRequiredSenderMiddleNameProofPC() => $_has(7);
  @$pb.TagNumber(8)
  void clearRequiredSenderMiddleNameProofPC() => clearField(8);
  @$pb.TagNumber(8)
  $19.BPedersenCommit ensureRequiredSenderMiddleNameProofPC() => $_ensure(7);

  @$pb.TagNumber(9)
  $19.BPedersenCommit get requiredSenderLastNameCheckPC => $_getN(8);
  @$pb.TagNumber(9)
  set requiredSenderLastNameCheckPC($19.BPedersenCommit v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasRequiredSenderLastNameCheckPC() => $_has(8);
  @$pb.TagNumber(9)
  void clearRequiredSenderLastNameCheckPC() => clearField(9);
  @$pb.TagNumber(9)
  $19.BPedersenCommit ensureRequiredSenderLastNameCheckPC() => $_ensure(8);

  @$pb.TagNumber(10)
  $19.BPedersenCommit get requiredSenderLastNameProofPC => $_getN(9);
  @$pb.TagNumber(10)
  set requiredSenderLastNameProofPC($19.BPedersenCommit v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasRequiredSenderLastNameProofPC() => $_has(9);
  @$pb.TagNumber(10)
  void clearRequiredSenderLastNameProofPC() => clearField(10);
  @$pb.TagNumber(10)
  $19.BPedersenCommit ensureRequiredSenderLastNameProofPC() => $_ensure(9);
}

class EncryptableTransferFundsEWalletID extends $pb.GeneratedMessage {
  factory EncryptableTransferFundsEWalletID({
    $core.String? nonce,
    $core.String? walletID,
    EncryptableTransferFundsEWalletIDExtraParms? extraParms,
  }) {
    final $result = create();
    if (nonce != null) {
      $result.nonce = nonce;
    }
    if (walletID != null) {
      $result.walletID = walletID;
    }
    if (extraParms != null) {
      $result.extraParms = extraParms;
    }
    return $result;
  }
  EncryptableTransferFundsEWalletID._() : super();
  factory EncryptableTransferFundsEWalletID.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EncryptableTransferFundsEWalletID.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EncryptableTransferFundsEWalletID', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'Nonce', protoName: 'Nonce')
    ..aOS(2, _omitFieldNames ? '' : 'WalletID', protoName: 'WalletID')
    ..aOM<EncryptableTransferFundsEWalletIDExtraParms>(3, _omitFieldNames ? '' : 'ExtraParms', protoName: 'ExtraParms', subBuilder: EncryptableTransferFundsEWalletIDExtraParms.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EncryptableTransferFundsEWalletID clone() => EncryptableTransferFundsEWalletID()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EncryptableTransferFundsEWalletID copyWith(void Function(EncryptableTransferFundsEWalletID) updates) => super.copyWith((message) => updates(message as EncryptableTransferFundsEWalletID)) as EncryptableTransferFundsEWalletID;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EncryptableTransferFundsEWalletID create() => EncryptableTransferFundsEWalletID._();
  EncryptableTransferFundsEWalletID createEmptyInstance() => create();
  static $pb.PbList<EncryptableTransferFundsEWalletID> createRepeated() => $pb.PbList<EncryptableTransferFundsEWalletID>();
  @$core.pragma('dart2js:noInline')
  static EncryptableTransferFundsEWalletID getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EncryptableTransferFundsEWalletID>(create);
  static EncryptableTransferFundsEWalletID? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nonce => $_getSZ(0);
  @$pb.TagNumber(1)
  set nonce($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNonce() => $_has(0);
  @$pb.TagNumber(1)
  void clearNonce() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get walletID => $_getSZ(1);
  @$pb.TagNumber(2)
  set walletID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWalletID() => $_has(1);
  @$pb.TagNumber(2)
  void clearWalletID() => clearField(2);

  @$pb.TagNumber(3)
  EncryptableTransferFundsEWalletIDExtraParms get extraParms => $_getN(2);
  @$pb.TagNumber(3)
  set extraParms(EncryptableTransferFundsEWalletIDExtraParms v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasExtraParms() => $_has(2);
  @$pb.TagNumber(3)
  void clearExtraParms() => clearField(3);
  @$pb.TagNumber(3)
  EncryptableTransferFundsEWalletIDExtraParms ensureExtraParms() => $_ensure(2);
}

class EncryptableTransferFunds extends $pb.GeneratedMessage {
  factory EncryptableTransferFunds({
    $22.EncryptablePedersenCommit? hiddenTransferPC,
    EncryptableTransferFundsEWalletID? dstEWalletID,
    $core.String? optInReason,
  }) {
    final $result = create();
    if (hiddenTransferPC != null) {
      $result.hiddenTransferPC = hiddenTransferPC;
    }
    if (dstEWalletID != null) {
      $result.dstEWalletID = dstEWalletID;
    }
    if (optInReason != null) {
      $result.optInReason = optInReason;
    }
    return $result;
  }
  EncryptableTransferFunds._() : super();
  factory EncryptableTransferFunds.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EncryptableTransferFunds.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EncryptableTransferFunds', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOM<$22.EncryptablePedersenCommit>(1, _omitFieldNames ? '' : 'HiddenTransferPC', protoName: 'HiddenTransferPC', subBuilder: $22.EncryptablePedersenCommit.create)
    ..aOM<EncryptableTransferFundsEWalletID>(2, _omitFieldNames ? '' : 'DstEWalletID', protoName: 'DstEWalletID', subBuilder: EncryptableTransferFundsEWalletID.create)
    ..aOS(3, _omitFieldNames ? '' : 'OptInReason', protoName: 'OptInReason')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EncryptableTransferFunds clone() => EncryptableTransferFunds()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EncryptableTransferFunds copyWith(void Function(EncryptableTransferFunds) updates) => super.copyWith((message) => updates(message as EncryptableTransferFunds)) as EncryptableTransferFunds;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EncryptableTransferFunds create() => EncryptableTransferFunds._();
  EncryptableTransferFunds createEmptyInstance() => create();
  static $pb.PbList<EncryptableTransferFunds> createRepeated() => $pb.PbList<EncryptableTransferFunds>();
  @$core.pragma('dart2js:noInline')
  static EncryptableTransferFunds getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EncryptableTransferFunds>(create);
  static EncryptableTransferFunds? _defaultInstance;

  @$pb.TagNumber(1)
  $22.EncryptablePedersenCommit get hiddenTransferPC => $_getN(0);
  @$pb.TagNumber(1)
  set hiddenTransferPC($22.EncryptablePedersenCommit v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHiddenTransferPC() => $_has(0);
  @$pb.TagNumber(1)
  void clearHiddenTransferPC() => clearField(1);
  @$pb.TagNumber(1)
  $22.EncryptablePedersenCommit ensureHiddenTransferPC() => $_ensure(0);

  @$pb.TagNumber(2)
  EncryptableTransferFundsEWalletID get dstEWalletID => $_getN(1);
  @$pb.TagNumber(2)
  set dstEWalletID(EncryptableTransferFundsEWalletID v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDstEWalletID() => $_has(1);
  @$pb.TagNumber(2)
  void clearDstEWalletID() => clearField(2);
  @$pb.TagNumber(2)
  EncryptableTransferFundsEWalletID ensureDstEWalletID() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get optInReason => $_getSZ(2);
  @$pb.TagNumber(3)
  set optInReason($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOptInReason() => $_has(2);
  @$pb.TagNumber(3)
  void clearOptInReason() => clearField(3);
}

class EncryptableReceiveFundsEWalletIDExtraParms extends $pb.GeneratedMessage {
  factory EncryptableReceiveFundsEWalletIDExtraParms({
    $core.String? queue,
  }) {
    final $result = create();
    if (queue != null) {
      $result.queue = queue;
    }
    return $result;
  }
  EncryptableReceiveFundsEWalletIDExtraParms._() : super();
  factory EncryptableReceiveFundsEWalletIDExtraParms.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EncryptableReceiveFundsEWalletIDExtraParms.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EncryptableReceiveFundsEWalletIDExtraParms', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'Queue', protoName: 'Queue')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EncryptableReceiveFundsEWalletIDExtraParms clone() => EncryptableReceiveFundsEWalletIDExtraParms()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EncryptableReceiveFundsEWalletIDExtraParms copyWith(void Function(EncryptableReceiveFundsEWalletIDExtraParms) updates) => super.copyWith((message) => updates(message as EncryptableReceiveFundsEWalletIDExtraParms)) as EncryptableReceiveFundsEWalletIDExtraParms;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EncryptableReceiveFundsEWalletIDExtraParms create() => EncryptableReceiveFundsEWalletIDExtraParms._();
  EncryptableReceiveFundsEWalletIDExtraParms createEmptyInstance() => create();
  static $pb.PbList<EncryptableReceiveFundsEWalletIDExtraParms> createRepeated() => $pb.PbList<EncryptableReceiveFundsEWalletIDExtraParms>();
  @$core.pragma('dart2js:noInline')
  static EncryptableReceiveFundsEWalletIDExtraParms getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EncryptableReceiveFundsEWalletIDExtraParms>(create);
  static EncryptableReceiveFundsEWalletIDExtraParms? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get queue => $_getSZ(0);
  @$pb.TagNumber(1)
  set queue($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasQueue() => $_has(0);
  @$pb.TagNumber(1)
  void clearQueue() => clearField(1);
}

class EncryptableReceiveFundsEWalletID extends $pb.GeneratedMessage {
  factory EncryptableReceiveFundsEWalletID({
    $core.String? nonce,
    $core.String? walletID,
    EncryptableReceiveFundsEWalletIDExtraParms? extraParms,
  }) {
    final $result = create();
    if (nonce != null) {
      $result.nonce = nonce;
    }
    if (walletID != null) {
      $result.walletID = walletID;
    }
    if (extraParms != null) {
      $result.extraParms = extraParms;
    }
    return $result;
  }
  EncryptableReceiveFundsEWalletID._() : super();
  factory EncryptableReceiveFundsEWalletID.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EncryptableReceiveFundsEWalletID.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EncryptableReceiveFundsEWalletID', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'Nonce', protoName: 'Nonce')
    ..aOS(2, _omitFieldNames ? '' : 'WalletID', protoName: 'WalletID')
    ..aOM<EncryptableReceiveFundsEWalletIDExtraParms>(3, _omitFieldNames ? '' : 'ExtraParms', protoName: 'ExtraParms', subBuilder: EncryptableReceiveFundsEWalletIDExtraParms.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EncryptableReceiveFundsEWalletID clone() => EncryptableReceiveFundsEWalletID()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EncryptableReceiveFundsEWalletID copyWith(void Function(EncryptableReceiveFundsEWalletID) updates) => super.copyWith((message) => updates(message as EncryptableReceiveFundsEWalletID)) as EncryptableReceiveFundsEWalletID;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EncryptableReceiveFundsEWalletID create() => EncryptableReceiveFundsEWalletID._();
  EncryptableReceiveFundsEWalletID createEmptyInstance() => create();
  static $pb.PbList<EncryptableReceiveFundsEWalletID> createRepeated() => $pb.PbList<EncryptableReceiveFundsEWalletID>();
  @$core.pragma('dart2js:noInline')
  static EncryptableReceiveFundsEWalletID getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EncryptableReceiveFundsEWalletID>(create);
  static EncryptableReceiveFundsEWalletID? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nonce => $_getSZ(0);
  @$pb.TagNumber(1)
  set nonce($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNonce() => $_has(0);
  @$pb.TagNumber(1)
  void clearNonce() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get walletID => $_getSZ(1);
  @$pb.TagNumber(2)
  set walletID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWalletID() => $_has(1);
  @$pb.TagNumber(2)
  void clearWalletID() => clearField(2);

  @$pb.TagNumber(3)
  EncryptableReceiveFundsEWalletIDExtraParms get extraParms => $_getN(2);
  @$pb.TagNumber(3)
  set extraParms(EncryptableReceiveFundsEWalletIDExtraParms v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasExtraParms() => $_has(2);
  @$pb.TagNumber(3)
  void clearExtraParms() => clearField(3);
  @$pb.TagNumber(3)
  EncryptableReceiveFundsEWalletIDExtraParms ensureExtraParms() => $_ensure(2);
}

class EncryptableSignRecoverKeyEWalletID extends $pb.GeneratedMessage {
  factory EncryptableSignRecoverKeyEWalletID({
    $core.String? nonce,
    $core.String? walletID,
  }) {
    final $result = create();
    if (nonce != null) {
      $result.nonce = nonce;
    }
    if (walletID != null) {
      $result.walletID = walletID;
    }
    return $result;
  }
  EncryptableSignRecoverKeyEWalletID._() : super();
  factory EncryptableSignRecoverKeyEWalletID.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EncryptableSignRecoverKeyEWalletID.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EncryptableSignRecoverKeyEWalletID', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'Nonce', protoName: 'Nonce')
    ..aOS(2, _omitFieldNames ? '' : 'WalletID', protoName: 'WalletID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EncryptableSignRecoverKeyEWalletID clone() => EncryptableSignRecoverKeyEWalletID()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EncryptableSignRecoverKeyEWalletID copyWith(void Function(EncryptableSignRecoverKeyEWalletID) updates) => super.copyWith((message) => updates(message as EncryptableSignRecoverKeyEWalletID)) as EncryptableSignRecoverKeyEWalletID;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EncryptableSignRecoverKeyEWalletID create() => EncryptableSignRecoverKeyEWalletID._();
  EncryptableSignRecoverKeyEWalletID createEmptyInstance() => create();
  static $pb.PbList<EncryptableSignRecoverKeyEWalletID> createRepeated() => $pb.PbList<EncryptableSignRecoverKeyEWalletID>();
  @$core.pragma('dart2js:noInline')
  static EncryptableSignRecoverKeyEWalletID getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EncryptableSignRecoverKeyEWalletID>(create);
  static EncryptableSignRecoverKeyEWalletID? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nonce => $_getSZ(0);
  @$pb.TagNumber(1)
  set nonce($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNonce() => $_has(0);
  @$pb.TagNumber(1)
  void clearNonce() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get walletID => $_getSZ(1);
  @$pb.TagNumber(2)
  set walletID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWalletID() => $_has(1);
  @$pb.TagNumber(2)
  void clearWalletID() => clearField(2);
}

class EncryptableReceiveFunds extends $pb.GeneratedMessage {
  factory EncryptableReceiveFunds({
    EncryptableReceiveFundsEWalletID? ephEWalletID,
  }) {
    final $result = create();
    if (ephEWalletID != null) {
      $result.ephEWalletID = ephEWalletID;
    }
    return $result;
  }
  EncryptableReceiveFunds._() : super();
  factory EncryptableReceiveFunds.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EncryptableReceiveFunds.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EncryptableReceiveFunds', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOM<EncryptableReceiveFundsEWalletID>(1, _omitFieldNames ? '' : 'EphEWalletID', protoName: 'EphEWalletID', subBuilder: EncryptableReceiveFundsEWalletID.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EncryptableReceiveFunds clone() => EncryptableReceiveFunds()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EncryptableReceiveFunds copyWith(void Function(EncryptableReceiveFunds) updates) => super.copyWith((message) => updates(message as EncryptableReceiveFunds)) as EncryptableReceiveFunds;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EncryptableReceiveFunds create() => EncryptableReceiveFunds._();
  EncryptableReceiveFunds createEmptyInstance() => create();
  static $pb.PbList<EncryptableReceiveFunds> createRepeated() => $pb.PbList<EncryptableReceiveFunds>();
  @$core.pragma('dart2js:noInline')
  static EncryptableReceiveFunds getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EncryptableReceiveFunds>(create);
  static EncryptableReceiveFunds? _defaultInstance;

  @$pb.TagNumber(1)
  EncryptableReceiveFundsEWalletID get ephEWalletID => $_getN(0);
  @$pb.TagNumber(1)
  set ephEWalletID(EncryptableReceiveFundsEWalletID v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEphEWalletID() => $_has(0);
  @$pb.TagNumber(1)
  void clearEphEWalletID() => clearField(1);
  @$pb.TagNumber(1)
  EncryptableReceiveFundsEWalletID ensureEphEWalletID() => $_ensure(0);
}

class EncryptableAnonTransferFunds extends $pb.GeneratedMessage {
  factory EncryptableAnonTransferFunds({
    $22.EncryptablePedersenCommit? totalTransferPrimePC,
    $14.BInt? transparentTransferBF,
  }) {
    final $result = create();
    if (totalTransferPrimePC != null) {
      $result.totalTransferPrimePC = totalTransferPrimePC;
    }
    if (transparentTransferBF != null) {
      $result.transparentTransferBF = transparentTransferBF;
    }
    return $result;
  }
  EncryptableAnonTransferFunds._() : super();
  factory EncryptableAnonTransferFunds.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EncryptableAnonTransferFunds.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EncryptableAnonTransferFunds', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOM<$22.EncryptablePedersenCommit>(1, _omitFieldNames ? '' : 'TotalTransferPrimePC', protoName: 'TotalTransferPrimePC', subBuilder: $22.EncryptablePedersenCommit.create)
    ..aOM<$14.BInt>(2, _omitFieldNames ? '' : 'TransparentTransferBF', protoName: 'TransparentTransferBF', subBuilder: $14.BInt.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EncryptableAnonTransferFunds clone() => EncryptableAnonTransferFunds()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EncryptableAnonTransferFunds copyWith(void Function(EncryptableAnonTransferFunds) updates) => super.copyWith((message) => updates(message as EncryptableAnonTransferFunds)) as EncryptableAnonTransferFunds;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EncryptableAnonTransferFunds create() => EncryptableAnonTransferFunds._();
  EncryptableAnonTransferFunds createEmptyInstance() => create();
  static $pb.PbList<EncryptableAnonTransferFunds> createRepeated() => $pb.PbList<EncryptableAnonTransferFunds>();
  @$core.pragma('dart2js:noInline')
  static EncryptableAnonTransferFunds getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EncryptableAnonTransferFunds>(create);
  static EncryptableAnonTransferFunds? _defaultInstance;

  @$pb.TagNumber(1)
  $22.EncryptablePedersenCommit get totalTransferPrimePC => $_getN(0);
  @$pb.TagNumber(1)
  set totalTransferPrimePC($22.EncryptablePedersenCommit v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTotalTransferPrimePC() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotalTransferPrimePC() => clearField(1);
  @$pb.TagNumber(1)
  $22.EncryptablePedersenCommit ensureTotalTransferPrimePC() => $_ensure(0);

  @$pb.TagNumber(2)
  $14.BInt get transparentTransferBF => $_getN(1);
  @$pb.TagNumber(2)
  set transparentTransferBF($14.BInt v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTransparentTransferBF() => $_has(1);
  @$pb.TagNumber(2)
  void clearTransparentTransferBF() => clearField(2);
  @$pb.TagNumber(2)
  $14.BInt ensureTransparentTransferBF() => $_ensure(1);
}

class EncryptableESuspiciousAmount extends $pb.GeneratedMessage {
  factory EncryptableESuspiciousAmount({
    $core.String? nonce,
    $15.Coin? uSDCoinAmount,
    $15.Coin? coinAmount,
  }) {
    final $result = create();
    if (nonce != null) {
      $result.nonce = nonce;
    }
    if (uSDCoinAmount != null) {
      $result.uSDCoinAmount = uSDCoinAmount;
    }
    if (coinAmount != null) {
      $result.coinAmount = coinAmount;
    }
    return $result;
  }
  EncryptableESuspiciousAmount._() : super();
  factory EncryptableESuspiciousAmount.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EncryptableESuspiciousAmount.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EncryptableESuspiciousAmount', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'Nonce', protoName: 'Nonce')
    ..aOM<$15.Coin>(2, _omitFieldNames ? '' : 'USDCoinAmount', protoName: 'USDCoinAmount', subBuilder: $15.Coin.create)
    ..aOM<$15.Coin>(3, _omitFieldNames ? '' : 'CoinAmount', protoName: 'CoinAmount', subBuilder: $15.Coin.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EncryptableESuspiciousAmount clone() => EncryptableESuspiciousAmount()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EncryptableESuspiciousAmount copyWith(void Function(EncryptableESuspiciousAmount) updates) => super.copyWith((message) => updates(message as EncryptableESuspiciousAmount)) as EncryptableESuspiciousAmount;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EncryptableESuspiciousAmount create() => EncryptableESuspiciousAmount._();
  EncryptableESuspiciousAmount createEmptyInstance() => create();
  static $pb.PbList<EncryptableESuspiciousAmount> createRepeated() => $pb.PbList<EncryptableESuspiciousAmount>();
  @$core.pragma('dart2js:noInline')
  static EncryptableESuspiciousAmount getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EncryptableESuspiciousAmount>(create);
  static EncryptableESuspiciousAmount? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nonce => $_getSZ(0);
  @$pb.TagNumber(1)
  set nonce($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNonce() => $_has(0);
  @$pb.TagNumber(1)
  void clearNonce() => clearField(1);

  @$pb.TagNumber(2)
  $15.Coin get uSDCoinAmount => $_getN(1);
  @$pb.TagNumber(2)
  set uSDCoinAmount($15.Coin v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUSDCoinAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearUSDCoinAmount() => clearField(2);
  @$pb.TagNumber(2)
  $15.Coin ensureUSDCoinAmount() => $_ensure(1);

  @$pb.TagNumber(3)
  $15.Coin get coinAmount => $_getN(2);
  @$pb.TagNumber(3)
  set coinAmount($15.Coin v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCoinAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearCoinAmount() => clearField(3);
  @$pb.TagNumber(3)
  $15.Coin ensureCoinAmount() => $_ensure(2);
}

class EncryptableSSIDAndPrivK extends $pb.GeneratedMessage {
  factory EncryptableSSIDAndPrivK({
    $core.String? pubKID,
    $core.String? pubK,
    $core.String? privK,
  }) {
    final $result = create();
    if (pubKID != null) {
      $result.pubKID = pubKID;
    }
    if (pubK != null) {
      $result.pubK = pubK;
    }
    if (privK != null) {
      $result.privK = privK;
    }
    return $result;
  }
  EncryptableSSIDAndPrivK._() : super();
  factory EncryptableSSIDAndPrivK.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EncryptableSSIDAndPrivK.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EncryptableSSIDAndPrivK', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'PubKID', protoName: 'PubKID')
    ..aOS(2, _omitFieldNames ? '' : 'PubK', protoName: 'PubK')
    ..aOS(3, _omitFieldNames ? '' : 'PrivK', protoName: 'PrivK')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EncryptableSSIDAndPrivK clone() => EncryptableSSIDAndPrivK()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EncryptableSSIDAndPrivK copyWith(void Function(EncryptableSSIDAndPrivK) updates) => super.copyWith((message) => updates(message as EncryptableSSIDAndPrivK)) as EncryptableSSIDAndPrivK;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EncryptableSSIDAndPrivK create() => EncryptableSSIDAndPrivK._();
  EncryptableSSIDAndPrivK createEmptyInstance() => create();
  static $pb.PbList<EncryptableSSIDAndPrivK> createRepeated() => $pb.PbList<EncryptableSSIDAndPrivK>();
  @$core.pragma('dart2js:noInline')
  static EncryptableSSIDAndPrivK getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EncryptableSSIDAndPrivK>(create);
  static EncryptableSSIDAndPrivK? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pubKID => $_getSZ(0);
  @$pb.TagNumber(1)
  set pubKID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPubKID() => $_has(0);
  @$pb.TagNumber(1)
  void clearPubKID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get pubK => $_getSZ(1);
  @$pb.TagNumber(2)
  set pubK($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPubK() => $_has(1);
  @$pb.TagNumber(2)
  void clearPubK() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get privK => $_getSZ(2);
  @$pb.TagNumber(3)
  set privK($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPrivK() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrivK() => clearField(3);
}

class EncryptablePioneerIDs extends $pb.GeneratedMessage {
  factory EncryptablePioneerIDs({
    $core.Iterable<$core.String>? pioneerIDs,
  }) {
    final $result = create();
    if (pioneerIDs != null) {
      $result.pioneerIDs.addAll(pioneerIDs);
    }
    return $result;
  }
  EncryptablePioneerIDs._() : super();
  factory EncryptablePioneerIDs.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EncryptablePioneerIDs.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EncryptablePioneerIDs', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'PioneerIDs', protoName: 'PioneerIDs')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EncryptablePioneerIDs clone() => EncryptablePioneerIDs()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EncryptablePioneerIDs copyWith(void Function(EncryptablePioneerIDs) updates) => super.copyWith((message) => updates(message as EncryptablePioneerIDs)) as EncryptablePioneerIDs;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EncryptablePioneerIDs create() => EncryptablePioneerIDs._();
  EncryptablePioneerIDs createEmptyInstance() => create();
  static $pb.PbList<EncryptablePioneerIDs> createRepeated() => $pb.PbList<EncryptablePioneerIDs>();
  @$core.pragma('dart2js:noInline')
  static EncryptablePioneerIDs getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EncryptablePioneerIDs>(create);
  static EncryptablePioneerIDs? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get pioneerIDs => $_getList(0);
}

class EncryptableEnclaveSSOwnerMap extends $pb.GeneratedMessage {
  factory EncryptableEnclaveSSOwnerMap({
    $core.Map<$core.String, EncryptablePioneerIDs>? pioneers,
  }) {
    final $result = create();
    if (pioneers != null) {
      $result.pioneers.addAll(pioneers);
    }
    return $result;
  }
  EncryptableEnclaveSSOwnerMap._() : super();
  factory EncryptableEnclaveSSOwnerMap.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EncryptableEnclaveSSOwnerMap.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EncryptableEnclaveSSOwnerMap', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..m<$core.String, EncryptablePioneerIDs>(1, _omitFieldNames ? '' : 'Pioneers', protoName: 'Pioneers', entryClassName: 'EncryptableEnclaveSSOwnerMap.PioneersEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: EncryptablePioneerIDs.create, valueDefaultOrMaker: EncryptablePioneerIDs.getDefault, packageName: const $pb.PackageName('qadena.qadena'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EncryptableEnclaveSSOwnerMap clone() => EncryptableEnclaveSSOwnerMap()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EncryptableEnclaveSSOwnerMap copyWith(void Function(EncryptableEnclaveSSOwnerMap) updates) => super.copyWith((message) => updates(message as EncryptableEnclaveSSOwnerMap)) as EncryptableEnclaveSSOwnerMap;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EncryptableEnclaveSSOwnerMap create() => EncryptableEnclaveSSOwnerMap._();
  EncryptableEnclaveSSOwnerMap createEmptyInstance() => create();
  static $pb.PbList<EncryptableEnclaveSSOwnerMap> createRepeated() => $pb.PbList<EncryptableEnclaveSSOwnerMap>();
  @$core.pragma('dart2js:noInline')
  static EncryptableEnclaveSSOwnerMap getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EncryptableEnclaveSSOwnerMap>(create);
  static EncryptableEnclaveSSOwnerMap? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, EncryptablePioneerIDs> get pioneers => $_getMap(0);
}

class EncryptableEnclavePubKCacheMap extends $pb.GeneratedMessage {
  factory EncryptableEnclavePubKCacheMap({
    $core.Map<$core.String, $core.String>? pubKs,
  }) {
    final $result = create();
    if (pubKs != null) {
      $result.pubKs.addAll(pubKs);
    }
    return $result;
  }
  EncryptableEnclavePubKCacheMap._() : super();
  factory EncryptableEnclavePubKCacheMap.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EncryptableEnclavePubKCacheMap.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EncryptableEnclavePubKCacheMap', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..m<$core.String, $core.String>(1, _omitFieldNames ? '' : 'PubKs', protoName: 'PubKs', entryClassName: 'EncryptableEnclavePubKCacheMap.PubKsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('qadena.qadena'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EncryptableEnclavePubKCacheMap clone() => EncryptableEnclavePubKCacheMap()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EncryptableEnclavePubKCacheMap copyWith(void Function(EncryptableEnclavePubKCacheMap) updates) => super.copyWith((message) => updates(message as EncryptableEnclavePubKCacheMap)) as EncryptableEnclavePubKCacheMap;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EncryptableEnclavePubKCacheMap create() => EncryptableEnclavePubKCacheMap._();
  EncryptableEnclavePubKCacheMap createEmptyInstance() => create();
  static $pb.PbList<EncryptableEnclavePubKCacheMap> createRepeated() => $pb.PbList<EncryptableEnclavePubKCacheMap>();
  @$core.pragma('dart2js:noInline')
  static EncryptableEnclavePubKCacheMap getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EncryptableEnclavePubKCacheMap>(create);
  static EncryptableEnclavePubKCacheMap? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, $core.String> get pubKs => $_getMap(0);
}

class EncryptableSharedEnclaveParams extends $pb.GeneratedMessage {
  factory EncryptableSharedEnclaveParams({
    $core.String? jarID,
    $core.String? jarArmorPrivK,
    $core.String? jarPrivK,
    $core.String? jarPubK,
    $core.String? regulatorID,
    $core.String? regulatorArmorPrivK,
    $core.String? regulatorPrivK,
    $core.String? regulatorPubK,
    EncryptableEnclaveSSOwnerMap? sSIntervalOwners,
    EncryptableEnclavePubKCacheMap? sSIntervalPubKCache,
  }) {
    final $result = create();
    if (jarID != null) {
      $result.jarID = jarID;
    }
    if (jarArmorPrivK != null) {
      $result.jarArmorPrivK = jarArmorPrivK;
    }
    if (jarPrivK != null) {
      $result.jarPrivK = jarPrivK;
    }
    if (jarPubK != null) {
      $result.jarPubK = jarPubK;
    }
    if (regulatorID != null) {
      $result.regulatorID = regulatorID;
    }
    if (regulatorArmorPrivK != null) {
      $result.regulatorArmorPrivK = regulatorArmorPrivK;
    }
    if (regulatorPrivK != null) {
      $result.regulatorPrivK = regulatorPrivK;
    }
    if (regulatorPubK != null) {
      $result.regulatorPubK = regulatorPubK;
    }
    if (sSIntervalOwners != null) {
      $result.sSIntervalOwners = sSIntervalOwners;
    }
    if (sSIntervalPubKCache != null) {
      $result.sSIntervalPubKCache = sSIntervalPubKCache;
    }
    return $result;
  }
  EncryptableSharedEnclaveParams._() : super();
  factory EncryptableSharedEnclaveParams.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EncryptableSharedEnclaveParams.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EncryptableSharedEnclaveParams', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'JarID', protoName: 'JarID')
    ..aOS(2, _omitFieldNames ? '' : 'JarArmorPrivK', protoName: 'JarArmorPrivK')
    ..aOS(3, _omitFieldNames ? '' : 'JarPrivK', protoName: 'JarPrivK')
    ..aOS(4, _omitFieldNames ? '' : 'JarPubK', protoName: 'JarPubK')
    ..aOS(5, _omitFieldNames ? '' : 'RegulatorID', protoName: 'RegulatorID')
    ..aOS(6, _omitFieldNames ? '' : 'RegulatorArmorPrivK', protoName: 'RegulatorArmorPrivK')
    ..aOS(7, _omitFieldNames ? '' : 'RegulatorPrivK', protoName: 'RegulatorPrivK')
    ..aOS(8, _omitFieldNames ? '' : 'RegulatorPubK', protoName: 'RegulatorPubK')
    ..aOM<EncryptableEnclaveSSOwnerMap>(9, _omitFieldNames ? '' : 'SSIntervalOwners', protoName: 'SSIntervalOwners', subBuilder: EncryptableEnclaveSSOwnerMap.create)
    ..aOM<EncryptableEnclavePubKCacheMap>(10, _omitFieldNames ? '' : 'SSIntervalPubKCache', protoName: 'SSIntervalPubKCache', subBuilder: EncryptableEnclavePubKCacheMap.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EncryptableSharedEnclaveParams clone() => EncryptableSharedEnclaveParams()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EncryptableSharedEnclaveParams copyWith(void Function(EncryptableSharedEnclaveParams) updates) => super.copyWith((message) => updates(message as EncryptableSharedEnclaveParams)) as EncryptableSharedEnclaveParams;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EncryptableSharedEnclaveParams create() => EncryptableSharedEnclaveParams._();
  EncryptableSharedEnclaveParams createEmptyInstance() => create();
  static $pb.PbList<EncryptableSharedEnclaveParams> createRepeated() => $pb.PbList<EncryptableSharedEnclaveParams>();
  @$core.pragma('dart2js:noInline')
  static EncryptableSharedEnclaveParams getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EncryptableSharedEnclaveParams>(create);
  static EncryptableSharedEnclaveParams? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get jarID => $_getSZ(0);
  @$pb.TagNumber(1)
  set jarID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasJarID() => $_has(0);
  @$pb.TagNumber(1)
  void clearJarID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get jarArmorPrivK => $_getSZ(1);
  @$pb.TagNumber(2)
  set jarArmorPrivK($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasJarArmorPrivK() => $_has(1);
  @$pb.TagNumber(2)
  void clearJarArmorPrivK() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get jarPrivK => $_getSZ(2);
  @$pb.TagNumber(3)
  set jarPrivK($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasJarPrivK() => $_has(2);
  @$pb.TagNumber(3)
  void clearJarPrivK() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get jarPubK => $_getSZ(3);
  @$pb.TagNumber(4)
  set jarPubK($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasJarPubK() => $_has(3);
  @$pb.TagNumber(4)
  void clearJarPubK() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get regulatorID => $_getSZ(4);
  @$pb.TagNumber(5)
  set regulatorID($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRegulatorID() => $_has(4);
  @$pb.TagNumber(5)
  void clearRegulatorID() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get regulatorArmorPrivK => $_getSZ(5);
  @$pb.TagNumber(6)
  set regulatorArmorPrivK($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRegulatorArmorPrivK() => $_has(5);
  @$pb.TagNumber(6)
  void clearRegulatorArmorPrivK() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get regulatorPrivK => $_getSZ(6);
  @$pb.TagNumber(7)
  set regulatorPrivK($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasRegulatorPrivK() => $_has(6);
  @$pb.TagNumber(7)
  void clearRegulatorPrivK() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get regulatorPubK => $_getSZ(7);
  @$pb.TagNumber(8)
  set regulatorPubK($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasRegulatorPubK() => $_has(7);
  @$pb.TagNumber(8)
  void clearRegulatorPubK() => clearField(8);

  /// these only used temporarily to sync data from enclave to enclave
  @$pb.TagNumber(9)
  EncryptableEnclaveSSOwnerMap get sSIntervalOwners => $_getN(8);
  @$pb.TagNumber(9)
  set sSIntervalOwners(EncryptableEnclaveSSOwnerMap v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasSSIntervalOwners() => $_has(8);
  @$pb.TagNumber(9)
  void clearSSIntervalOwners() => clearField(9);
  @$pb.TagNumber(9)
  EncryptableEnclaveSSOwnerMap ensureSSIntervalOwners() => $_ensure(8);

  @$pb.TagNumber(10)
  EncryptableEnclavePubKCacheMap get sSIntervalPubKCache => $_getN(9);
  @$pb.TagNumber(10)
  set sSIntervalPubKCache(EncryptableEnclavePubKCacheMap v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasSSIntervalPubKCache() => $_has(9);
  @$pb.TagNumber(10)
  void clearSSIntervalPubKCache() => clearField(10);
  @$pb.TagNumber(10)
  EncryptableEnclavePubKCacheMap ensureSSIntervalPubKCache() => $_ensure(9);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
