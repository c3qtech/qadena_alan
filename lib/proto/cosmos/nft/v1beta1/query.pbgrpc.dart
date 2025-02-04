//
//  Generated code. Do not modify.
//  source: cosmos/nft/v1beta1/query.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'query.pb.dart' as $1;

export 'query.pb.dart';

@$pb.GrpcServiceName('cosmos.nft.v1beta1.Query')
class QueryClient extends $grpc.Client {
  static final _$balance = $grpc.ClientMethod<$1.QueryBalanceRequest, $1.QueryBalanceResponse>(
      '/cosmos.nft.v1beta1.Query/Balance',
      ($1.QueryBalanceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryBalanceResponse.fromBuffer(value));
  static final _$owner = $grpc.ClientMethod<$1.QueryOwnerRequest, $1.QueryOwnerResponse>(
      '/cosmos.nft.v1beta1.Query/Owner',
      ($1.QueryOwnerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryOwnerResponse.fromBuffer(value));
  static final _$supply = $grpc.ClientMethod<$1.QuerySupplyRequest, $1.QuerySupplyResponse>(
      '/cosmos.nft.v1beta1.Query/Supply',
      ($1.QuerySupplyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QuerySupplyResponse.fromBuffer(value));
  static final _$nFTs = $grpc.ClientMethod<$1.QueryNFTsRequest, $1.QueryNFTsResponse>(
      '/cosmos.nft.v1beta1.Query/NFTs',
      ($1.QueryNFTsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryNFTsResponse.fromBuffer(value));
  static final _$nFT = $grpc.ClientMethod<$1.QueryNFTRequest, $1.QueryNFTResponse>(
      '/cosmos.nft.v1beta1.Query/NFT',
      ($1.QueryNFTRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryNFTResponse.fromBuffer(value));
  static final _$class = $grpc.ClientMethod<$1.QueryClassRequest, $1.QueryClassResponse>(
      '/cosmos.nft.v1beta1.Query/Class',
      ($1.QueryClassRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryClassResponse.fromBuffer(value));
  static final _$classes = $grpc.ClientMethod<$1.QueryClassesRequest, $1.QueryClassesResponse>(
      '/cosmos.nft.v1beta1.Query/Classes',
      ($1.QueryClassesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryClassesResponse.fromBuffer(value));

  QueryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.QueryBalanceResponse> balance($1.QueryBalanceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$balance, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryOwnerResponse> owner($1.QueryOwnerRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$owner, request, options: options);
  }

  $grpc.ResponseFuture<$1.QuerySupplyResponse> supply($1.QuerySupplyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$supply, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryNFTsResponse> nFTs($1.QueryNFTsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$nFTs, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryNFTResponse> nFT($1.QueryNFTRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$nFT, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryClassResponse> class($1.QueryClassRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$class, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryClassesResponse> classes($1.QueryClassesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$classes, request, options: options);
  }
}

@$pb.GrpcServiceName('cosmos.nft.v1beta1.Query')
abstract class QueryServiceBase extends $grpc.Service {
  $core.String get $name => 'cosmos.nft.v1beta1.Query';

  QueryServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.QueryBalanceRequest, $1.QueryBalanceResponse>(
        'Balance',
        balance_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryBalanceRequest.fromBuffer(value),
        ($1.QueryBalanceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryOwnerRequest, $1.QueryOwnerResponse>(
        'Owner',
        owner_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryOwnerRequest.fromBuffer(value),
        ($1.QueryOwnerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QuerySupplyRequest, $1.QuerySupplyResponse>(
        'Supply',
        supply_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QuerySupplyRequest.fromBuffer(value),
        ($1.QuerySupplyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryNFTsRequest, $1.QueryNFTsResponse>(
        'NFTs',
        nFTs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryNFTsRequest.fromBuffer(value),
        ($1.QueryNFTsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryNFTRequest, $1.QueryNFTResponse>(
        'NFT',
        nFT_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryNFTRequest.fromBuffer(value),
        ($1.QueryNFTResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryClassRequest, $1.QueryClassResponse>(
        'Class',
        class_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryClassRequest.fromBuffer(value),
        ($1.QueryClassResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryClassesRequest, $1.QueryClassesResponse>(
        'Classes',
        classes_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryClassesRequest.fromBuffer(value),
        ($1.QueryClassesResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.QueryBalanceResponse> balance_Pre($grpc.ServiceCall call, $async.Future<$1.QueryBalanceRequest> request) async {
    return balance(call, await request);
  }

  $async.Future<$1.QueryOwnerResponse> owner_Pre($grpc.ServiceCall call, $async.Future<$1.QueryOwnerRequest> request) async {
    return owner(call, await request);
  }

  $async.Future<$1.QuerySupplyResponse> supply_Pre($grpc.ServiceCall call, $async.Future<$1.QuerySupplyRequest> request) async {
    return supply(call, await request);
  }

  $async.Future<$1.QueryNFTsResponse> nFTs_Pre($grpc.ServiceCall call, $async.Future<$1.QueryNFTsRequest> request) async {
    return nFTs(call, await request);
  }

  $async.Future<$1.QueryNFTResponse> nFT_Pre($grpc.ServiceCall call, $async.Future<$1.QueryNFTRequest> request) async {
    return nFT(call, await request);
  }

  $async.Future<$1.QueryClassResponse> class_Pre($grpc.ServiceCall call, $async.Future<$1.QueryClassRequest> request) async {
    return class(call, await request);
  }

  $async.Future<$1.QueryClassesResponse> classes_Pre($grpc.ServiceCall call, $async.Future<$1.QueryClassesRequest> request) async {
    return classes(call, await request);
  }

  $async.Future<$1.QueryBalanceResponse> balance($grpc.ServiceCall call, $1.QueryBalanceRequest request);
  $async.Future<$1.QueryOwnerResponse> owner($grpc.ServiceCall call, $1.QueryOwnerRequest request);
  $async.Future<$1.QuerySupplyResponse> supply($grpc.ServiceCall call, $1.QuerySupplyRequest request);
  $async.Future<$1.QueryNFTsResponse> nFTs($grpc.ServiceCall call, $1.QueryNFTsRequest request);
  $async.Future<$1.QueryNFTResponse> nFT($grpc.ServiceCall call, $1.QueryNFTRequest request);
  $async.Future<$1.QueryClassResponse> class($grpc.ServiceCall call, $1.QueryClassRequest request);
  $async.Future<$1.QueryClassesResponse> classes($grpc.ServiceCall call, $1.QueryClassesRequest request);
}
