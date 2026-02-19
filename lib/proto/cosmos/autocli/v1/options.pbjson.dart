//
//  Generated code. Do not modify.
//  source: cosmos/autocli/v1/options.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use moduleOptionsDescriptor instead')
const ModuleOptions$json = {
  '1': 'ModuleOptions',
  '2': [
    {'1': 'tx', '3': 1, '4': 1, '5': 11, '6': '.cosmos.autocli.v1.ServiceCommandDescriptor', '10': 'tx'},
    {'1': 'query', '3': 2, '4': 1, '5': 11, '6': '.cosmos.autocli.v1.ServiceCommandDescriptor', '10': 'query'},
  ],
};

/// Descriptor for `ModuleOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List moduleOptionsDescriptor = $convert.base64Decode(
    'Cg1Nb2R1bGVPcHRpb25zEjsKAnR4GAEgASgLMisuY29zbW9zLmF1dG9jbGkudjEuU2VydmljZU'
    'NvbW1hbmREZXNjcmlwdG9yUgJ0eBJBCgVxdWVyeRgCIAEoCzIrLmNvc21vcy5hdXRvY2xpLnYx'
    'LlNlcnZpY2VDb21tYW5kRGVzY3JpcHRvclIFcXVlcnk=');

@$core.Deprecated('Use serviceCommandDescriptorDescriptor instead')
const ServiceCommandDescriptor$json = {
  '1': 'ServiceCommandDescriptor',
  '2': [
    {'1': 'service', '3': 1, '4': 1, '5': 9, '10': 'service'},
    {'1': 'rpc_command_options', '3': 2, '4': 3, '5': 11, '6': '.cosmos.autocli.v1.RpcCommandOptions', '10': 'rpcCommandOptions'},
    {'1': 'sub_commands', '3': 3, '4': 3, '5': 11, '6': '.cosmos.autocli.v1.ServiceCommandDescriptor.SubCommandsEntry', '10': 'subCommands'},
    {'1': 'enhance_custom_command', '3': 4, '4': 1, '5': 8, '10': 'enhanceCustomCommand'},
    {'1': 'short', '3': 5, '4': 1, '5': 9, '10': 'short'},
  ],
  '3': [ServiceCommandDescriptor_SubCommandsEntry$json],
};

