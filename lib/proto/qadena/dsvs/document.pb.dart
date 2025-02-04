//
//  Generated code. Do not modify.
//  source: qadena/dsvs/document.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'hash_info.pb.dart' as $10;
import 'v_share_signatory.pb.dart' as $8;

class Document extends $pb.GeneratedMessage {
  factory Document({
    $core.String? documentID,
    $core.String? documentType,
    $core.String? companyName,
    $core.Iterable<$8.VShareSignatory>? requiredSignatory,
    $core.Iterable<$8.VShareSignatory>? completedSignatory,
    $core.Iterable<$10.HashInfo>? hash,
  }) {
    final $result = create();
    if (documentID != null) {
      $result.documentID = documentID;
    }
    if (documentType != null) {
      $result.documentType = documentType;
    }
    if (companyName != null) {
      $result.companyName = companyName;
    }
    if (requiredSignatory != null) {
      $result.requiredSignatory.addAll(requiredSignatory);
    }
    if (completedSignatory != null) {
      $result.completedSignatory.addAll(completedSignatory);
    }
    if (hash != null) {
      $result.hash.addAll(hash);
    }
    return $result;
  }
  Document._() : super();
  factory Document.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Document.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Document', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.dsvs'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'documentID', protoName: 'documentID')
    ..aOS(2, _omitFieldNames ? '' : 'documentType', protoName: 'documentType')
    ..aOS(3, _omitFieldNames ? '' : 'companyName', protoName: 'companyName')
    ..pc<$8.VShareSignatory>(4, _omitFieldNames ? '' : 'requiredSignatory', $pb.PbFieldType.PM, protoName: 'requiredSignatory', subBuilder: $8.VShareSignatory.create)
    ..pc<$8.VShareSignatory>(5, _omitFieldNames ? '' : 'completedSignatory', $pb.PbFieldType.PM, protoName: 'completedSignatory', subBuilder: $8.VShareSignatory.create)
    ..pc<$10.HashInfo>(6, _omitFieldNames ? '' : 'hash', $pb.PbFieldType.PM, subBuilder: $10.HashInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Document clone() => Document()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Document copyWith(void Function(Document) updates) => super.copyWith((message) => updates(message as Document)) as Document;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Document create() => Document._();
  Document createEmptyInstance() => create();
  static $pb.PbList<Document> createRepeated() => $pb.PbList<Document>();
  @$core.pragma('dart2js:noInline')
  static Document getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Document>(create);
  static Document? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get documentID => $_getSZ(0);
  @$pb.TagNumber(1)
  set documentID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDocumentID() => $_has(0);
  @$pb.TagNumber(1)
  void clearDocumentID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get documentType => $_getSZ(1);
  @$pb.TagNumber(2)
  set documentType($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDocumentType() => $_has(1);
  @$pb.TagNumber(2)
  void clearDocumentType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get companyName => $_getSZ(2);
  @$pb.TagNumber(3)
  set companyName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCompanyName() => $_has(2);
  @$pb.TagNumber(3)
  void clearCompanyName() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$8.VShareSignatory> get requiredSignatory => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<$8.VShareSignatory> get completedSignatory => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<$10.HashInfo> get hash => $_getList(5);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
