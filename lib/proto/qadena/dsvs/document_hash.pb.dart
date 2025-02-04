//
//  Generated code. Do not modify.
//  source: qadena/dsvs/document_hash.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class DocumentHash extends $pb.GeneratedMessage {
  factory DocumentHash({
    $core.List<$core.int>? hash,
    $core.String? documentID,
  }) {
    final $result = create();
    if (hash != null) {
      $result.hash = hash;
    }
    if (documentID != null) {
      $result.documentID = documentID;
    }
    return $result;
  }
  DocumentHash._() : super();
  factory DocumentHash.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DocumentHash.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DocumentHash', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.dsvs'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'hash', $pb.PbFieldType.OY)
    ..aOS(2, _omitFieldNames ? '' : 'documentID', protoName: 'documentID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DocumentHash clone() => DocumentHash()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DocumentHash copyWith(void Function(DocumentHash) updates) => super.copyWith((message) => updates(message as DocumentHash)) as DocumentHash;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DocumentHash create() => DocumentHash._();
  DocumentHash createEmptyInstance() => create();
  static $pb.PbList<DocumentHash> createRepeated() => $pb.PbList<DocumentHash>();
  @$core.pragma('dart2js:noInline')
  static DocumentHash getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DocumentHash>(create);
  static DocumentHash? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get hash => $_getN(0);
  @$pb.TagNumber(1)
  set hash($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearHash() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get documentID => $_getSZ(1);
  @$pb.TagNumber(2)
  set documentID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDocumentID() => $_has(1);
  @$pb.TagNumber(2)
  void clearDocumentID() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
