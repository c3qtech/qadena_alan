//
//  Generated code. Do not modify.
//  source: qadena/qadena/enclave.proto
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
import 'credential.pb.dart' as $7;
import 'enclave_identity.pb.dart' as $3;
import 'recover_key.pb.dart' as $6;
import 'suspicious_transaction.pb.dart' as $28;
import 'tx.pb.dart' as $0;
import 'v_share_bind_data.pb.dart' as $21;
import 'wallet.pb.dart' as $4;

/// The request message containing the user's name.
class HelloRequest extends $pb.GeneratedMessage {
  factory HelloRequest({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  HelloRequest._() : super();
  factory HelloRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HelloRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HelloRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HelloRequest clone() => HelloRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HelloRequest copyWith(void Function(HelloRequest) updates) => super.copyWith((message) => updates(message as HelloRequest)) as HelloRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HelloRequest create() => HelloRequest._();
  HelloRequest createEmptyInstance() => create();
  static $pb.PbList<HelloRequest> createRepeated() => $pb.PbList<HelloRequest>();
  @$core.pragma('dart2js:noInline')
  static HelloRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HelloRequest>(create);
  static HelloRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

/// The response message containing the greetings
class HelloReply extends $pb.GeneratedMessage {
  factory HelloReply({
    $core.String? message,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  HelloReply._() : super();
  factory HelloReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HelloReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HelloReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HelloReply clone() => HelloReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HelloReply copyWith(void Function(HelloReply) updates) => super.copyWith((message) => updates(message as HelloReply)) as HelloReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HelloReply create() => HelloReply._();
  HelloReply createEmptyInstance() => create();
  static $pb.PbList<HelloReply> createRepeated() => $pb.PbList<HelloReply>();
  @$core.pragma('dart2js:noInline')
  static HelloReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HelloReply>(create);
  static HelloReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

class MsgEndBlock extends $pb.GeneratedMessage {
  factory MsgEndBlock() => create();
  MsgEndBlock._() : super();
  factory MsgEndBlock.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgEndBlock.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgEndBlock', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgEndBlock clone() => MsgEndBlock()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgEndBlock copyWith(void Function(MsgEndBlock) updates) => super.copyWith((message) => updates(message as MsgEndBlock)) as MsgEndBlock;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgEndBlock create() => MsgEndBlock._();
  MsgEndBlock createEmptyInstance() => create();
  static $pb.PbList<MsgEndBlock> createRepeated() => $pb.PbList<MsgEndBlock>();
  @$core.pragma('dart2js:noInline')
  static MsgEndBlock getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgEndBlock>(create);
  static MsgEndBlock? _defaultInstance;
}

class EndBlockReply extends $pb.GeneratedMessage {
  factory EndBlockReply() => create();
  EndBlockReply._() : super();
  factory EndBlockReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EndBlockReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EndBlockReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EndBlockReply clone() => EndBlockReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EndBlockReply copyWith(void Function(EndBlockReply) updates) => super.copyWith((message) => updates(message as EndBlockReply)) as EndBlockReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EndBlockReply create() => EndBlockReply._();
  EndBlockReply createEmptyInstance() => create();
  static $pb.PbList<EndBlockReply> createRepeated() => $pb.PbList<EndBlockReply>();
  @$core.pragma('dart2js:noInline')
  static EndBlockReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EndBlockReply>(create);
  static EndBlockReply? _defaultInstance;
}

class QueryGetSubWalletIDByOriginalWalletIDResponse extends $pb.GeneratedMessage {
  factory QueryGetSubWalletIDByOriginalWalletIDResponse({
    $core.String? subWalletID,
  }) {
    final $result = create();
    if (subWalletID != null) {
      $result.subWalletID = subWalletID;
    }
    return $result;
  }
  QueryGetSubWalletIDByOriginalWalletIDResponse._() : super();
  factory QueryGetSubWalletIDByOriginalWalletIDResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetSubWalletIDByOriginalWalletIDResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryGetSubWalletIDByOriginalWalletIDResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'subWalletID', protoName: 'subWalletID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetSubWalletIDByOriginalWalletIDResponse clone() => QueryGetSubWalletIDByOriginalWalletIDResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetSubWalletIDByOriginalWalletIDResponse copyWith(void Function(QueryGetSubWalletIDByOriginalWalletIDResponse) updates) => super.copyWith((message) => updates(message as QueryGetSubWalletIDByOriginalWalletIDResponse)) as QueryGetSubWalletIDByOriginalWalletIDResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryGetSubWalletIDByOriginalWalletIDResponse create() => QueryGetSubWalletIDByOriginalWalletIDResponse._();
  QueryGetSubWalletIDByOriginalWalletIDResponse createEmptyInstance() => create();
  static $pb.PbList<QueryGetSubWalletIDByOriginalWalletIDResponse> createRepeated() => $pb.PbList<QueryGetSubWalletIDByOriginalWalletIDResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryGetSubWalletIDByOriginalWalletIDResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetSubWalletIDByOriginalWalletIDResponse>(create);
  static QueryGetSubWalletIDByOriginalWalletIDResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get subWalletID => $_getSZ(0);
  @$pb.TagNumber(1)
  set subWalletID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSubWalletID() => $_has(0);
  @$pb.TagNumber(1)
  void clearSubWalletID() => clearField(1);
}

class StoreHash extends $pb.GeneratedMessage {
  factory StoreHash({
    $core.String? key,
    $core.String? hash,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    if (hash != null) {
      $result.hash = hash;
    }
    return $result;
  }
  StoreHash._() : super();
  factory StoreHash.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StoreHash.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StoreHash', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..aOS(2, _omitFieldNames ? '' : 'hash')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StoreHash clone() => StoreHash()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StoreHash copyWith(void Function(StoreHash) updates) => super.copyWith((message) => updates(message as StoreHash)) as StoreHash;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StoreHash create() => StoreHash._();
  StoreHash createEmptyInstance() => create();
  static $pb.PbList<StoreHash> createRepeated() => $pb.PbList<StoreHash>();
  @$core.pragma('dart2js:noInline')
  static StoreHash getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StoreHash>(create);
  static StoreHash? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get hash => $_getSZ(1);
  @$pb.TagNumber(2)
  set hash($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearHash() => clearField(2);
}

class MsgGetStoreHash extends $pb.GeneratedMessage {
  factory MsgGetStoreHash() => create();
  MsgGetStoreHash._() : super();
  factory MsgGetStoreHash.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgGetStoreHash.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgGetStoreHash', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgGetStoreHash clone() => MsgGetStoreHash()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgGetStoreHash copyWith(void Function(MsgGetStoreHash) updates) => super.copyWith((message) => updates(message as MsgGetStoreHash)) as MsgGetStoreHash;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgGetStoreHash create() => MsgGetStoreHash._();
  MsgGetStoreHash createEmptyInstance() => create();
  static $pb.PbList<MsgGetStoreHash> createRepeated() => $pb.PbList<MsgGetStoreHash>();
  @$core.pragma('dart2js:noInline')
  static MsgGetStoreHash getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgGetStoreHash>(create);
  static MsgGetStoreHash? _defaultInstance;
}

class GetStoreHashReply extends $pb.GeneratedMessage {
  factory GetStoreHashReply({
    $core.Iterable<StoreHash>? hashes,
  }) {
    final $result = create();
    if (hashes != null) {
      $result.hashes.addAll(hashes);
    }
    return $result;
  }
  GetStoreHashReply._() : super();
  factory GetStoreHashReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetStoreHashReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetStoreHashReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..pc<StoreHash>(1, _omitFieldNames ? '' : 'hashes', $pb.PbFieldType.PM, subBuilder: StoreHash.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetStoreHashReply clone() => GetStoreHashReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetStoreHashReply copyWith(void Function(GetStoreHashReply) updates) => super.copyWith((message) => updates(message as GetStoreHashReply)) as GetStoreHashReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetStoreHashReply create() => GetStoreHashReply._();
  GetStoreHashReply createEmptyInstance() => create();
  static $pb.PbList<GetStoreHashReply> createRepeated() => $pb.PbList<GetStoreHashReply>();
  @$core.pragma('dart2js:noInline')
  static GetStoreHashReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetStoreHashReply>(create);
  static GetStoreHashReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<StoreHash> get hashes => $_getList(0);
}

class MsgAddAsValidator extends $pb.GeneratedMessage {
  factory MsgAddAsValidator() => create();
  MsgAddAsValidator._() : super();
  factory MsgAddAsValidator.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgAddAsValidator.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgAddAsValidator', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgAddAsValidator clone() => MsgAddAsValidator()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgAddAsValidator copyWith(void Function(MsgAddAsValidator) updates) => super.copyWith((message) => updates(message as MsgAddAsValidator)) as MsgAddAsValidator;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgAddAsValidator create() => MsgAddAsValidator._();
  MsgAddAsValidator createEmptyInstance() => create();
  static $pb.PbList<MsgAddAsValidator> createRepeated() => $pb.PbList<MsgAddAsValidator>();
  @$core.pragma('dart2js:noInline')
  static MsgAddAsValidator getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgAddAsValidator>(create);
  static MsgAddAsValidator? _defaultInstance;
}

class MsgSyncEnclave extends $pb.GeneratedMessage {
  factory MsgSyncEnclave({
    $core.String? pioneerID,
    $core.String? externalAddress,
    $core.String? pioneerArmorPrivK,
    $core.String? pioneerArmorPassPhrase,
    $core.String? seedNode,
  }) {
    final $result = create();
    if (pioneerID != null) {
      $result.pioneerID = pioneerID;
    }
    if (externalAddress != null) {
      $result.externalAddress = externalAddress;
    }
    if (pioneerArmorPrivK != null) {
      $result.pioneerArmorPrivK = pioneerArmorPrivK;
    }
    if (pioneerArmorPassPhrase != null) {
      $result.pioneerArmorPassPhrase = pioneerArmorPassPhrase;
    }
    if (seedNode != null) {
      $result.seedNode = seedNode;
    }
    return $result;
  }
  MsgSyncEnclave._() : super();
  factory MsgSyncEnclave.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgSyncEnclave.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgSyncEnclave', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'pioneerID', protoName: 'pioneerID')
    ..aOS(2, _omitFieldNames ? '' : 'externalAddress', protoName: 'externalAddress')
    ..aOS(3, _omitFieldNames ? '' : 'pioneerArmorPrivK', protoName: 'pioneerArmorPrivK')
    ..aOS(4, _omitFieldNames ? '' : 'pioneerArmorPassPhrase', protoName: 'pioneerArmorPassPhrase')
    ..aOS(5, _omitFieldNames ? '' : 'seedNode', protoName: 'seedNode')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgSyncEnclave clone() => MsgSyncEnclave()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgSyncEnclave copyWith(void Function(MsgSyncEnclave) updates) => super.copyWith((message) => updates(message as MsgSyncEnclave)) as MsgSyncEnclave;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgSyncEnclave create() => MsgSyncEnclave._();
  MsgSyncEnclave createEmptyInstance() => create();
  static $pb.PbList<MsgSyncEnclave> createRepeated() => $pb.PbList<MsgSyncEnclave>();
  @$core.pragma('dart2js:noInline')
  static MsgSyncEnclave getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgSyncEnclave>(create);
  static MsgSyncEnclave? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pioneerID => $_getSZ(0);
  @$pb.TagNumber(1)
  set pioneerID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPioneerID() => $_has(0);
  @$pb.TagNumber(1)
  void clearPioneerID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get externalAddress => $_getSZ(1);
  @$pb.TagNumber(2)
  set externalAddress($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasExternalAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearExternalAddress() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get pioneerArmorPrivK => $_getSZ(2);
  @$pb.TagNumber(3)
  set pioneerArmorPrivK($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPioneerArmorPrivK() => $_has(2);
  @$pb.TagNumber(3)
  void clearPioneerArmorPrivK() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get pioneerArmorPassPhrase => $_getSZ(3);
  @$pb.TagNumber(4)
  set pioneerArmorPassPhrase($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPioneerArmorPassPhrase() => $_has(3);
  @$pb.TagNumber(4)
  void clearPioneerArmorPassPhrase() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get seedNode => $_getSZ(4);
  @$pb.TagNumber(5)
  set seedNode($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSeedNode() => $_has(4);
  @$pb.TagNumber(5)
  void clearSeedNode() => clearField(5);
}

class MsgUpgradeEnclave extends $pb.GeneratedMessage {
  factory MsgUpgradeEnclave({
    $core.List<$core.int>? remoteReport,
    $core.String? enclavePubK,
  }) {
    final $result = create();
    if (remoteReport != null) {
      $result.remoteReport = remoteReport;
    }
    if (enclavePubK != null) {
      $result.enclavePubK = enclavePubK;
    }
    return $result;
  }
  MsgUpgradeEnclave._() : super();
  factory MsgUpgradeEnclave.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgUpgradeEnclave.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgUpgradeEnclave', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'remoteReport', $pb.PbFieldType.OY, protoName: 'remoteReport')
    ..aOS(2, _omitFieldNames ? '' : 'enclavePubK', protoName: 'enclavePubK')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgUpgradeEnclave clone() => MsgUpgradeEnclave()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgUpgradeEnclave copyWith(void Function(MsgUpgradeEnclave) updates) => super.copyWith((message) => updates(message as MsgUpgradeEnclave)) as MsgUpgradeEnclave;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgUpgradeEnclave create() => MsgUpgradeEnclave._();
  MsgUpgradeEnclave createEmptyInstance() => create();
  static $pb.PbList<MsgUpgradeEnclave> createRepeated() => $pb.PbList<MsgUpgradeEnclave>();
  @$core.pragma('dart2js:noInline')
  static MsgUpgradeEnclave getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgUpgradeEnclave>(create);
  static MsgUpgradeEnclave? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get remoteReport => $_getN(0);
  @$pb.TagNumber(1)
  set remoteReport($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRemoteReport() => $_has(0);
  @$pb.TagNumber(1)
  void clearRemoteReport() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get enclavePubK => $_getSZ(1);
  @$pb.TagNumber(2)
  set enclavePubK($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEnclavePubK() => $_has(1);
  @$pb.TagNumber(2)
  void clearEnclavePubK() => clearField(2);
}

class UpgradeEnclaveReply extends $pb.GeneratedMessage {
  factory UpgradeEnclaveReply({
    $core.List<$core.int>? remoteReport,
    $core.List<$core.int>? encEnclavePrivateStateEnclavePubK,
  }) {
    final $result = create();
    if (remoteReport != null) {
      $result.remoteReport = remoteReport;
    }
    if (encEnclavePrivateStateEnclavePubK != null) {
      $result.encEnclavePrivateStateEnclavePubK = encEnclavePrivateStateEnclavePubK;
    }
    return $result;
  }
  UpgradeEnclaveReply._() : super();
  factory UpgradeEnclaveReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpgradeEnclaveReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpgradeEnclaveReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'remoteReport', $pb.PbFieldType.OY, protoName: 'remoteReport')
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'encEnclavePrivateStateEnclavePubK', $pb.PbFieldType.OY, protoName: 'encEnclavePrivateStateEnclavePubK')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpgradeEnclaveReply clone() => UpgradeEnclaveReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpgradeEnclaveReply copyWith(void Function(UpgradeEnclaveReply) updates) => super.copyWith((message) => updates(message as UpgradeEnclaveReply)) as UpgradeEnclaveReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpgradeEnclaveReply create() => UpgradeEnclaveReply._();
  UpgradeEnclaveReply createEmptyInstance() => create();
  static $pb.PbList<UpgradeEnclaveReply> createRepeated() => $pb.PbList<UpgradeEnclaveReply>();
  @$core.pragma('dart2js:noInline')
  static UpgradeEnclaveReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpgradeEnclaveReply>(create);
  static UpgradeEnclaveReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get remoteReport => $_getN(0);
  @$pb.TagNumber(1)
  set remoteReport($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRemoteReport() => $_has(0);
  @$pb.TagNumber(1)
  void clearRemoteReport() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get encEnclavePrivateStateEnclavePubK => $_getN(1);
  @$pb.TagNumber(2)
  set encEnclavePrivateStateEnclavePubK($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEncEnclavePrivateStateEnclavePubK() => $_has(1);
  @$pb.TagNumber(2)
  void clearEncEnclavePrivateStateEnclavePubK() => clearField(2);
}

class MsgExportPrivateKey extends $pb.GeneratedMessage {
  factory MsgExportPrivateKey({
    $core.String? pubKID,
  }) {
    final $result = create();
    if (pubKID != null) {
      $result.pubKID = pubKID;
    }
    return $result;
  }
  MsgExportPrivateKey._() : super();
  factory MsgExportPrivateKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgExportPrivateKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgExportPrivateKey', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'pubKID', protoName: 'pubKID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgExportPrivateKey clone() => MsgExportPrivateKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgExportPrivateKey copyWith(void Function(MsgExportPrivateKey) updates) => super.copyWith((message) => updates(message as MsgExportPrivateKey)) as MsgExportPrivateKey;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgExportPrivateKey create() => MsgExportPrivateKey._();
  MsgExportPrivateKey createEmptyInstance() => create();
  static $pb.PbList<MsgExportPrivateKey> createRepeated() => $pb.PbList<MsgExportPrivateKey>();
  @$core.pragma('dart2js:noInline')
  static MsgExportPrivateKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgExportPrivateKey>(create);
  static MsgExportPrivateKey? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pubKID => $_getSZ(0);
  @$pb.TagNumber(1)
  set pubKID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPubKID() => $_has(0);
  @$pb.TagNumber(1)
  void clearPubKID() => clearField(1);
}

class MsgRemovePrivateKey extends $pb.GeneratedMessage {
  factory MsgRemovePrivateKey({
    $core.String? pubKID,
  }) {
    final $result = create();
    if (pubKID != null) {
      $result.pubKID = pubKID;
    }
    return $result;
  }
  MsgRemovePrivateKey._() : super();
  factory MsgRemovePrivateKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgRemovePrivateKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgRemovePrivateKey', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'pubKID', protoName: 'pubKID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgRemovePrivateKey clone() => MsgRemovePrivateKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgRemovePrivateKey copyWith(void Function(MsgRemovePrivateKey) updates) => super.copyWith((message) => updates(message as MsgRemovePrivateKey)) as MsgRemovePrivateKey;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgRemovePrivateKey create() => MsgRemovePrivateKey._();
  MsgRemovePrivateKey createEmptyInstance() => create();
  static $pb.PbList<MsgRemovePrivateKey> createRepeated() => $pb.PbList<MsgRemovePrivateKey>();
  @$core.pragma('dart2js:noInline')
  static MsgRemovePrivateKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgRemovePrivateKey>(create);
  static MsgRemovePrivateKey? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pubKID => $_getSZ(0);
  @$pb.TagNumber(1)
  set pubKID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPubKID() => $_has(0);
  @$pb.TagNumber(1)
  void clearPubKID() => clearField(1);
}

class MsgExportPrivateState extends $pb.GeneratedMessage {
  factory MsgExportPrivateState() => create();
  MsgExportPrivateState._() : super();
  factory MsgExportPrivateState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgExportPrivateState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgExportPrivateState', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgExportPrivateState clone() => MsgExportPrivateState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgExportPrivateState copyWith(void Function(MsgExportPrivateState) updates) => super.copyWith((message) => updates(message as MsgExportPrivateState)) as MsgExportPrivateState;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgExportPrivateState create() => MsgExportPrivateState._();
  MsgExportPrivateState createEmptyInstance() => create();
  static $pb.PbList<MsgExportPrivateState> createRepeated() => $pb.PbList<MsgExportPrivateState>();
  @$core.pragma('dart2js:noInline')
  static MsgExportPrivateState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgExportPrivateState>(create);
  static MsgExportPrivateState? _defaultInstance;
}

class MsgUpdateSSIntervalKey extends $pb.GeneratedMessage {
  factory MsgUpdateSSIntervalKey() => create();
  MsgUpdateSSIntervalKey._() : super();
  factory MsgUpdateSSIntervalKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgUpdateSSIntervalKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgUpdateSSIntervalKey', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgUpdateSSIntervalKey clone() => MsgUpdateSSIntervalKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgUpdateSSIntervalKey copyWith(void Function(MsgUpdateSSIntervalKey) updates) => super.copyWith((message) => updates(message as MsgUpdateSSIntervalKey)) as MsgUpdateSSIntervalKey;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgUpdateSSIntervalKey create() => MsgUpdateSSIntervalKey._();
  MsgUpdateSSIntervalKey createEmptyInstance() => create();
  static $pb.PbList<MsgUpdateSSIntervalKey> createRepeated() => $pb.PbList<MsgUpdateSSIntervalKey>();
  @$core.pragma('dart2js:noInline')
  static MsgUpdateSSIntervalKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgUpdateSSIntervalKey>(create);
  static MsgUpdateSSIntervalKey? _defaultInstance;
}

class UpdateSSIntervalKeyReply extends $pb.GeneratedMessage {
  factory UpdateSSIntervalKeyReply() => create();
  UpdateSSIntervalKeyReply._() : super();
  factory UpdateSSIntervalKeyReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSSIntervalKeyReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSSIntervalKeyReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSSIntervalKeyReply clone() => UpdateSSIntervalKeyReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSSIntervalKeyReply copyWith(void Function(UpdateSSIntervalKeyReply) updates) => super.copyWith((message) => updates(message as UpdateSSIntervalKeyReply)) as UpdateSSIntervalKeyReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSSIntervalKeyReply create() => UpdateSSIntervalKeyReply._();
  UpdateSSIntervalKeyReply createEmptyInstance() => create();
  static $pb.PbList<UpdateSSIntervalKeyReply> createRepeated() => $pb.PbList<UpdateSSIntervalKeyReply>();
  @$core.pragma('dart2js:noInline')
  static UpdateSSIntervalKeyReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSSIntervalKeyReply>(create);
  static UpdateSSIntervalKeyReply? _defaultInstance;
}

class RemovePrivateKeyReply extends $pb.GeneratedMessage {
  factory RemovePrivateKeyReply() => create();
  RemovePrivateKeyReply._() : super();
  factory RemovePrivateKeyReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemovePrivateKeyReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemovePrivateKeyReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemovePrivateKeyReply clone() => RemovePrivateKeyReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemovePrivateKeyReply copyWith(void Function(RemovePrivateKeyReply) updates) => super.copyWith((message) => updates(message as RemovePrivateKeyReply)) as RemovePrivateKeyReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemovePrivateKeyReply create() => RemovePrivateKeyReply._();
  RemovePrivateKeyReply createEmptyInstance() => create();
  static $pb.PbList<RemovePrivateKeyReply> createRepeated() => $pb.PbList<RemovePrivateKeyReply>();
  @$core.pragma('dart2js:noInline')
  static RemovePrivateKeyReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemovePrivateKeyReply>(create);
  static RemovePrivateKeyReply? _defaultInstance;
}

class ExportPrivateKeyReply extends $pb.GeneratedMessage {
  factory ExportPrivateKeyReply({
    $core.String? privK,
  }) {
    final $result = create();
    if (privK != null) {
      $result.privK = privK;
    }
    return $result;
  }
  ExportPrivateKeyReply._() : super();
  factory ExportPrivateKeyReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExportPrivateKeyReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ExportPrivateKeyReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'privK', protoName: 'privK')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExportPrivateKeyReply clone() => ExportPrivateKeyReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExportPrivateKeyReply copyWith(void Function(ExportPrivateKeyReply) updates) => super.copyWith((message) => updates(message as ExportPrivateKeyReply)) as ExportPrivateKeyReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExportPrivateKeyReply create() => ExportPrivateKeyReply._();
  ExportPrivateKeyReply createEmptyInstance() => create();
  static $pb.PbList<ExportPrivateKeyReply> createRepeated() => $pb.PbList<ExportPrivateKeyReply>();
  @$core.pragma('dart2js:noInline')
  static ExportPrivateKeyReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExportPrivateKeyReply>(create);
  static ExportPrivateKeyReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get privK => $_getSZ(0);
  @$pb.TagNumber(1)
  set privK($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPrivK() => $_has(0);
  @$pb.TagNumber(1)
  void clearPrivK() => clearField(1);
}

class ExportPrivateStateReply extends $pb.GeneratedMessage {
  factory ExportPrivateStateReply({
    $core.String? state,
  }) {
    final $result = create();
    if (state != null) {
      $result.state = state;
    }
    return $result;
  }
  ExportPrivateStateReply._() : super();
  factory ExportPrivateStateReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExportPrivateStateReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ExportPrivateStateReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'state')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExportPrivateStateReply clone() => ExportPrivateStateReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExportPrivateStateReply copyWith(void Function(ExportPrivateStateReply) updates) => super.copyWith((message) => updates(message as ExportPrivateStateReply)) as ExportPrivateStateReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExportPrivateStateReply create() => ExportPrivateStateReply._();
  ExportPrivateStateReply createEmptyInstance() => create();
  static $pb.PbList<ExportPrivateStateReply> createRepeated() => $pb.PbList<ExportPrivateStateReply>();
  @$core.pragma('dart2js:noInline')
  static ExportPrivateStateReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExportPrivateStateReply>(create);
  static ExportPrivateStateReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get state => $_getSZ(0);
  @$pb.TagNumber(1)
  set state($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => clearField(1);
}

class ValidateAuthenticateServiceProviderRequest extends $pb.GeneratedMessage {
  factory ValidateAuthenticateServiceProviderRequest({
    $core.String? pubKID,
    $core.String? serviceProviderType,
  }) {
    final $result = create();
    if (pubKID != null) {
      $result.pubKID = pubKID;
    }
    if (serviceProviderType != null) {
      $result.serviceProviderType = serviceProviderType;
    }
    return $result;
  }
  ValidateAuthenticateServiceProviderRequest._() : super();
  factory ValidateAuthenticateServiceProviderRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValidateAuthenticateServiceProviderRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ValidateAuthenticateServiceProviderRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'pubKID', protoName: 'pubKID')
    ..aOS(2, _omitFieldNames ? '' : 'serviceProviderType', protoName: 'serviceProviderType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValidateAuthenticateServiceProviderRequest clone() => ValidateAuthenticateServiceProviderRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValidateAuthenticateServiceProviderRequest copyWith(void Function(ValidateAuthenticateServiceProviderRequest) updates) => super.copyWith((message) => updates(message as ValidateAuthenticateServiceProviderRequest)) as ValidateAuthenticateServiceProviderRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ValidateAuthenticateServiceProviderRequest create() => ValidateAuthenticateServiceProviderRequest._();
  ValidateAuthenticateServiceProviderRequest createEmptyInstance() => create();
  static $pb.PbList<ValidateAuthenticateServiceProviderRequest> createRepeated() => $pb.PbList<ValidateAuthenticateServiceProviderRequest>();
  @$core.pragma('dart2js:noInline')
  static ValidateAuthenticateServiceProviderRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValidateAuthenticateServiceProviderRequest>(create);
  static ValidateAuthenticateServiceProviderRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pubKID => $_getSZ(0);
  @$pb.TagNumber(1)
  set pubKID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPubKID() => $_has(0);
  @$pb.TagNumber(1)
  void clearPubKID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get serviceProviderType => $_getSZ(1);
  @$pb.TagNumber(2)
  set serviceProviderType($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasServiceProviderType() => $_has(1);
  @$pb.TagNumber(2)
  void clearServiceProviderType() => clearField(2);
}

class ValidateAuthenticateServiceProviderReply extends $pb.GeneratedMessage {
  factory ValidateAuthenticateServiceProviderReply({
    $core.bool? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  ValidateAuthenticateServiceProviderReply._() : super();
  factory ValidateAuthenticateServiceProviderReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValidateAuthenticateServiceProviderReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ValidateAuthenticateServiceProviderReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValidateAuthenticateServiceProviderReply clone() => ValidateAuthenticateServiceProviderReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValidateAuthenticateServiceProviderReply copyWith(void Function(ValidateAuthenticateServiceProviderReply) updates) => super.copyWith((message) => updates(message as ValidateAuthenticateServiceProviderReply)) as ValidateAuthenticateServiceProviderReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ValidateAuthenticateServiceProviderReply create() => ValidateAuthenticateServiceProviderReply._();
  ValidateAuthenticateServiceProviderReply createEmptyInstance() => create();
  static $pb.PbList<ValidateAuthenticateServiceProviderReply> createRepeated() => $pb.PbList<ValidateAuthenticateServiceProviderReply>();
  @$core.pragma('dart2js:noInline')
  static ValidateAuthenticateServiceProviderReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValidateAuthenticateServiceProviderReply>(create);
  static ValidateAuthenticateServiceProviderReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class MsgInitEnclave extends $pb.GeneratedMessage {
  factory MsgInitEnclave({
    $core.String? pioneerID,
    $core.String? externalAddress,
    $core.String? pioneerArmorPrivK,
    $core.String? pioneerArmorPassPhrase,
    $core.String? jarID,
    $core.String? regulatorID,
    $core.String? signerID,
    $core.String? uniqueID,
  }) {
    final $result = create();
    if (pioneerID != null) {
      $result.pioneerID = pioneerID;
    }
    if (externalAddress != null) {
      $result.externalAddress = externalAddress;
    }
    if (pioneerArmorPrivK != null) {
      $result.pioneerArmorPrivK = pioneerArmorPrivK;
    }
    if (pioneerArmorPassPhrase != null) {
      $result.pioneerArmorPassPhrase = pioneerArmorPassPhrase;
    }
    if (jarID != null) {
      $result.jarID = jarID;
    }
    if (regulatorID != null) {
      $result.regulatorID = regulatorID;
    }
    if (signerID != null) {
      $result.signerID = signerID;
    }
    if (uniqueID != null) {
      $result.uniqueID = uniqueID;
    }
    return $result;
  }
  MsgInitEnclave._() : super();
  factory MsgInitEnclave.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgInitEnclave.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgInitEnclave', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'pioneerID', protoName: 'pioneerID')
    ..aOS(2, _omitFieldNames ? '' : 'externalAddress', protoName: 'externalAddress')
    ..aOS(3, _omitFieldNames ? '' : 'pioneerArmorPrivK', protoName: 'pioneerArmorPrivK')
    ..aOS(4, _omitFieldNames ? '' : 'pioneerArmorPassPhrase', protoName: 'pioneerArmorPassPhrase')
    ..aOS(5, _omitFieldNames ? '' : 'jarID', protoName: 'jarID')
    ..aOS(6, _omitFieldNames ? '' : 'regulatorID', protoName: 'regulatorID')
    ..aOS(7, _omitFieldNames ? '' : 'signerID', protoName: 'signerID')
    ..aOS(8, _omitFieldNames ? '' : 'uniqueID', protoName: 'uniqueID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgInitEnclave clone() => MsgInitEnclave()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgInitEnclave copyWith(void Function(MsgInitEnclave) updates) => super.copyWith((message) => updates(message as MsgInitEnclave)) as MsgInitEnclave;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgInitEnclave create() => MsgInitEnclave._();
  MsgInitEnclave createEmptyInstance() => create();
  static $pb.PbList<MsgInitEnclave> createRepeated() => $pb.PbList<MsgInitEnclave>();
  @$core.pragma('dart2js:noInline')
  static MsgInitEnclave getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgInitEnclave>(create);
  static MsgInitEnclave? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pioneerID => $_getSZ(0);
  @$pb.TagNumber(1)
  set pioneerID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPioneerID() => $_has(0);
  @$pb.TagNumber(1)
  void clearPioneerID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get externalAddress => $_getSZ(1);
  @$pb.TagNumber(2)
  set externalAddress($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasExternalAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearExternalAddress() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get pioneerArmorPrivK => $_getSZ(2);
  @$pb.TagNumber(3)
  set pioneerArmorPrivK($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPioneerArmorPrivK() => $_has(2);
  @$pb.TagNumber(3)
  void clearPioneerArmorPrivK() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get pioneerArmorPassPhrase => $_getSZ(3);
  @$pb.TagNumber(4)
  set pioneerArmorPassPhrase($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPioneerArmorPassPhrase() => $_has(3);
  @$pb.TagNumber(4)
  void clearPioneerArmorPassPhrase() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get jarID => $_getSZ(4);
  @$pb.TagNumber(5)
  set jarID($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasJarID() => $_has(4);
  @$pb.TagNumber(5)
  void clearJarID() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get regulatorID => $_getSZ(5);
  @$pb.TagNumber(6)
  set regulatorID($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRegulatorID() => $_has(5);
  @$pb.TagNumber(6)
  void clearRegulatorID() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get signerID => $_getSZ(6);
  @$pb.TagNumber(7)
  set signerID($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSignerID() => $_has(6);
  @$pb.TagNumber(7)
  void clearSignerID() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get uniqueID => $_getSZ(7);
  @$pb.TagNumber(8)
  set uniqueID($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasUniqueID() => $_has(7);
  @$pb.TagNumber(8)
  void clearUniqueID() => clearField(8);
}

class VShareSignatory extends $pb.GeneratedMessage {
  factory VShareSignatory({
    $core.List<$core.int>? encSignatoryVShare,
    $21.VShareBindData? vShareBind,
  }) {
    final $result = create();
    if (encSignatoryVShare != null) {
      $result.encSignatoryVShare = encSignatoryVShare;
    }
    if (vShareBind != null) {
      $result.vShareBind = vShareBind;
    }
    return $result;
  }
  VShareSignatory._() : super();
  factory VShareSignatory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VShareSignatory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VShareSignatory', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'encSignatoryVShare', $pb.PbFieldType.OY, protoName: 'encSignatoryVShare')
    ..aOM<$21.VShareBindData>(2, _omitFieldNames ? '' : 'vShareBind', protoName: 'vShareBind', subBuilder: $21.VShareBindData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VShareSignatory clone() => VShareSignatory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VShareSignatory copyWith(void Function(VShareSignatory) updates) => super.copyWith((message) => updates(message as VShareSignatory)) as VShareSignatory;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VShareSignatory create() => VShareSignatory._();
  VShareSignatory createEmptyInstance() => create();
  static $pb.PbList<VShareSignatory> createRepeated() => $pb.PbList<VShareSignatory>();
  @$core.pragma('dart2js:noInline')
  static VShareSignatory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VShareSignatory>(create);
  static VShareSignatory? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get encSignatoryVShare => $_getN(0);
  @$pb.TagNumber(1)
  set encSignatoryVShare($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEncSignatoryVShare() => $_has(0);
  @$pb.TagNumber(1)
  void clearEncSignatoryVShare() => clearField(1);

  @$pb.TagNumber(2)
  $21.VShareBindData get vShareBind => $_getN(1);
  @$pb.TagNumber(2)
  set vShareBind($21.VShareBindData v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasVShareBind() => $_has(1);
  @$pb.TagNumber(2)
  void clearVShareBind() => clearField(2);
  @$pb.TagNumber(2)
  $21.VShareBindData ensureVShareBind() => $_ensure(1);
}

class ValidateAuthorizedSignerRequest extends $pb.GeneratedMessage {
  factory ValidateAuthorizedSignerRequest({
    $core.String? creator,
    VShareSignatory? requestingSignatory,
    $core.Iterable<VShareSignatory>? requiredSignatory,
    $core.Iterable<VShareSignatory>? completedSignatory,
  }) {
    final $result = create();
    if (creator != null) {
      $result.creator = creator;
    }
    if (requestingSignatory != null) {
      $result.requestingSignatory = requestingSignatory;
    }
    if (requiredSignatory != null) {
      $result.requiredSignatory.addAll(requiredSignatory);
    }
    if (completedSignatory != null) {
      $result.completedSignatory.addAll(completedSignatory);
    }
    return $result;
  }
  ValidateAuthorizedSignerRequest._() : super();
  factory ValidateAuthorizedSignerRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValidateAuthorizedSignerRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ValidateAuthorizedSignerRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'creator')
    ..aOM<VShareSignatory>(2, _omitFieldNames ? '' : 'requestingSignatory', protoName: 'requestingSignatory', subBuilder: VShareSignatory.create)
    ..pc<VShareSignatory>(3, _omitFieldNames ? '' : 'requiredSignatory', $pb.PbFieldType.PM, protoName: 'requiredSignatory', subBuilder: VShareSignatory.create)
    ..pc<VShareSignatory>(4, _omitFieldNames ? '' : 'completedSignatory', $pb.PbFieldType.PM, protoName: 'completedSignatory', subBuilder: VShareSignatory.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValidateAuthorizedSignerRequest clone() => ValidateAuthorizedSignerRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValidateAuthorizedSignerRequest copyWith(void Function(ValidateAuthorizedSignerRequest) updates) => super.copyWith((message) => updates(message as ValidateAuthorizedSignerRequest)) as ValidateAuthorizedSignerRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ValidateAuthorizedSignerRequest create() => ValidateAuthorizedSignerRequest._();
  ValidateAuthorizedSignerRequest createEmptyInstance() => create();
  static $pb.PbList<ValidateAuthorizedSignerRequest> createRepeated() => $pb.PbList<ValidateAuthorizedSignerRequest>();
  @$core.pragma('dart2js:noInline')
  static ValidateAuthorizedSignerRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValidateAuthorizedSignerRequest>(create);
  static ValidateAuthorizedSignerRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  VShareSignatory get requestingSignatory => $_getN(1);
  @$pb.TagNumber(2)
  set requestingSignatory(VShareSignatory v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequestingSignatory() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestingSignatory() => clearField(2);
  @$pb.TagNumber(2)
  VShareSignatory ensureRequestingSignatory() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<VShareSignatory> get requiredSignatory => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<VShareSignatory> get completedSignatory => $_getList(3);
}

class ValidateAuthorizedSignerReply extends $pb.GeneratedMessage {
  factory ValidateAuthorizedSignerReply({
    $core.bool? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  ValidateAuthorizedSignerReply._() : super();
  factory ValidateAuthorizedSignerReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValidateAuthorizedSignerReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ValidateAuthorizedSignerReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValidateAuthorizedSignerReply clone() => ValidateAuthorizedSignerReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValidateAuthorizedSignerReply copyWith(void Function(ValidateAuthorizedSignerReply) updates) => super.copyWith((message) => updates(message as ValidateAuthorizedSignerReply)) as ValidateAuthorizedSignerReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ValidateAuthorizedSignerReply create() => ValidateAuthorizedSignerReply._();
  ValidateAuthorizedSignerReply createEmptyInstance() => create();
  static $pb.PbList<ValidateAuthorizedSignerReply> createRepeated() => $pb.PbList<ValidateAuthorizedSignerReply>();
  @$core.pragma('dart2js:noInline')
  static ValidateAuthorizedSignerReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValidateAuthorizedSignerReply>(create);
  static ValidateAuthorizedSignerReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class ValidateAuthorizedSignatoryRequest extends $pb.GeneratedMessage {
  factory ValidateAuthorizedSignatoryRequest({
    $core.String? creator,
    VShareSignatory? signatory,
    $core.Iterable<VShareSignatory>? currentSignatory,
  }) {
    final $result = create();
    if (creator != null) {
      $result.creator = creator;
    }
    if (signatory != null) {
      $result.signatory = signatory;
    }
    if (currentSignatory != null) {
      $result.currentSignatory.addAll(currentSignatory);
    }
    return $result;
  }
  ValidateAuthorizedSignatoryRequest._() : super();
  factory ValidateAuthorizedSignatoryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValidateAuthorizedSignatoryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ValidateAuthorizedSignatoryRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'creator')
    ..aOM<VShareSignatory>(2, _omitFieldNames ? '' : 'signatory', subBuilder: VShareSignatory.create)
    ..pc<VShareSignatory>(3, _omitFieldNames ? '' : 'currentSignatory', $pb.PbFieldType.PM, protoName: 'currentSignatory', subBuilder: VShareSignatory.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValidateAuthorizedSignatoryRequest clone() => ValidateAuthorizedSignatoryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValidateAuthorizedSignatoryRequest copyWith(void Function(ValidateAuthorizedSignatoryRequest) updates) => super.copyWith((message) => updates(message as ValidateAuthorizedSignatoryRequest)) as ValidateAuthorizedSignatoryRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ValidateAuthorizedSignatoryRequest create() => ValidateAuthorizedSignatoryRequest._();
  ValidateAuthorizedSignatoryRequest createEmptyInstance() => create();
  static $pb.PbList<ValidateAuthorizedSignatoryRequest> createRepeated() => $pb.PbList<ValidateAuthorizedSignatoryRequest>();
  @$core.pragma('dart2js:noInline')
  static ValidateAuthorizedSignatoryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValidateAuthorizedSignatoryRequest>(create);
  static ValidateAuthorizedSignatoryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  VShareSignatory get signatory => $_getN(1);
  @$pb.TagNumber(2)
  set signatory(VShareSignatory v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSignatory() => $_has(1);
  @$pb.TagNumber(2)
  void clearSignatory() => clearField(2);
  @$pb.TagNumber(2)
  VShareSignatory ensureSignatory() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<VShareSignatory> get currentSignatory => $_getList(2);
}

class ValidateAuthorizedSignatoryReply extends $pb.GeneratedMessage {
  factory ValidateAuthorizedSignatoryReply({
    $core.bool? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  ValidateAuthorizedSignatoryReply._() : super();
  factory ValidateAuthorizedSignatoryReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValidateAuthorizedSignatoryReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ValidateAuthorizedSignatoryReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValidateAuthorizedSignatoryReply clone() => ValidateAuthorizedSignatoryReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValidateAuthorizedSignatoryReply copyWith(void Function(ValidateAuthorizedSignatoryReply) updates) => super.copyWith((message) => updates(message as ValidateAuthorizedSignatoryReply)) as ValidateAuthorizedSignatoryReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ValidateAuthorizedSignatoryReply create() => ValidateAuthorizedSignatoryReply._();
  ValidateAuthorizedSignatoryReply createEmptyInstance() => create();
  static $pb.PbList<ValidateAuthorizedSignatoryReply> createRepeated() => $pb.PbList<ValidateAuthorizedSignatoryReply>();
  @$core.pragma('dart2js:noInline')
  static ValidateAuthorizedSignatoryReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValidateAuthorizedSignatoryReply>(create);
  static ValidateAuthorizedSignatoryReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class MsgUpdateHeight extends $pb.GeneratedMessage {
  factory MsgUpdateHeight({
    $fixnum.Int64? height,
    $core.bool? isProposer,
  }) {
    final $result = create();
    if (height != null) {
      $result.height = height;
    }
    if (isProposer != null) {
      $result.isProposer = isProposer;
    }
    return $result;
  }
  MsgUpdateHeight._() : super();
  factory MsgUpdateHeight.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgUpdateHeight.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgUpdateHeight', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'height')
    ..aOB(2, _omitFieldNames ? '' : 'isProposer', protoName: 'isProposer')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgUpdateHeight clone() => MsgUpdateHeight()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgUpdateHeight copyWith(void Function(MsgUpdateHeight) updates) => super.copyWith((message) => updates(message as MsgUpdateHeight)) as MsgUpdateHeight;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgUpdateHeight create() => MsgUpdateHeight._();
  MsgUpdateHeight createEmptyInstance() => create();
  static $pb.PbList<MsgUpdateHeight> createRepeated() => $pb.PbList<MsgUpdateHeight>();
  @$core.pragma('dart2js:noInline')
  static MsgUpdateHeight getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgUpdateHeight>(create);
  static MsgUpdateHeight? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get height => $_getI64(0);
  @$pb.TagNumber(1)
  set height($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeight() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeight() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isProposer => $_getBF(1);
  @$pb.TagNumber(2)
  set isProposer($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsProposer() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsProposer() => clearField(2);
}

class MsgScanTransactions extends $pb.GeneratedMessage {
  factory MsgScanTransactions({
    $16.Timestamp? timestamp,
    $fixnum.Int64? height,
    $0.MsgTransferFunds? msg,
    $core.String? exchangerate,
  }) {
    final $result = create();
    if (timestamp != null) {
      $result.timestamp = timestamp;
    }
    if (height != null) {
      $result.height = height;
    }
    if (msg != null) {
      $result.msg = msg;
    }
    if (exchangerate != null) {
      $result.exchangerate = exchangerate;
    }
    return $result;
  }
  MsgScanTransactions._() : super();
  factory MsgScanTransactions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgScanTransactions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgScanTransactions', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOM<$16.Timestamp>(1, _omitFieldNames ? '' : 'timestamp', subBuilder: $16.Timestamp.create)
    ..aInt64(2, _omitFieldNames ? '' : 'height')
    ..aOM<$0.MsgTransferFunds>(3, _omitFieldNames ? '' : 'msg', subBuilder: $0.MsgTransferFunds.create)
    ..aOS(4, _omitFieldNames ? '' : 'exchangerate')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgScanTransactions clone() => MsgScanTransactions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgScanTransactions copyWith(void Function(MsgScanTransactions) updates) => super.copyWith((message) => updates(message as MsgScanTransactions)) as MsgScanTransactions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgScanTransactions create() => MsgScanTransactions._();
  MsgScanTransactions createEmptyInstance() => create();
  static $pb.PbList<MsgScanTransactions> createRepeated() => $pb.PbList<MsgScanTransactions>();
  @$core.pragma('dart2js:noInline')
  static MsgScanTransactions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgScanTransactions>(create);
  static MsgScanTransactions? _defaultInstance;

  @$pb.TagNumber(1)
  $16.Timestamp get timestamp => $_getN(0);
  @$pb.TagNumber(1)
  set timestamp($16.Timestamp v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestamp() => clearField(1);
  @$pb.TagNumber(1)
  $16.Timestamp ensureTimestamp() => $_ensure(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get height => $_getI64(1);
  @$pb.TagNumber(2)
  set height($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHeight() => $_has(1);
  @$pb.TagNumber(2)
  void clearHeight() => clearField(2);

  @$pb.TagNumber(3)
  $0.MsgTransferFunds get msg => $_getN(2);
  @$pb.TagNumber(3)
  set msg($0.MsgTransferFunds v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMsg() => $_has(2);
  @$pb.TagNumber(3)
  void clearMsg() => clearField(3);
  @$pb.TagNumber(3)
  $0.MsgTransferFunds ensureMsg() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get exchangerate => $_getSZ(3);
  @$pb.TagNumber(4)
  set exchangerate($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasExchangerate() => $_has(3);
  @$pb.TagNumber(4)
  void clearExchangerate() => clearField(4);
}

class MsgSyncWallets extends $pb.GeneratedMessage {
  factory MsgSyncWallets({
    $core.bool? clear_1,
  }) {
    final $result = create();
    if (clear_1 != null) {
      $result.clear_1 = clear_1;
    }
    return $result;
  }
  MsgSyncWallets._() : super();
  factory MsgSyncWallets.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgSyncWallets.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgSyncWallets', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'clear')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgSyncWallets clone() => MsgSyncWallets()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgSyncWallets copyWith(void Function(MsgSyncWallets) updates) => super.copyWith((message) => updates(message as MsgSyncWallets)) as MsgSyncWallets;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgSyncWallets create() => MsgSyncWallets._();
  MsgSyncWallets createEmptyInstance() => create();
  static $pb.PbList<MsgSyncWallets> createRepeated() => $pb.PbList<MsgSyncWallets>();
  @$core.pragma('dart2js:noInline')
  static MsgSyncWallets getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgSyncWallets>(create);
  static MsgSyncWallets? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get clear_1 => $_getBF(0);
  @$pb.TagNumber(1)
  set clear_1($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasClear_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearClear_1() => clearField(1);
}

class SyncWalletsReply extends $pb.GeneratedMessage {
  factory SyncWalletsReply({
    $core.Iterable<$4.Wallet>? wallets,
  }) {
    final $result = create();
    if (wallets != null) {
      $result.wallets.addAll(wallets);
    }
    return $result;
  }
  SyncWalletsReply._() : super();
  factory SyncWalletsReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SyncWalletsReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SyncWalletsReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..pc<$4.Wallet>(1, _omitFieldNames ? '' : 'wallets', $pb.PbFieldType.PM, subBuilder: $4.Wallet.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SyncWalletsReply clone() => SyncWalletsReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SyncWalletsReply copyWith(void Function(SyncWalletsReply) updates) => super.copyWith((message) => updates(message as SyncWalletsReply)) as SyncWalletsReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SyncWalletsReply create() => SyncWalletsReply._();
  SyncWalletsReply createEmptyInstance() => create();
  static $pb.PbList<SyncWalletsReply> createRepeated() => $pb.PbList<SyncWalletsReply>();
  @$core.pragma('dart2js:noInline')
  static SyncWalletsReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncWalletsReply>(create);
  static SyncWalletsReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$4.Wallet> get wallets => $_getList(0);
}

class MsgSyncCredentials extends $pb.GeneratedMessage {
  factory MsgSyncCredentials({
    $core.bool? clear_1,
  }) {
    final $result = create();
    if (clear_1 != null) {
      $result.clear_1 = clear_1;
    }
    return $result;
  }
  MsgSyncCredentials._() : super();
  factory MsgSyncCredentials.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgSyncCredentials.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgSyncCredentials', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'clear')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgSyncCredentials clone() => MsgSyncCredentials()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgSyncCredentials copyWith(void Function(MsgSyncCredentials) updates) => super.copyWith((message) => updates(message as MsgSyncCredentials)) as MsgSyncCredentials;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgSyncCredentials create() => MsgSyncCredentials._();
  MsgSyncCredentials createEmptyInstance() => create();
  static $pb.PbList<MsgSyncCredentials> createRepeated() => $pb.PbList<MsgSyncCredentials>();
  @$core.pragma('dart2js:noInline')
  static MsgSyncCredentials getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgSyncCredentials>(create);
  static MsgSyncCredentials? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get clear_1 => $_getBF(0);
  @$pb.TagNumber(1)
  set clear_1($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasClear_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearClear_1() => clearField(1);
}

class SyncCredentialsReply extends $pb.GeneratedMessage {
  factory SyncCredentialsReply({
    $core.Iterable<$7.Credential>? credentials,
  }) {
    final $result = create();
    if (credentials != null) {
      $result.credentials.addAll(credentials);
    }
    return $result;
  }
  SyncCredentialsReply._() : super();
  factory SyncCredentialsReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SyncCredentialsReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SyncCredentialsReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..pc<$7.Credential>(1, _omitFieldNames ? '' : 'credentials', $pb.PbFieldType.PM, subBuilder: $7.Credential.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SyncCredentialsReply clone() => SyncCredentialsReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SyncCredentialsReply copyWith(void Function(SyncCredentialsReply) updates) => super.copyWith((message) => updates(message as SyncCredentialsReply)) as SyncCredentialsReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SyncCredentialsReply create() => SyncCredentialsReply._();
  SyncCredentialsReply createEmptyInstance() => create();
  static $pb.PbList<SyncCredentialsReply> createRepeated() => $pb.PbList<SyncCredentialsReply>();
  @$core.pragma('dart2js:noInline')
  static SyncCredentialsReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncCredentialsReply>(create);
  static SyncCredentialsReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$7.Credential> get credentials => $_getList(0);
}

class MsgSyncRecoverKeys extends $pb.GeneratedMessage {
  factory MsgSyncRecoverKeys({
    $core.bool? clear_1,
  }) {
    final $result = create();
    if (clear_1 != null) {
      $result.clear_1 = clear_1;
    }
    return $result;
  }
  MsgSyncRecoverKeys._() : super();
  factory MsgSyncRecoverKeys.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgSyncRecoverKeys.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgSyncRecoverKeys', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'clear')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgSyncRecoverKeys clone() => MsgSyncRecoverKeys()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgSyncRecoverKeys copyWith(void Function(MsgSyncRecoverKeys) updates) => super.copyWith((message) => updates(message as MsgSyncRecoverKeys)) as MsgSyncRecoverKeys;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgSyncRecoverKeys create() => MsgSyncRecoverKeys._();
  MsgSyncRecoverKeys createEmptyInstance() => create();
  static $pb.PbList<MsgSyncRecoverKeys> createRepeated() => $pb.PbList<MsgSyncRecoverKeys>();
  @$core.pragma('dart2js:noInline')
  static MsgSyncRecoverKeys getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgSyncRecoverKeys>(create);
  static MsgSyncRecoverKeys? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get clear_1 => $_getBF(0);
  @$pb.TagNumber(1)
  set clear_1($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasClear_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearClear_1() => clearField(1);
}

class SyncRecoverKeysReply extends $pb.GeneratedMessage {
  factory SyncRecoverKeysReply({
    $core.Iterable<$6.RecoverKey>? recoverKeys,
  }) {
    final $result = create();
    if (recoverKeys != null) {
      $result.recoverKeys.addAll(recoverKeys);
    }
    return $result;
  }
  SyncRecoverKeysReply._() : super();
  factory SyncRecoverKeysReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SyncRecoverKeysReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SyncRecoverKeysReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..pc<$6.RecoverKey>(1, _omitFieldNames ? '' : 'recoverKeys', $pb.PbFieldType.PM, protoName: 'recoverKeys', subBuilder: $6.RecoverKey.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SyncRecoverKeysReply clone() => SyncRecoverKeysReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SyncRecoverKeysReply copyWith(void Function(SyncRecoverKeysReply) updates) => super.copyWith((message) => updates(message as SyncRecoverKeysReply)) as SyncRecoverKeysReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SyncRecoverKeysReply create() => SyncRecoverKeysReply._();
  SyncRecoverKeysReply createEmptyInstance() => create();
  static $pb.PbList<SyncRecoverKeysReply> createRepeated() => $pb.PbList<SyncRecoverKeysReply>();
  @$core.pragma('dart2js:noInline')
  static SyncRecoverKeysReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncRecoverKeysReply>(create);
  static SyncRecoverKeysReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$6.RecoverKey> get recoverKeys => $_getList(0);
}

class SetSecretSharePrivateKeyReply extends $pb.GeneratedMessage {
  factory SetSecretSharePrivateKeyReply({
    $core.bool? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  SetSecretSharePrivateKeyReply._() : super();
  factory SetSecretSharePrivateKeyReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetSecretSharePrivateKeyReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetSecretSharePrivateKeyReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetSecretSharePrivateKeyReply clone() => SetSecretSharePrivateKeyReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetSecretSharePrivateKeyReply copyWith(void Function(SetSecretSharePrivateKeyReply) updates) => super.copyWith((message) => updates(message as SetSecretSharePrivateKeyReply)) as SetSecretSharePrivateKeyReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetSecretSharePrivateKeyReply create() => SetSecretSharePrivateKeyReply._();
  SetSecretSharePrivateKeyReply createEmptyInstance() => create();
  static $pb.PbList<SetSecretSharePrivateKeyReply> createRepeated() => $pb.PbList<SetSecretSharePrivateKeyReply>();
  @$core.pragma('dart2js:noInline')
  static SetSecretSharePrivateKeyReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetSecretSharePrivateKeyReply>(create);
  static SetSecretSharePrivateKeyReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class MsgSyncSuspiciousTransactions extends $pb.GeneratedMessage {
  factory MsgSyncSuspiciousTransactions({
    $core.bool? clear_1,
  }) {
    final $result = create();
    if (clear_1 != null) {
      $result.clear_1 = clear_1;
    }
    return $result;
  }
  MsgSyncSuspiciousTransactions._() : super();
  factory MsgSyncSuspiciousTransactions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgSyncSuspiciousTransactions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgSyncSuspiciousTransactions', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'clear')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgSyncSuspiciousTransactions clone() => MsgSyncSuspiciousTransactions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgSyncSuspiciousTransactions copyWith(void Function(MsgSyncSuspiciousTransactions) updates) => super.copyWith((message) => updates(message as MsgSyncSuspiciousTransactions)) as MsgSyncSuspiciousTransactions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgSyncSuspiciousTransactions create() => MsgSyncSuspiciousTransactions._();
  MsgSyncSuspiciousTransactions createEmptyInstance() => create();
  static $pb.PbList<MsgSyncSuspiciousTransactions> createRepeated() => $pb.PbList<MsgSyncSuspiciousTransactions>();
  @$core.pragma('dart2js:noInline')
  static MsgSyncSuspiciousTransactions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgSyncSuspiciousTransactions>(create);
  static MsgSyncSuspiciousTransactions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get clear_1 => $_getBF(0);
  @$pb.TagNumber(1)
  set clear_1($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasClear_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearClear_1() => clearField(1);
}

class SyncSuspiciousTransactionsReply extends $pb.GeneratedMessage {
  factory SyncSuspiciousTransactionsReply({
    $core.Iterable<$28.SuspiciousTransaction>? suspiciousTransactions,
  }) {
    final $result = create();
    if (suspiciousTransactions != null) {
      $result.suspiciousTransactions.addAll(suspiciousTransactions);
    }
    return $result;
  }
  SyncSuspiciousTransactionsReply._() : super();
  factory SyncSuspiciousTransactionsReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SyncSuspiciousTransactionsReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SyncSuspiciousTransactionsReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..pc<$28.SuspiciousTransaction>(1, _omitFieldNames ? '' : 'suspiciousTransactions', $pb.PbFieldType.PM, protoName: 'suspiciousTransactions', subBuilder: $28.SuspiciousTransaction.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SyncSuspiciousTransactionsReply clone() => SyncSuspiciousTransactionsReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SyncSuspiciousTransactionsReply copyWith(void Function(SyncSuspiciousTransactionsReply) updates) => super.copyWith((message) => updates(message as SyncSuspiciousTransactionsReply)) as SyncSuspiciousTransactionsReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SyncSuspiciousTransactionsReply create() => SyncSuspiciousTransactionsReply._();
  SyncSuspiciousTransactionsReply createEmptyInstance() => create();
  static $pb.PbList<SyncSuspiciousTransactionsReply> createRepeated() => $pb.PbList<SyncSuspiciousTransactionsReply>();
  @$core.pragma('dart2js:noInline')
  static SyncSuspiciousTransactionsReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncSuspiciousTransactionsReply>(create);
  static SyncSuspiciousTransactionsReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$28.SuspiciousTransaction> get suspiciousTransactions => $_getList(0);
}

class InitEnclaveReply extends $pb.GeneratedMessage {
  factory InitEnclaveReply({
    $core.bool? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  InitEnclaveReply._() : super();
  factory InitEnclaveReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InitEnclaveReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InitEnclaveReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InitEnclaveReply clone() => InitEnclaveReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InitEnclaveReply copyWith(void Function(InitEnclaveReply) updates) => super.copyWith((message) => updates(message as InitEnclaveReply)) as InitEnclaveReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InitEnclaveReply create() => InitEnclaveReply._();
  InitEnclaveReply createEmptyInstance() => create();
  static $pb.PbList<InitEnclaveReply> createRepeated() => $pb.PbList<InitEnclaveReply>();
  @$core.pragma('dart2js:noInline')
  static InitEnclaveReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InitEnclaveReply>(create);
  static InitEnclaveReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class UpdateHeightReply extends $pb.GeneratedMessage {
  factory UpdateHeightReply({
    $core.bool? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  UpdateHeightReply._() : super();
  factory UpdateHeightReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateHeightReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateHeightReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateHeightReply clone() => UpdateHeightReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateHeightReply copyWith(void Function(UpdateHeightReply) updates) => super.copyWith((message) => updates(message as UpdateHeightReply)) as UpdateHeightReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateHeightReply create() => UpdateHeightReply._();
  UpdateHeightReply createEmptyInstance() => create();
  static $pb.PbList<UpdateHeightReply> createRepeated() => $pb.PbList<UpdateHeightReply>();
  @$core.pragma('dart2js:noInline')
  static UpdateHeightReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateHeightReply>(create);
  static UpdateHeightReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class MsgTransactionComplete extends $pb.GeneratedMessage {
  factory MsgTransactionComplete({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  MsgTransactionComplete._() : super();
  factory MsgTransactionComplete.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgTransactionComplete.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgTransactionComplete', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgTransactionComplete clone() => MsgTransactionComplete()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgTransactionComplete copyWith(void Function(MsgTransactionComplete) updates) => super.copyWith((message) => updates(message as MsgTransactionComplete)) as MsgTransactionComplete;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgTransactionComplete create() => MsgTransactionComplete._();
  MsgTransactionComplete createEmptyInstance() => create();
  static $pb.PbList<MsgTransactionComplete> createRepeated() => $pb.PbList<MsgTransactionComplete>();
  @$core.pragma('dart2js:noInline')
  static MsgTransactionComplete getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgTransactionComplete>(create);
  static MsgTransactionComplete? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class TransactionCompleteReply extends $pb.GeneratedMessage {
  factory TransactionCompleteReply({
    $core.bool? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  TransactionCompleteReply._() : super();
  factory TransactionCompleteReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransactionCompleteReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TransactionCompleteReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransactionCompleteReply clone() => TransactionCompleteReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransactionCompleteReply copyWith(void Function(TransactionCompleteReply) updates) => super.copyWith((message) => updates(message as TransactionCompleteReply)) as TransactionCompleteReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransactionCompleteReply create() => TransactionCompleteReply._();
  TransactionCompleteReply createEmptyInstance() => create();
  static $pb.PbList<TransactionCompleteReply> createRepeated() => $pb.PbList<TransactionCompleteReply>();
  @$core.pragma('dart2js:noInline')
  static TransactionCompleteReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransactionCompleteReply>(create);
  static TransactionCompleteReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class SyncEnclaveReply extends $pb.GeneratedMessage {
  factory SyncEnclaveReply({
    $core.bool? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  SyncEnclaveReply._() : super();
  factory SyncEnclaveReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SyncEnclaveReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SyncEnclaveReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SyncEnclaveReply clone() => SyncEnclaveReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SyncEnclaveReply copyWith(void Function(SyncEnclaveReply) updates) => super.copyWith((message) => updates(message as SyncEnclaveReply)) as SyncEnclaveReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SyncEnclaveReply create() => SyncEnclaveReply._();
  SyncEnclaveReply createEmptyInstance() => create();
  static $pb.PbList<SyncEnclaveReply> createRepeated() => $pb.PbList<SyncEnclaveReply>();
  @$core.pragma('dart2js:noInline')
  static SyncEnclaveReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncEnclaveReply>(create);
  static SyncEnclaveReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class AddAsValidatorReply extends $pb.GeneratedMessage {
  factory AddAsValidatorReply({
    $core.bool? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  AddAsValidatorReply._() : super();
  factory AddAsValidatorReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddAsValidatorReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddAsValidatorReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddAsValidatorReply clone() => AddAsValidatorReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddAsValidatorReply copyWith(void Function(AddAsValidatorReply) updates) => super.copyWith((message) => updates(message as AddAsValidatorReply)) as AddAsValidatorReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddAsValidatorReply create() => AddAsValidatorReply._();
  AddAsValidatorReply createEmptyInstance() => create();
  static $pb.PbList<AddAsValidatorReply> createRepeated() => $pb.PbList<AddAsValidatorReply>();
  @$core.pragma('dart2js:noInline')
  static AddAsValidatorReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddAsValidatorReply>(create);
  static AddAsValidatorReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class SetWalletReply extends $pb.GeneratedMessage {
  factory SetWalletReply({
    $core.bool? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  SetWalletReply._() : super();
  factory SetWalletReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetWalletReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetWalletReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetWalletReply clone() => SetWalletReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetWalletReply copyWith(void Function(SetWalletReply) updates) => super.copyWith((message) => updates(message as SetWalletReply)) as SetWalletReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetWalletReply create() => SetWalletReply._();
  SetWalletReply createEmptyInstance() => create();
  static $pb.PbList<SetWalletReply> createRepeated() => $pb.PbList<SetWalletReply>();
  @$core.pragma('dart2js:noInline')
  static SetWalletReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetWalletReply>(create);
  static SetWalletReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class SetEnclaveIdentityReply extends $pb.GeneratedMessage {
  factory SetEnclaveIdentityReply({
    $core.bool? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  SetEnclaveIdentityReply._() : super();
  factory SetEnclaveIdentityReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetEnclaveIdentityReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetEnclaveIdentityReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetEnclaveIdentityReply clone() => SetEnclaveIdentityReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetEnclaveIdentityReply copyWith(void Function(SetEnclaveIdentityReply) updates) => super.copyWith((message) => updates(message as SetEnclaveIdentityReply)) as SetEnclaveIdentityReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetEnclaveIdentityReply create() => SetEnclaveIdentityReply._();
  SetEnclaveIdentityReply createEmptyInstance() => create();
  static $pb.PbList<SetEnclaveIdentityReply> createRepeated() => $pb.PbList<SetEnclaveIdentityReply>();
  @$core.pragma('dart2js:noInline')
  static SetEnclaveIdentityReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetEnclaveIdentityReply>(create);
  static SetEnclaveIdentityReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class PioneerUpdateEnclaveIdentity extends $pb.GeneratedMessage {
  factory PioneerUpdateEnclaveIdentity({
    $3.EnclaveIdentity? enclaveIdentity,
    $core.List<$core.int>? remoteReport,
  }) {
    final $result = create();
    if (enclaveIdentity != null) {
      $result.enclaveIdentity = enclaveIdentity;
    }
    if (remoteReport != null) {
      $result.remoteReport = remoteReport;
    }
    return $result;
  }
  PioneerUpdateEnclaveIdentity._() : super();
  factory PioneerUpdateEnclaveIdentity.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PioneerUpdateEnclaveIdentity.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PioneerUpdateEnclaveIdentity', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOM<$3.EnclaveIdentity>(1, _omitFieldNames ? '' : 'enclaveIdentity', protoName: 'enclaveIdentity', subBuilder: $3.EnclaveIdentity.create)
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'remoteReport', $pb.PbFieldType.OY, protoName: 'remoteReport')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PioneerUpdateEnclaveIdentity clone() => PioneerUpdateEnclaveIdentity()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PioneerUpdateEnclaveIdentity copyWith(void Function(PioneerUpdateEnclaveIdentity) updates) => super.copyWith((message) => updates(message as PioneerUpdateEnclaveIdentity)) as PioneerUpdateEnclaveIdentity;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PioneerUpdateEnclaveIdentity create() => PioneerUpdateEnclaveIdentity._();
  PioneerUpdateEnclaveIdentity createEmptyInstance() => create();
  static $pb.PbList<PioneerUpdateEnclaveIdentity> createRepeated() => $pb.PbList<PioneerUpdateEnclaveIdentity>();
  @$core.pragma('dart2js:noInline')
  static PioneerUpdateEnclaveIdentity getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PioneerUpdateEnclaveIdentity>(create);
  static PioneerUpdateEnclaveIdentity? _defaultInstance;

  @$pb.TagNumber(1)
  $3.EnclaveIdentity get enclaveIdentity => $_getN(0);
  @$pb.TagNumber(1)
  set enclaveIdentity($3.EnclaveIdentity v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEnclaveIdentity() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnclaveIdentity() => clearField(1);
  @$pb.TagNumber(1)
  $3.EnclaveIdentity ensureEnclaveIdentity() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get remoteReport => $_getN(1);
  @$pb.TagNumber(2)
  set remoteReport($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRemoteReport() => $_has(1);
  @$pb.TagNumber(2)
  void clearRemoteReport() => clearField(2);
}

class UpdateEnclaveIdentityReply extends $pb.GeneratedMessage {
  factory UpdateEnclaveIdentityReply({
    $core.bool? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  UpdateEnclaveIdentityReply._() : super();
  factory UpdateEnclaveIdentityReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateEnclaveIdentityReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateEnclaveIdentityReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateEnclaveIdentityReply clone() => UpdateEnclaveIdentityReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateEnclaveIdentityReply copyWith(void Function(UpdateEnclaveIdentityReply) updates) => super.copyWith((message) => updates(message as UpdateEnclaveIdentityReply)) as UpdateEnclaveIdentityReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateEnclaveIdentityReply create() => UpdateEnclaveIdentityReply._();
  UpdateEnclaveIdentityReply createEmptyInstance() => create();
  static $pb.PbList<UpdateEnclaveIdentityReply> createRepeated() => $pb.PbList<UpdateEnclaveIdentityReply>();
  @$core.pragma('dart2js:noInline')
  static UpdateEnclaveIdentityReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateEnclaveIdentityReply>(create);
  static UpdateEnclaveIdentityReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class SetProtectKeyReply extends $pb.GeneratedMessage {
  factory SetProtectKeyReply({
    $core.bool? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  SetProtectKeyReply._() : super();
  factory SetProtectKeyReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetProtectKeyReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetProtectKeyReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetProtectKeyReply clone() => SetProtectKeyReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetProtectKeyReply copyWith(void Function(SetProtectKeyReply) updates) => super.copyWith((message) => updates(message as SetProtectKeyReply)) as SetProtectKeyReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetProtectKeyReply create() => SetProtectKeyReply._();
  SetProtectKeyReply createEmptyInstance() => create();
  static $pb.PbList<SetProtectKeyReply> createRepeated() => $pb.PbList<SetProtectKeyReply>();
  @$core.pragma('dart2js:noInline')
  static SetProtectKeyReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetProtectKeyReply>(create);
  static SetProtectKeyReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class SetRecoverKeyReply extends $pb.GeneratedMessage {
  factory SetRecoverKeyReply({
    $core.bool? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  SetRecoverKeyReply._() : super();
  factory SetRecoverKeyReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetRecoverKeyReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetRecoverKeyReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetRecoverKeyReply clone() => SetRecoverKeyReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetRecoverKeyReply copyWith(void Function(SetRecoverKeyReply) updates) => super.copyWith((message) => updates(message as SetRecoverKeyReply)) as SetRecoverKeyReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetRecoverKeyReply create() => SetRecoverKeyReply._();
  SetRecoverKeyReply createEmptyInstance() => create();
  static $pb.PbList<SetRecoverKeyReply> createRepeated() => $pb.PbList<SetRecoverKeyReply>();
  @$core.pragma('dart2js:noInline')
  static SetRecoverKeyReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetRecoverKeyReply>(create);
  static SetRecoverKeyReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class SetCredentialReply extends $pb.GeneratedMessage {
  factory SetCredentialReply({
    $core.bool? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  SetCredentialReply._() : super();
  factory SetCredentialReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetCredentialReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetCredentialReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetCredentialReply clone() => SetCredentialReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetCredentialReply copyWith(void Function(SetCredentialReply) updates) => super.copyWith((message) => updates(message as SetCredentialReply)) as SetCredentialReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetCredentialReply create() => SetCredentialReply._();
  SetCredentialReply createEmptyInstance() => create();
  static $pb.PbList<SetCredentialReply> createRepeated() => $pb.PbList<SetCredentialReply>();
  @$core.pragma('dart2js:noInline')
  static SetCredentialReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetCredentialReply>(create);
  static SetCredentialReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class RemoveCredentialReply extends $pb.GeneratedMessage {
  factory RemoveCredentialReply({
    $core.bool? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  RemoveCredentialReply._() : super();
  factory RemoveCredentialReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveCredentialReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemoveCredentialReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveCredentialReply clone() => RemoveCredentialReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveCredentialReply copyWith(void Function(RemoveCredentialReply) updates) => super.copyWith((message) => updates(message as RemoveCredentialReply)) as RemoveCredentialReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveCredentialReply create() => RemoveCredentialReply._();
  RemoveCredentialReply createEmptyInstance() => create();
  static $pb.PbList<RemoveCredentialReply> createRepeated() => $pb.PbList<RemoveCredentialReply>();
  @$core.pragma('dart2js:noInline')
  static RemoveCredentialReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveCredentialReply>(create);
  static RemoveCredentialReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class RecoverKeyReply extends $pb.GeneratedMessage {
  factory RecoverKeyReply({
    $core.bool? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  RecoverKeyReply._() : super();
  factory RecoverKeyReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RecoverKeyReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RecoverKeyReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RecoverKeyReply clone() => RecoverKeyReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RecoverKeyReply copyWith(void Function(RecoverKeyReply) updates) => super.copyWith((message) => updates(message as RecoverKeyReply)) as RecoverKeyReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RecoverKeyReply create() => RecoverKeyReply._();
  RecoverKeyReply createEmptyInstance() => create();
  static $pb.PbList<RecoverKeyReply> createRepeated() => $pb.PbList<RecoverKeyReply>();
  @$core.pragma('dart2js:noInline')
  static RecoverKeyReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RecoverKeyReply>(create);
  static RecoverKeyReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class SignRecoverKeyReply extends $pb.GeneratedMessage {
  factory SignRecoverKeyReply({
    $core.bool? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  SignRecoverKeyReply._() : super();
  factory SignRecoverKeyReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignRecoverKeyReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SignRecoverKeyReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignRecoverKeyReply clone() => SignRecoverKeyReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignRecoverKeyReply copyWith(void Function(SignRecoverKeyReply) updates) => super.copyWith((message) => updates(message as SignRecoverKeyReply)) as SignRecoverKeyReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SignRecoverKeyReply create() => SignRecoverKeyReply._();
  SignRecoverKeyReply createEmptyInstance() => create();
  static $pb.PbList<SignRecoverKeyReply> createRepeated() => $pb.PbList<SignRecoverKeyReply>();
  @$core.pragma('dart2js:noInline')
  static SignRecoverKeyReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignRecoverKeyReply>(create);
  static SignRecoverKeyReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class SetPublicKeyReply extends $pb.GeneratedMessage {
  factory SetPublicKeyReply({
    $core.bool? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  SetPublicKeyReply._() : super();
  factory SetPublicKeyReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetPublicKeyReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetPublicKeyReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetPublicKeyReply clone() => SetPublicKeyReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetPublicKeyReply copyWith(void Function(SetPublicKeyReply) updates) => super.copyWith((message) => updates(message as SetPublicKeyReply)) as SetPublicKeyReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetPublicKeyReply create() => SetPublicKeyReply._();
  SetPublicKeyReply createEmptyInstance() => create();
  static $pb.PbList<SetPublicKeyReply> createRepeated() => $pb.PbList<SetPublicKeyReply>();
  @$core.pragma('dart2js:noInline')
  static SetPublicKeyReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetPublicKeyReply>(create);
  static SetPublicKeyReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class SetJarRegulatorReply extends $pb.GeneratedMessage {
  factory SetJarRegulatorReply({
    $core.bool? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  SetJarRegulatorReply._() : super();
  factory SetJarRegulatorReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetJarRegulatorReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetJarRegulatorReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetJarRegulatorReply clone() => SetJarRegulatorReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetJarRegulatorReply copyWith(void Function(SetJarRegulatorReply) updates) => super.copyWith((message) => updates(message as SetJarRegulatorReply)) as SetJarRegulatorReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetJarRegulatorReply create() => SetJarRegulatorReply._();
  SetJarRegulatorReply createEmptyInstance() => create();
  static $pb.PbList<SetJarRegulatorReply> createRepeated() => $pb.PbList<SetJarRegulatorReply>();
  @$core.pragma('dart2js:noInline')
  static SetJarRegulatorReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetJarRegulatorReply>(create);
  static SetJarRegulatorReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class SetPioneerJarReply extends $pb.GeneratedMessage {
  factory SetPioneerJarReply({
    $core.bool? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  SetPioneerJarReply._() : super();
  factory SetPioneerJarReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetPioneerJarReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetPioneerJarReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetPioneerJarReply clone() => SetPioneerJarReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetPioneerJarReply copyWith(void Function(SetPioneerJarReply) updates) => super.copyWith((message) => updates(message as SetPioneerJarReply)) as SetPioneerJarReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetPioneerJarReply create() => SetPioneerJarReply._();
  SetPioneerJarReply createEmptyInstance() => create();
  static $pb.PbList<SetPioneerJarReply> createRepeated() => $pb.PbList<SetPioneerJarReply>();
  @$core.pragma('dart2js:noInline')
  static SetPioneerJarReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetPioneerJarReply>(create);
  static SetPioneerJarReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class SetIntervalPublicKeyIdReply extends $pb.GeneratedMessage {
  factory SetIntervalPublicKeyIdReply({
    $core.bool? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  SetIntervalPublicKeyIdReply._() : super();
  factory SetIntervalPublicKeyIdReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetIntervalPublicKeyIdReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetIntervalPublicKeyIdReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetIntervalPublicKeyIdReply clone() => SetIntervalPublicKeyIdReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetIntervalPublicKeyIdReply copyWith(void Function(SetIntervalPublicKeyIdReply) updates) => super.copyWith((message) => updates(message as SetIntervalPublicKeyIdReply)) as SetIntervalPublicKeyIdReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetIntervalPublicKeyIdReply create() => SetIntervalPublicKeyIdReply._();
  SetIntervalPublicKeyIdReply createEmptyInstance() => create();
  static $pb.PbList<SetIntervalPublicKeyIdReply> createRepeated() => $pb.PbList<SetIntervalPublicKeyIdReply>();
  @$core.pragma('dart2js:noInline')
  static SetIntervalPublicKeyIdReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetIntervalPublicKeyIdReply>(create);
  static SetIntervalPublicKeyIdReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class ValidateDestinationWalletReply extends $pb.GeneratedMessage {
  factory ValidateDestinationWalletReply({
    $core.int? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  ValidateDestinationWalletReply._() : super();
  factory ValidateDestinationWalletReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValidateDestinationWalletReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ValidateDestinationWalletReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'status', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValidateDestinationWalletReply clone() => ValidateDestinationWalletReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValidateDestinationWalletReply copyWith(void Function(ValidateDestinationWalletReply) updates) => super.copyWith((message) => updates(message as ValidateDestinationWalletReply)) as ValidateDestinationWalletReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ValidateDestinationWalletReply create() => ValidateDestinationWalletReply._();
  ValidateDestinationWalletReply createEmptyInstance() => create();
  static $pb.PbList<ValidateDestinationWalletReply> createRepeated() => $pb.PbList<ValidateDestinationWalletReply>();
  @$core.pragma('dart2js:noInline')
  static ValidateDestinationWalletReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValidateDestinationWalletReply>(create);
  static ValidateDestinationWalletReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get status => $_getIZ(0);
  @$pb.TagNumber(1)
  set status($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class ValidateCredentialReply extends $pb.GeneratedMessage {
  factory ValidateCredentialReply({
    $core.bool? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  ValidateCredentialReply._() : super();
  factory ValidateCredentialReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValidateCredentialReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ValidateCredentialReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValidateCredentialReply clone() => ValidateCredentialReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValidateCredentialReply copyWith(void Function(ValidateCredentialReply) updates) => super.copyWith((message) => updates(message as ValidateCredentialReply)) as ValidateCredentialReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ValidateCredentialReply create() => ValidateCredentialReply._();
  ValidateCredentialReply createEmptyInstance() => create();
  static $pb.PbList<ValidateCredentialReply> createRepeated() => $pb.PbList<ValidateCredentialReply>();
  @$core.pragma('dart2js:noInline')
  static ValidateCredentialReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValidateCredentialReply>(create);
  static ValidateCredentialReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class ValidateTransferPrimeReply extends $pb.GeneratedMessage {
  factory ValidateTransferPrimeReply({
    $core.bool? updateSourceWallet,
  }) {
    final $result = create();
    if (updateSourceWallet != null) {
      $result.updateSourceWallet = updateSourceWallet;
    }
    return $result;
  }
  ValidateTransferPrimeReply._() : super();
  factory ValidateTransferPrimeReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValidateTransferPrimeReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ValidateTransferPrimeReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'updateSourceWallet', protoName: 'updateSourceWallet')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValidateTransferPrimeReply clone() => ValidateTransferPrimeReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValidateTransferPrimeReply copyWith(void Function(ValidateTransferPrimeReply) updates) => super.copyWith((message) => updates(message as ValidateTransferPrimeReply)) as ValidateTransferPrimeReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ValidateTransferPrimeReply create() => ValidateTransferPrimeReply._();
  ValidateTransferPrimeReply createEmptyInstance() => create();
  static $pb.PbList<ValidateTransferPrimeReply> createRepeated() => $pb.PbList<ValidateTransferPrimeReply>();
  @$core.pragma('dart2js:noInline')
  static ValidateTransferPrimeReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValidateTransferPrimeReply>(create);
  static ValidateTransferPrimeReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get updateSourceWallet => $_getBF(0);
  @$pb.TagNumber(1)
  set updateSourceWallet($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUpdateSourceWallet() => $_has(0);
  @$pb.TagNumber(1)
  void clearUpdateSourceWallet() => clearField(1);
}

class ValidateTransferDoublePrimeReply extends $pb.GeneratedMessage {
  factory ValidateTransferDoublePrimeReply({
    $core.bool? updateDestinationWallet,
  }) {
    final $result = create();
    if (updateDestinationWallet != null) {
      $result.updateDestinationWallet = updateDestinationWallet;
    }
    return $result;
  }
  ValidateTransferDoublePrimeReply._() : super();
  factory ValidateTransferDoublePrimeReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValidateTransferDoublePrimeReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ValidateTransferDoublePrimeReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'updateDestinationWallet', protoName: 'updateDestinationWallet')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValidateTransferDoublePrimeReply clone() => ValidateTransferDoublePrimeReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValidateTransferDoublePrimeReply copyWith(void Function(ValidateTransferDoublePrimeReply) updates) => super.copyWith((message) => updates(message as ValidateTransferDoublePrimeReply)) as ValidateTransferDoublePrimeReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ValidateTransferDoublePrimeReply create() => ValidateTransferDoublePrimeReply._();
  ValidateTransferDoublePrimeReply createEmptyInstance() => create();
  static $pb.PbList<ValidateTransferDoublePrimeReply> createRepeated() => $pb.PbList<ValidateTransferDoublePrimeReply>();
  @$core.pragma('dart2js:noInline')
  static ValidateTransferDoublePrimeReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValidateTransferDoublePrimeReply>(create);
  static ValidateTransferDoublePrimeReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get updateDestinationWallet => $_getBF(0);
  @$pb.TagNumber(1)
  set updateDestinationWallet($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUpdateDestinationWallet() => $_has(0);
  @$pb.TagNumber(1)
  void clearUpdateDestinationWallet() => clearField(1);
}

class ScanTransactionReply extends $pb.GeneratedMessage {
  factory ScanTransactionReply({
    $core.bool? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  ScanTransactionReply._() : super();
  factory ScanTransactionReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ScanTransactionReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ScanTransactionReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ScanTransactionReply clone() => ScanTransactionReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ScanTransactionReply copyWith(void Function(ScanTransactionReply) updates) => super.copyWith((message) => updates(message as ScanTransactionReply)) as ScanTransactionReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ScanTransactionReply create() => ScanTransactionReply._();
  ScanTransactionReply createEmptyInstance() => create();
  static $pb.PbList<ScanTransactionReply> createRepeated() => $pb.PbList<ScanTransactionReply>();
  @$core.pragma('dart2js:noInline')
  static ScanTransactionReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ScanTransactionReply>(create);
  static ScanTransactionReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

/// these are used to marshal strings and arrays of strings, needed by the persistent KV implementation in the enclave
class EnclaveStoreStringArray extends $pb.GeneratedMessage {
  factory EnclaveStoreStringArray({
    $core.Iterable<$core.String>? a,
  }) {
    final $result = create();
    if (a != null) {
      $result.a.addAll(a);
    }
    return $result;
  }
  EnclaveStoreStringArray._() : super();
  factory EnclaveStoreStringArray.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EnclaveStoreStringArray.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EnclaveStoreStringArray', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'a')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EnclaveStoreStringArray clone() => EnclaveStoreStringArray()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EnclaveStoreStringArray copyWith(void Function(EnclaveStoreStringArray) updates) => super.copyWith((message) => updates(message as EnclaveStoreStringArray)) as EnclaveStoreStringArray;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnclaveStoreStringArray create() => EnclaveStoreStringArray._();
  EnclaveStoreStringArray createEmptyInstance() => create();
  static $pb.PbList<EnclaveStoreStringArray> createRepeated() => $pb.PbList<EnclaveStoreStringArray>();
  @$core.pragma('dart2js:noInline')
  static EnclaveStoreStringArray getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EnclaveStoreStringArray>(create);
  static EnclaveStoreStringArray? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get a => $_getList(0);
}

class EnclaveStoreString extends $pb.GeneratedMessage {
  factory EnclaveStoreString({
    $core.String? s,
  }) {
    final $result = create();
    if (s != null) {
      $result.s = s;
    }
    return $result;
  }
  EnclaveStoreString._() : super();
  factory EnclaveStoreString.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EnclaveStoreString.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EnclaveStoreString', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 's')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EnclaveStoreString clone() => EnclaveStoreString()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EnclaveStoreString copyWith(void Function(EnclaveStoreString) updates) => super.copyWith((message) => updates(message as EnclaveStoreString)) as EnclaveStoreString;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnclaveStoreString create() => EnclaveStoreString._();
  EnclaveStoreString createEmptyInstance() => create();
  static $pb.PbList<EnclaveStoreString> createRepeated() => $pb.PbList<EnclaveStoreString>();
  @$core.pragma('dart2js:noInline')
  static EnclaveStoreString getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EnclaveStoreString>(create);
  static EnclaveStoreString? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get s => $_getSZ(0);
  @$pb.TagNumber(1)
  set s($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasS() => $_has(0);
  @$pb.TagNumber(1)
  void clearS() => clearField(1);
}

class EnclaveEnclaveIdentityArray extends $pb.GeneratedMessage {
  factory EnclaveEnclaveIdentityArray({
    $core.Iterable<$3.EnclaveIdentity>? identity,
  }) {
    final $result = create();
    if (identity != null) {
      $result.identity.addAll(identity);
    }
    return $result;
  }
  EnclaveEnclaveIdentityArray._() : super();
  factory EnclaveEnclaveIdentityArray.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EnclaveEnclaveIdentityArray.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EnclaveEnclaveIdentityArray', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..pc<$3.EnclaveIdentity>(1, _omitFieldNames ? '' : 'identity', $pb.PbFieldType.PM, subBuilder: $3.EnclaveIdentity.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EnclaveEnclaveIdentityArray clone() => EnclaveEnclaveIdentityArray()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EnclaveEnclaveIdentityArray copyWith(void Function(EnclaveEnclaveIdentityArray) updates) => super.copyWith((message) => updates(message as EnclaveEnclaveIdentityArray)) as EnclaveEnclaveIdentityArray;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnclaveEnclaveIdentityArray create() => EnclaveEnclaveIdentityArray._();
  EnclaveEnclaveIdentityArray createEmptyInstance() => create();
  static $pb.PbList<EnclaveEnclaveIdentityArray> createRepeated() => $pb.PbList<EnclaveEnclaveIdentityArray>();
  @$core.pragma('dart2js:noInline')
  static EnclaveEnclaveIdentityArray getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EnclaveEnclaveIdentityArray>(create);
  static EnclaveEnclaveIdentityArray? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$3.EnclaveIdentity> get identity => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