@$core.Deprecated('Use serviceCommandDescriptorDescriptor instead')
const ServiceCommandDescriptor_SubCommandsEntry$json = {
  '1': 'SubCommandsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.cosmos.autocli.v1.ServiceCommandDescriptor', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ServiceCommandDescriptor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceCommandDescriptorDescriptor = $convert.base64Decode(
    'ChhTZXJ2aWNlQ29tbWFuZERlc2NyaXB0b3ISGAoHc2VydmljZRgBIAEoCVIHc2VydmljZRJUCh'
    'NycGNfY29tbWFuZF9vcHRpb25zGAIgAygLMiQuY29zbW9zLmF1dG9jbGkudjEuUnBjQ29tbWFu'
    'ZE9wdGlvbnNSEXJwY0NvbW1hbmRPcHRpb25zEl8KDHN1Yl9jb21tYW5kcxgDIAMoCzI8LmNvc2'
    '1vcy5hdXRvY2xpLnYxLlNlcnZpY2VDb21tYW5kRGVzY3JpcHRvci5TdWJDb21tYW5kc0VudHJ5'
    'UgtzdWJDb21tYW5kcxI0ChZlbmhhbmNlX2N1c3RvbV9jb21tYW5kGAQgASgIUhRlbmhhbmNlQ3'
    'VzdG9tQ29tbWFuZBIUCgVzaG9ydBgFIAEoCVIFc2hvcnQaawoQU3ViQ29tbWFuZHNFbnRyeRIQ'
    'CgNrZXkYASABKAlSA2tleRJBCgV2YWx1ZRgCIAEoCzIrLmNvc21vcy5hdXRvY2xpLnYxLlNlcn'
    'ZpY2VDb21tYW5kRGVzY3JpcHRvclIFdmFsdWU6AjgB');

@$core.Deprecated('Use rpcCommandOptionsDescriptor instead')
const RpcCommandOptions$json = {
  '1': 'RpcCommandOptions',
  '2': [
    {'1': 'rpc_method', '3': 1, '4': 1, '5': 9, '10': 'rpcMethod'},
    {'1': 'use', '3': 2, '4': 1, '5': 9, '10': 'use'},
    {'1': 'long', '3': 3, '4': 1, '5': 9, '10': 'long'},
    {'1': 'short', '3': 4, '4': 1, '5': 9, '10': 'short'},
    {'1': 'example', '3': 5, '4': 1, '5': 9, '10': 'example'},
    {'1': 'alias', '3': 6, '4': 3, '5': 9, '10': 'alias'},
    {'1': 'suggest_for', '3': 7, '4': 3, '5': 9, '10': 'suggestFor'},
    {'1': 'deprecated', '3': 8, '4': 1, '5': 9, '10': 'deprecated'},
    {'1': 'version', '3': 9, '4': 1, '5': 9, '10': 'version'},
    {'1': 'flag_options', '3': 10, '4': 3, '5': 11, '6': '.cosmos.autocli.v1.RpcCommandOptions.FlagOptionsEntry', '10': 'flagOptions'},
    {'1': 'positional_args', '3': 11, '4': 3, '5': 11, '6': '.cosmos.autocli.v1.PositionalArgDescriptor', '10': 'positionalArgs'},
    {'1': 'skip', '3': 12, '4': 1, '5': 8, '10': 'skip'},
    {'1': 'gov_proposal', '3': 13, '4': 1, '5': 8, '8': {}, '10': 'govProposal'},
  ],
  '3': [RpcCommandOptions_FlagOptionsEntry$json],
};

@$core.Deprecated('Use rpcCommandOptionsDescriptor instead')
const RpcCommandOptions_FlagOptionsEntry$json = {
  '1': 'FlagOptionsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.cosmos.autocli.v1.FlagOptions', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `RpcCommandOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rpcCommandOptionsDescriptor = $convert.base64Decode(
    'ChFScGNDb21tYW5kT3B0aW9ucxIdCgpycGNfbWV0aG9kGAEgASgJUglycGNNZXRob2QSEAoDdX'
    'NlGAIgASgJUgN1c2USEgoEbG9uZxgDIAEoCVIEbG9uZxIUCgVzaG9ydBgEIAEoCVIFc2hvcnQS'
    'GAoHZXhhbXBsZRgFIAEoCVIHZXhhbXBsZRIUCgVhbGlhcxgGIAMoCVIFYWxpYXMSHwoLc3VnZ2'
    'VzdF9mb3IYByADKAlSCnN1Z2dlc3RGb3ISHgoKZGVwcmVjYXRlZBgIIAEoCVIKZGVwcmVjYXRl'
    'ZBIYCgd2ZXJzaW9uGAkgASgJUgd2ZXJzaW9uElgKDGZsYWdfb3B0aW9ucxgKIAMoCzI1LmNvc2'
    '1vcy5hdXRvY2xpLnYxLlJwY0NvbW1hbmRPcHRpb25zLkZsYWdPcHRpb25zRW50cnlSC2ZsYWdP'
    'cHRpb25zElMKD3Bvc2l0aW9uYWxfYXJncxgLIAMoCzIqLmNvc21vcy5hdXRvY2xpLnYxLlBvc2'
    'l0aW9uYWxBcmdEZXNjcmlwdG9yUg5wb3NpdGlvbmFsQXJncxISCgRza2lwGAwgASgIUgRza2lw'
    'Ej4KDGdvdl9wcm9wb3NhbBgNIAEoCEIb2rQtF2NsaWVudC92MiB2Mi4wLjAtYmV0YS4yUgtnb3'
    'ZQcm9wb3NhbBpeChBGbGFnT3B0aW9uc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EjQKBXZhbHVl'
    'GAIgASgLMh4uY29zbW9zLmF1dG9jbGkudjEuRmxhZ09wdGlvbnNSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use flagOptionsDescriptor instead')
const FlagOptions$json = {
  '1': 'FlagOptions',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'shorthand', '3': 2, '4': 1, '5': 9, '10': 'shorthand'},
    {'1': 'usage', '3': 3, '4': 1, '5': 9, '10': 'usage'},
    {'1': 'default_value', '3': 4, '4': 1, '5': 9, '10': 'defaultValue'},
    {'1': 'deprecated', '3': 6, '4': 1, '5': 9, '10': 'deprecated'},
    {'1': 'shorthand_deprecated', '3': 7, '4': 1, '5': 9, '10': 'shorthandDeprecated'},
    {'1': 'hidden', '3': 8, '4': 1, '5': 8, '10': 'hidden'},
  ],
};

/// Descriptor for `FlagOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List flagOptionsDescriptor = $convert.base64Decode(
    'CgtGbGFnT3B0aW9ucxISCgRuYW1lGAEgASgJUgRuYW1lEhwKCXNob3J0aGFuZBgCIAEoCVIJc2'
    'hvcnRoYW5kEhQKBXVzYWdlGAMgASgJUgV1c2FnZRIjCg1kZWZhdWx0X3ZhbHVlGAQgASgJUgxk'
    'ZWZhdWx0VmFsdWUSHgoKZGVwcmVjYXRlZBgGIAEoCVIKZGVwcmVjYXRlZBIxChRzaG9ydGhhbm'
    'RfZGVwcmVjYXRlZBgHIAEoCVITc2hvcnRoYW5kRGVwcmVjYXRlZBIWCgZoaWRkZW4YCCABKAhS'
    'BmhpZGRlbg==');

@$core.Deprecated('Use positionalArgDescriptorDescriptor instead')
const PositionalArgDescriptor$json = {
  '1': 'PositionalArgDescriptor',
  '2': [
    {'1': 'proto_field', '3': 1, '4': 1, '5': 9, '10': 'protoField'},
    {'1': 'varargs', '3': 2, '4': 1, '5': 8, '10': 'varargs'},
    {'1': 'optional', '3': 3, '4': 1, '5': 8, '10': 'optional'},
  ],
};

/// Descriptor for `PositionalArgDescriptor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List positionalArgDescriptorDescriptor = $convert.base64Decode(
    'ChdQb3NpdGlvbmFsQXJnRGVzY3JpcHRvchIfCgtwcm90b19maWVsZBgBIAEoCVIKcHJvdG9GaW'
    'VsZBIYCgd2YXJhcmdzGAIgASgIUgd2YXJhcmdzEhoKCG9wdGlvbmFsGAMgASgIUghvcHRpb25h'
    'bA==');

