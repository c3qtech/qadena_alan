//
//  Generated code. Do not modify.
//  source: qadena/qadena/wallet.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'b_pedersen_commit.pb.dart' as $19;
import 'recover_share.pb.dart' as $25;
import 'v_share_bind_data.pb.dart' as $21;

class WalletAmount extends $pb.GeneratedMessage {
  factory WalletAmount({
    $19.BPedersenCommit? walletAmountPedersenCommit,
    $core.List<$core.int>? encWalletAmountVShare,
    $21.VShareBindData? walletAmountVShareBind,
    $core.Iterable<$19.BPedersenCommit>? requiredSenderCheckPC,
  }) {
    final $result = create();
    if (walletAmountPedersenCommit != null) {
      $result.walletAmountPedersenCommit = walletAmountPedersenCommit;
    }
    if (encWalletAmountVShare != null) {
      $result.encWalletAmountVShare = encWalletAmountVShare;
    }
    if (walletAmountVShareBind != null) {
      $result.walletAmountVShareBind = walletAmountVShareBind;
    }
    if (requiredSenderCheckPC != null) {
      $result.requiredSenderCheckPC.addAll(requiredSenderCheckPC);
    }
    return $result;
  }
  WalletAmount._() : super();
  factory WalletAmount.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WalletAmount.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WalletAmount', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOM<$19.BPedersenCommit>(1, _omitFieldNames ? '' : 'walletAmountPedersenCommit', protoName: 'walletAmountPedersenCommit', subBuilder: $19.BPedersenCommit.create)
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'encWalletAmountVShare', $pb.PbFieldType.OY, protoName: 'encWalletAmountVShare')
    ..aOM<$21.VShareBindData>(3, _omitFieldNames ? '' : 'walletAmountVShareBind', protoName: 'walletAmountVShareBind', subBuilder: $21.VShareBindData.create)
    ..pc<$19.BPedersenCommit>(4, _omitFieldNames ? '' : 'RequiredSenderCheckPC', $pb.PbFieldType.PM, protoName: 'RequiredSenderCheckPC', subBuilder: $19.BPedersenCommit.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WalletAmount clone() => WalletAmount()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WalletAmount copyWith(void Function(WalletAmount) updates) => super.copyWith((message) => updates(message as WalletAmount)) as WalletAmount;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WalletAmount create() => WalletAmount._();
  WalletAmount createEmptyInstance() => create();
  static $pb.PbList<WalletAmount> createRepeated() => $pb.PbList<WalletAmount>();
  @$core.pragma('dart2js:noInline')
  static WalletAmount getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WalletAmount>(create);
  static WalletAmount? _defaultInstance;

  @$pb.TagNumber(1)
  $19.BPedersenCommit get walletAmountPedersenCommit => $_getN(0);
  @$pb.TagNumber(1)
  set walletAmountPedersenCommit($19.BPedersenCommit v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasWalletAmountPedersenCommit() => $_has(0);
  @$pb.TagNumber(1)
  void clearWalletAmountPedersenCommit() => clearField(1);
  @$pb.TagNumber(1)
  $19.BPedersenCommit ensureWalletAmountPedersenCommit() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get encWalletAmountVShare => $_getN(1);
  @$pb.TagNumber(2)
  set encWalletAmountVShare($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEncWalletAmountVShare() => $_has(1);
  @$pb.TagNumber(2)
  void clearEncWalletAmountVShare() => clearField(2);

  @$pb.TagNumber(3)
  $21.VShareBindData get walletAmountVShareBind => $_getN(2);
  @$pb.TagNumber(3)
  set walletAmountVShareBind($21.VShareBindData v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasWalletAmountVShareBind() => $_has(2);
  @$pb.TagNumber(3)
  void clearWalletAmountVShareBind() => clearField(3);
  @$pb.TagNumber(3)
  $21.VShareBindData ensureWalletAmountVShareBind() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.List<$19.BPedersenCommit> get requiredSenderCheckPC => $_getList(3);
}

class ListWalletAmount extends $pb.GeneratedMessage {
  factory ListWalletAmount({
    $core.Iterable<WalletAmount>? walletAmounts,
  }) {
    final $result = create();
    if (walletAmounts != null) {
      $result.walletAmounts.addAll(walletAmounts);
    }
    return $result;
  }
  ListWalletAmount._() : super();
  factory ListWalletAmount.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListWalletAmount.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListWalletAmount', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..pc<WalletAmount>(1, _omitFieldNames ? '' : 'walletAmounts', $pb.PbFieldType.PM, protoName: 'walletAmounts', subBuilder: WalletAmount.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListWalletAmount clone() => ListWalletAmount()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListWalletAmount copyWith(void Function(ListWalletAmount) updates) => super.copyWith((message) => updates(message as ListWalletAmount)) as ListWalletAmount;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListWalletAmount create() => ListWalletAmount._();
  ListWalletAmount createEmptyInstance() => create();
  static $pb.PbList<ListWalletAmount> createRepeated() => $pb.PbList<ListWalletAmount>();
  @$core.pragma('dart2js:noInline')
  static ListWalletAmount getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListWalletAmount>(create);
  static ListWalletAmount? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<WalletAmount> get walletAmounts => $_getList(0);
}

/// WARNING:  ANY CHANGES TO WALLET MUST BE DONE TO STABLEWALLET, and c.SetStableWallet must be updated
/// THE ONLY DIFFERENCE IS THAT MAPS ARE CHANGED TO REPEATED
/// IF YOU ADD ANYTHING HERE, YOU MUST MAKE SURE TO MODIFY common.SetStableWallet
class Wallet extends $pb.GeneratedMessage {
  factory Wallet({
    $core.String? walletID,
    $core.String? homePioneerID,
    $core.Iterable<$core.String>? serviceProviderID,
    $core.Map<$core.String, WalletAmount>? walletAmount,
    $core.String? credentialID,
    $core.List<$core.int>? encCreateWalletVShare,
    $21.VShareBindData? createWalletVShareBind,
    $core.Map<$core.String, $core.int>? ephemeralWalletAmountCount,
    $core.Map<$core.String, ListWalletAmount>? queuedWalletAmount,
    $19.BPedersenCommit? acceptPasswordPedersenCommit,
    $core.List<$core.int>? encAcceptValidatedCredentialsVShare,
    $21.VShareBindData? acceptValidatedCredentialsVShareBind,
    $core.String? senderOptions,
    $core.Iterable<$25.RecoverShare>? recoverShares,
  }) {
    final $result = create();
    if (walletID != null) {
      $result.walletID = walletID;
    }
    if (homePioneerID != null) {
      $result.homePioneerID = homePioneerID;
    }
    if (serviceProviderID != null) {
      $result.serviceProviderID.addAll(serviceProviderID);
    }
    if (walletAmount != null) {
      $result.walletAmount.addAll(walletAmount);
    }
    if (credentialID != null) {
      $result.credentialID = credentialID;
    }
    if (encCreateWalletVShare != null) {
      $result.encCreateWalletVShare = encCreateWalletVShare;
    }
    if (createWalletVShareBind != null) {
      $result.createWalletVShareBind = createWalletVShareBind;
    }
    if (ephemeralWalletAmountCount != null) {
      $result.ephemeralWalletAmountCount.addAll(ephemeralWalletAmountCount);
    }
    if (queuedWalletAmount != null) {
      $result.queuedWalletAmount.addAll(queuedWalletAmount);
    }
    if (acceptPasswordPedersenCommit != null) {
      $result.acceptPasswordPedersenCommit = acceptPasswordPedersenCommit;
    }
    if (encAcceptValidatedCredentialsVShare != null) {
      $result.encAcceptValidatedCredentialsVShare = encAcceptValidatedCredentialsVShare;
    }
    if (acceptValidatedCredentialsVShareBind != null) {
      $result.acceptValidatedCredentialsVShareBind = acceptValidatedCredentialsVShareBind;
    }
    if (senderOptions != null) {
      $result.senderOptions = senderOptions;
    }
    if (recoverShares != null) {
      $result.recoverShares.addAll(recoverShares);
    }
    return $result;
  }
  Wallet._() : super();
  factory Wallet.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Wallet.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Wallet', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'walletID', protoName: 'walletID')
    ..aOS(2, _omitFieldNames ? '' : 'homePioneerID', protoName: 'homePioneerID')
    ..pPS(3, _omitFieldNames ? '' : 'serviceProviderID', protoName: 'serviceProviderID')
    ..m<$core.String, WalletAmount>(4, _omitFieldNames ? '' : 'walletAmount', protoName: 'walletAmount', entryClassName: 'Wallet.WalletAmountEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: WalletAmount.create, valueDefaultOrMaker: WalletAmount.getDefault, packageName: const $pb.PackageName('qadena.qadena'))
    ..aOS(5, _omitFieldNames ? '' : 'credentialID', protoName: 'credentialID')
    ..a<$core.List<$core.int>>(6, _omitFieldNames ? '' : 'encCreateWalletVShare', $pb.PbFieldType.OY, protoName: 'encCreateWalletVShare')
    ..aOM<$21.VShareBindData>(7, _omitFieldNames ? '' : 'createWalletVShareBind', protoName: 'createWalletVShareBind', subBuilder: $21.VShareBindData.create)
    ..m<$core.String, $core.int>(8, _omitFieldNames ? '' : 'ephemeralWalletAmountCount', protoName: 'ephemeralWalletAmountCount', entryClassName: 'Wallet.EphemeralWalletAmountCountEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.O3, packageName: const $pb.PackageName('qadena.qadena'))
    ..m<$core.String, ListWalletAmount>(9, _omitFieldNames ? '' : 'queuedWalletAmount', protoName: 'queuedWalletAmount', entryClassName: 'Wallet.QueuedWalletAmountEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: ListWalletAmount.create, valueDefaultOrMaker: ListWalletAmount.getDefault, packageName: const $pb.PackageName('qadena.qadena'))
    ..aOM<$19.BPedersenCommit>(10, _omitFieldNames ? '' : 'acceptPasswordPedersenCommit', protoName: 'acceptPasswordPedersenCommit', subBuilder: $19.BPedersenCommit.create)
    ..a<$core.List<$core.int>>(11, _omitFieldNames ? '' : 'encAcceptValidatedCredentialsVShare', $pb.PbFieldType.OY, protoName: 'encAcceptValidatedCredentialsVShare')
    ..aOM<$21.VShareBindData>(12, _omitFieldNames ? '' : 'acceptValidatedCredentialsVShareBind', protoName: 'acceptValidatedCredentialsVShareBind', subBuilder: $21.VShareBindData.create)
    ..aOS(13, _omitFieldNames ? '' : 'senderOptions', protoName: 'senderOptions')
    ..pc<$25.RecoverShare>(14, _omitFieldNames ? '' : 'recoverShares', $pb.PbFieldType.PM, protoName: 'recoverShares', subBuilder: $25.RecoverShare.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Wallet clone() => Wallet()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Wallet copyWith(void Function(Wallet) updates) => super.copyWith((message) => updates(message as Wallet)) as Wallet;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Wallet create() => Wallet._();
  Wallet createEmptyInstance() => create();
  static $pb.PbList<Wallet> createRepeated() => $pb.PbList<Wallet>();
  @$core.pragma('dart2js:noInline')
  static Wallet getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Wallet>(create);
  static Wallet? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get walletID => $_getSZ(0);
  @$pb.TagNumber(1)
  set walletID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWalletID() => $_has(0);
  @$pb.TagNumber(1)
  void clearWalletID() => clearField(1);

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
  $core.Map<$core.String, WalletAmount> get walletAmount => $_getMap(3);

  @$pb.TagNumber(5)
  $core.String get credentialID => $_getSZ(4);
  @$pb.TagNumber(5)
  set credentialID($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCredentialID() => $_has(4);
  @$pb.TagNumber(5)
  void clearCredentialID() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get encCreateWalletVShare => $_getN(5);
  @$pb.TagNumber(6)
  set encCreateWalletVShare($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasEncCreateWalletVShare() => $_has(5);
  @$pb.TagNumber(6)
  void clearEncCreateWalletVShare() => clearField(6);

  @$pb.TagNumber(7)
  $21.VShareBindData get createWalletVShareBind => $_getN(6);
  @$pb.TagNumber(7)
  set createWalletVShareBind($21.VShareBindData v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasCreateWalletVShareBind() => $_has(6);
  @$pb.TagNumber(7)
  void clearCreateWalletVShareBind() => clearField(7);
  @$pb.TagNumber(7)
  $21.VShareBindData ensureCreateWalletVShareBind() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.Map<$core.String, $core.int> get ephemeralWalletAmountCount => $_getMap(7);

  @$pb.TagNumber(9)
  $core.Map<$core.String, ListWalletAmount> get queuedWalletAmount => $_getMap(8);

  @$pb.TagNumber(10)
  $19.BPedersenCommit get acceptPasswordPedersenCommit => $_getN(9);
  @$pb.TagNumber(10)
  set acceptPasswordPedersenCommit($19.BPedersenCommit v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasAcceptPasswordPedersenCommit() => $_has(9);
  @$pb.TagNumber(10)
  void clearAcceptPasswordPedersenCommit() => clearField(10);
  @$pb.TagNumber(10)
  $19.BPedersenCommit ensureAcceptPasswordPedersenCommit() => $_ensure(9);

  @$pb.TagNumber(11)
  $core.List<$core.int> get encAcceptValidatedCredentialsVShare => $_getN(10);
  @$pb.TagNumber(11)
  set encAcceptValidatedCredentialsVShare($core.List<$core.int> v) { $_setBytes(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasEncAcceptValidatedCredentialsVShare() => $_has(10);
  @$pb.TagNumber(11)
  void clearEncAcceptValidatedCredentialsVShare() => clearField(11);

  @$pb.TagNumber(12)
  $21.VShareBindData get acceptValidatedCredentialsVShareBind => $_getN(11);
  @$pb.TagNumber(12)
  set acceptValidatedCredentialsVShareBind($21.VShareBindData v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasAcceptValidatedCredentialsVShareBind() => $_has(11);
  @$pb.TagNumber(12)
  void clearAcceptValidatedCredentialsVShareBind() => clearField(12);
  @$pb.TagNumber(12)
  $21.VShareBindData ensureAcceptValidatedCredentialsVShareBind() => $_ensure(11);

  @$pb.TagNumber(13)
  $core.String get senderOptions => $_getSZ(12);
  @$pb.TagNumber(13)
  set senderOptions($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasSenderOptions() => $_has(12);
  @$pb.TagNumber(13)
  void clearSenderOptions() => clearField(13);

  @$pb.TagNumber(14)
  $core.List<$25.RecoverShare> get recoverShares => $_getList(13);
}

class StringWalletAmount extends $pb.GeneratedMessage {
  factory StringWalletAmount({
    $core.String? name,
    WalletAmount? val,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (val != null) {
      $result.val = val;
    }
    return $result;
  }
  StringWalletAmount._() : super();
  factory StringWalletAmount.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StringWalletAmount.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StringWalletAmount', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<WalletAmount>(2, _omitFieldNames ? '' : 'val', subBuilder: WalletAmount.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StringWalletAmount clone() => StringWalletAmount()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StringWalletAmount copyWith(void Function(StringWalletAmount) updates) => super.copyWith((message) => updates(message as StringWalletAmount)) as StringWalletAmount;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringWalletAmount create() => StringWalletAmount._();
  StringWalletAmount createEmptyInstance() => create();
  static $pb.PbList<StringWalletAmount> createRepeated() => $pb.PbList<StringWalletAmount>();
  @$core.pragma('dart2js:noInline')
  static StringWalletAmount getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StringWalletAmount>(create);
  static StringWalletAmount? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  WalletAmount get val => $_getN(1);
  @$pb.TagNumber(2)
  set val(WalletAmount v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasVal() => $_has(1);
  @$pb.TagNumber(2)
  void clearVal() => clearField(2);
  @$pb.TagNumber(2)
  WalletAmount ensureVal() => $_ensure(1);
}

class StringInt32 extends $pb.GeneratedMessage {
  factory StringInt32({
    $core.String? name,
    $core.int? val,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (val != null) {
      $result.val = val;
    }
    return $result;
  }
  StringInt32._() : super();
  factory StringInt32.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StringInt32.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StringInt32', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'val', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StringInt32 clone() => StringInt32()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StringInt32 copyWith(void Function(StringInt32) updates) => super.copyWith((message) => updates(message as StringInt32)) as StringInt32;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringInt32 create() => StringInt32._();
  StringInt32 createEmptyInstance() => create();
  static $pb.PbList<StringInt32> createRepeated() => $pb.PbList<StringInt32>();
  @$core.pragma('dart2js:noInline')
  static StringInt32 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StringInt32>(create);
  static StringInt32? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get val => $_getIZ(1);
  @$pb.TagNumber(2)
  set val($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVal() => $_has(1);
  @$pb.TagNumber(2)
  void clearVal() => clearField(2);
}

class StringListWalletAmount extends $pb.GeneratedMessage {
  factory StringListWalletAmount({
    $core.String? name,
    ListWalletAmount? val,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (val != null) {
      $result.val = val;
    }
    return $result;
  }
  StringListWalletAmount._() : super();
  factory StringListWalletAmount.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StringListWalletAmount.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StringListWalletAmount', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<ListWalletAmount>(2, _omitFieldNames ? '' : 'val', subBuilder: ListWalletAmount.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StringListWalletAmount clone() => StringListWalletAmount()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StringListWalletAmount copyWith(void Function(StringListWalletAmount) updates) => super.copyWith((message) => updates(message as StringListWalletAmount)) as StringListWalletAmount;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringListWalletAmount create() => StringListWalletAmount._();
  StringListWalletAmount createEmptyInstance() => create();
  static $pb.PbList<StringListWalletAmount> createRepeated() => $pb.PbList<StringListWalletAmount>();
  @$core.pragma('dart2js:noInline')
  static StringListWalletAmount getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StringListWalletAmount>(create);
  static StringListWalletAmount? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  ListWalletAmount get val => $_getN(1);
  @$pb.TagNumber(2)
  set val(ListWalletAmount v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasVal() => $_has(1);
  @$pb.TagNumber(2)
  void clearVal() => clearField(2);
  @$pb.TagNumber(2)
  ListWalletAmount ensureVal() => $_ensure(1);
}

class StableWallet extends $pb.GeneratedMessage {
  factory StableWallet({
    $core.String? walletID,
    $core.String? homePioneerID,
    $core.Iterable<$core.String>? serviceProviderID,
    $core.Iterable<StringWalletAmount>? walletAmount,
    $core.String? credentialID,
    $core.List<$core.int>? encCreateWalletVShare,
    $21.VShareBindData? createWalletVShareBind,
    $core.Iterable<StringInt32>? ephemeralWalletAmountCount,
    $core.Iterable<StringListWalletAmount>? queuedWalletAmount,
    $19.BPedersenCommit? acceptPasswordPedersenCommit,
    $core.List<$core.int>? encAcceptValidatedCredentialsVShare,
    $21.VShareBindData? acceptValidatedCredentialsVShareBind,
    $core.String? senderOptions,
    $core.Iterable<$25.RecoverShare>? recoverShares,
  }) {
    final $result = create();
    if (walletID != null) {
      $result.walletID = walletID;
    }
    if (homePioneerID != null) {
      $result.homePioneerID = homePioneerID;
    }
    if (serviceProviderID != null) {
      $result.serviceProviderID.addAll(serviceProviderID);
    }
    if (walletAmount != null) {
      $result.walletAmount.addAll(walletAmount);
    }
    if (credentialID != null) {
      $result.credentialID = credentialID;
    }
    if (encCreateWalletVShare != null) {
      $result.encCreateWalletVShare = encCreateWalletVShare;
    }
    if (createWalletVShareBind != null) {
      $result.createWalletVShareBind = createWalletVShareBind;
    }
    if (ephemeralWalletAmountCount != null) {
      $result.ephemeralWalletAmountCount.addAll(ephemeralWalletAmountCount);
    }
    if (queuedWalletAmount != null) {
      $result.queuedWalletAmount.addAll(queuedWalletAmount);
    }
    if (acceptPasswordPedersenCommit != null) {
      $result.acceptPasswordPedersenCommit = acceptPasswordPedersenCommit;
    }
    if (encAcceptValidatedCredentialsVShare != null) {
      $result.encAcceptValidatedCredentialsVShare = encAcceptValidatedCredentialsVShare;
    }
    if (acceptValidatedCredentialsVShareBind != null) {
      $result.acceptValidatedCredentialsVShareBind = acceptValidatedCredentialsVShareBind;
    }
    if (senderOptions != null) {
      $result.senderOptions = senderOptions;
    }
    if (recoverShares != null) {
      $result.recoverShares.addAll(recoverShares);
    }
    return $result;
  }
  StableWallet._() : super();
  factory StableWallet.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StableWallet.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StableWallet', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'walletID', protoName: 'walletID')
    ..aOS(2, _omitFieldNames ? '' : 'homePioneerID', protoName: 'homePioneerID')
    ..pPS(3, _omitFieldNames ? '' : 'serviceProviderID', protoName: 'serviceProviderID')
    ..pc<StringWalletAmount>(4, _omitFieldNames ? '' : 'walletAmount', $pb.PbFieldType.PM, protoName: 'walletAmount', subBuilder: StringWalletAmount.create)
    ..aOS(5, _omitFieldNames ? '' : 'credentialID', protoName: 'credentialID')
    ..a<$core.List<$core.int>>(6, _omitFieldNames ? '' : 'encCreateWalletVShare', $pb.PbFieldType.OY, protoName: 'encCreateWalletVShare')
    ..aOM<$21.VShareBindData>(7, _omitFieldNames ? '' : 'createWalletVShareBind', protoName: 'createWalletVShareBind', subBuilder: $21.VShareBindData.create)
    ..pc<StringInt32>(8, _omitFieldNames ? '' : 'ephemeralWalletAmountCount', $pb.PbFieldType.PM, protoName: 'ephemeralWalletAmountCount', subBuilder: StringInt32.create)
    ..pc<StringListWalletAmount>(9, _omitFieldNames ? '' : 'queuedWalletAmount', $pb.PbFieldType.PM, protoName: 'queuedWalletAmount', subBuilder: StringListWalletAmount.create)
    ..aOM<$19.BPedersenCommit>(10, _omitFieldNames ? '' : 'acceptPasswordPedersenCommit', protoName: 'acceptPasswordPedersenCommit', subBuilder: $19.BPedersenCommit.create)
    ..a<$core.List<$core.int>>(11, _omitFieldNames ? '' : 'encAcceptValidatedCredentialsVShare', $pb.PbFieldType.OY, protoName: 'encAcceptValidatedCredentialsVShare')
    ..aOM<$21.VShareBindData>(12, _omitFieldNames ? '' : 'acceptValidatedCredentialsVShareBind', protoName: 'acceptValidatedCredentialsVShareBind', subBuilder: $21.VShareBindData.create)
    ..aOS(13, _omitFieldNames ? '' : 'senderOptions', protoName: 'senderOptions')
    ..pc<$25.RecoverShare>(14, _omitFieldNames ? '' : 'recoverShares', $pb.PbFieldType.PM, protoName: 'recoverShares', subBuilder: $25.RecoverShare.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StableWallet clone() => StableWallet()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StableWallet copyWith(void Function(StableWallet) updates) => super.copyWith((message) => updates(message as StableWallet)) as StableWallet;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StableWallet create() => StableWallet._();
  StableWallet createEmptyInstance() => create();
  static $pb.PbList<StableWallet> createRepeated() => $pb.PbList<StableWallet>();
  @$core.pragma('dart2js:noInline')
  static StableWallet getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StableWallet>(create);
  static StableWallet? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get walletID => $_getSZ(0);
  @$pb.TagNumber(1)
  set walletID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWalletID() => $_has(0);
  @$pb.TagNumber(1)
  void clearWalletID() => clearField(1);

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
  $core.List<StringWalletAmount> get walletAmount => $_getList(3);

  @$pb.TagNumber(5)
  $core.String get credentialID => $_getSZ(4);
  @$pb.TagNumber(5)
  set credentialID($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCredentialID() => $_has(4);
  @$pb.TagNumber(5)
  void clearCredentialID() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get encCreateWalletVShare => $_getN(5);
  @$pb.TagNumber(6)
  set encCreateWalletVShare($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasEncCreateWalletVShare() => $_has(5);
  @$pb.TagNumber(6)
  void clearEncCreateWalletVShare() => clearField(6);

  @$pb.TagNumber(7)
  $21.VShareBindData get createWalletVShareBind => $_getN(6);
  @$pb.TagNumber(7)
  set createWalletVShareBind($21.VShareBindData v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasCreateWalletVShareBind() => $_has(6);
  @$pb.TagNumber(7)
  void clearCreateWalletVShareBind() => clearField(7);
  @$pb.TagNumber(7)
  $21.VShareBindData ensureCreateWalletVShareBind() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.List<StringInt32> get ephemeralWalletAmountCount => $_getList(7);

  @$pb.TagNumber(9)
  $core.List<StringListWalletAmount> get queuedWalletAmount => $_getList(8);

  @$pb.TagNumber(10)
  $19.BPedersenCommit get acceptPasswordPedersenCommit => $_getN(9);
  @$pb.TagNumber(10)
  set acceptPasswordPedersenCommit($19.BPedersenCommit v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasAcceptPasswordPedersenCommit() => $_has(9);
  @$pb.TagNumber(10)
  void clearAcceptPasswordPedersenCommit() => clearField(10);
  @$pb.TagNumber(10)
  $19.BPedersenCommit ensureAcceptPasswordPedersenCommit() => $_ensure(9);

  @$pb.TagNumber(11)
  $core.List<$core.int> get encAcceptValidatedCredentialsVShare => $_getN(10);
  @$pb.TagNumber(11)
  set encAcceptValidatedCredentialsVShare($core.List<$core.int> v) { $_setBytes(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasEncAcceptValidatedCredentialsVShare() => $_has(10);
  @$pb.TagNumber(11)
  void clearEncAcceptValidatedCredentialsVShare() => clearField(11);

  @$pb.TagNumber(12)
  $21.VShareBindData get acceptValidatedCredentialsVShareBind => $_getN(11);
  @$pb.TagNumber(12)
  set acceptValidatedCredentialsVShareBind($21.VShareBindData v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasAcceptValidatedCredentialsVShareBind() => $_has(11);
  @$pb.TagNumber(12)
  void clearAcceptValidatedCredentialsVShareBind() => clearField(12);
  @$pb.TagNumber(12)
  $21.VShareBindData ensureAcceptValidatedCredentialsVShareBind() => $_ensure(11);

  @$pb.TagNumber(13)
  $core.String get senderOptions => $_getSZ(12);
  @$pb.TagNumber(13)
  set senderOptions($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasSenderOptions() => $_has(12);
  @$pb.TagNumber(13)
  void clearSenderOptions() => clearField(13);

  @$pb.TagNumber(14)
  $core.List<$25.RecoverShare> get recoverShares => $_getList(13);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
