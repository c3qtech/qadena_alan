//
//  Generated code. Do not modify.
//  source: qadena/dsvs/genesis.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'authorized_signatory.pb.dart' as $14;
import 'document.pb.dart' as $13;
import 'document_hash.pb.dart' as $11;
import 'params.pb.dart' as $7;

/// GenesisState defines the dsvs module's genesis state.
class GenesisState extends $pb.GeneratedMessage {
  factory GenesisState({
    $7.Params? params,
    $core.Iterable<$11.DocumentHash>? documentHashList,
    $core.Iterable<$13.Document>? documentList,
    $core.Iterable<$14.AuthorizedSignatory>? authorizedSignatoryList,
  }) {
    final $result = create();
    if (params != null) {
      $result.params = params;
    }
    if (documentHashList != null) {
      $result.documentHashList.addAll(documentHashList);
    }
    if (documentList != null) {
      $result.documentList.addAll(documentList);
    }
    if (authorizedSignatoryList != null) {
      $result.authorizedSignatoryList.addAll(authorizedSignatoryList);
    }
    return $result;
  }
  GenesisState._() : super();
  factory GenesisState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenesisState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GenesisState', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.dsvs'), createEmptyInstance: create)
    ..aOM<$7.Params>(1, _omitFieldNames ? '' : 'params', subBuilder: $7.Params.create)
    ..pc<$11.DocumentHash>(2, _omitFieldNames ? '' : 'documentHashList', $pb.PbFieldType.PM, protoName: 'documentHashList', subBuilder: $11.DocumentHash.create)
    ..pc<$13.Document>(3, _omitFieldNames ? '' : 'documentList', $pb.PbFieldType.PM, protoName: 'documentList', subBuilder: $13.Document.create)
    ..pc<$14.AuthorizedSignatory>(4, _omitFieldNames ? '' : 'authorizedSignatoryList', $pb.PbFieldType.PM, protoName: 'authorizedSignatoryList', subBuilder: $14.AuthorizedSignatory.create)
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
  $7.Params get params => $_getN(0);
  @$pb.TagNumber(1)
  set params($7.Params v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasParams() => $_has(0);
  @$pb.TagNumber(1)
  void clearParams() => clearField(1);
  @$pb.TagNumber(1)
  $7.Params ensureParams() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$11.DocumentHash> get documentHashList => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$13.Document> get documentList => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$14.AuthorizedSignatory> get authorizedSignatoryList => $_getList(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
