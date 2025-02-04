//
//  Generated code. Do not modify.
//  source: qadena/pricefeed/query.proto
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

@$pb.GrpcServiceName('qadena.pricefeed.Query')
class QueryClient extends $grpc.Client {
  static final _$params = $grpc.ClientMethod<$1.QueryParamsRequest, $1.QueryParamsResponse>(
      '/qadena.pricefeed.Query/Params',
      ($1.QueryParamsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryParamsResponse.fromBuffer(value));
  static final _$price = $grpc.ClientMethod<$1.QueryPriceRequest, $1.QueryPriceResponse>(
      '/qadena.pricefeed.Query/Price',
      ($1.QueryPriceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryPriceResponse.fromBuffer(value));
  static final _$prices = $grpc.ClientMethod<$1.QueryPricesRequest, $1.QueryPricesResponse>(
      '/qadena.pricefeed.Query/Prices',
      ($1.QueryPricesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryPricesResponse.fromBuffer(value));
  static final _$rawPrices = $grpc.ClientMethod<$1.QueryRawPricesRequest, $1.QueryRawPricesResponse>(
      '/qadena.pricefeed.Query/RawPrices',
      ($1.QueryRawPricesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryRawPricesResponse.fromBuffer(value));
  static final _$oracles = $grpc.ClientMethod<$1.QueryOraclesRequest, $1.QueryOraclesResponse>(
      '/qadena.pricefeed.Query/Oracles',
      ($1.QueryOraclesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryOraclesResponse.fromBuffer(value));
  static final _$markets = $grpc.ClientMethod<$1.QueryMarketsRequest, $1.QueryMarketsResponse>(
      '/qadena.pricefeed.Query/Markets',
      ($1.QueryMarketsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryMarketsResponse.fromBuffer(value));

  QueryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.QueryParamsResponse> params($1.QueryParamsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$params, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryPriceResponse> price($1.QueryPriceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$price, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryPricesResponse> prices($1.QueryPricesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$prices, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryRawPricesResponse> rawPrices($1.QueryRawPricesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$rawPrices, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryOraclesResponse> oracles($1.QueryOraclesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$oracles, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryMarketsResponse> markets($1.QueryMarketsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$markets, request, options: options);
  }
}

@$pb.GrpcServiceName('qadena.pricefeed.Query')
abstract class QueryServiceBase extends $grpc.Service {
  $core.String get $name => 'qadena.pricefeed.Query';

  QueryServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.QueryParamsRequest, $1.QueryParamsResponse>(
        'Params',
        params_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryParamsRequest.fromBuffer(value),
        ($1.QueryParamsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryPriceRequest, $1.QueryPriceResponse>(
        'Price',
        price_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryPriceRequest.fromBuffer(value),
        ($1.QueryPriceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryPricesRequest, $1.QueryPricesResponse>(
        'Prices',
        prices_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryPricesRequest.fromBuffer(value),
        ($1.QueryPricesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryRawPricesRequest, $1.QueryRawPricesResponse>(
        'RawPrices',
        rawPrices_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryRawPricesRequest.fromBuffer(value),
        ($1.QueryRawPricesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryOraclesRequest, $1.QueryOraclesResponse>(
        'Oracles',
        oracles_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryOraclesRequest.fromBuffer(value),
        ($1.QueryOraclesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryMarketsRequest, $1.QueryMarketsResponse>(
        'Markets',
        markets_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryMarketsRequest.fromBuffer(value),
        ($1.QueryMarketsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.QueryParamsResponse> params_Pre($grpc.ServiceCall call, $async.Future<$1.QueryParamsRequest> request) async {
    return params(call, await request);
  }

  $async.Future<$1.QueryPriceResponse> price_Pre($grpc.ServiceCall call, $async.Future<$1.QueryPriceRequest> request) async {
    return price(call, await request);
  }

  $async.Future<$1.QueryPricesResponse> prices_Pre($grpc.ServiceCall call, $async.Future<$1.QueryPricesRequest> request) async {
    return prices(call, await request);
  }

  $async.Future<$1.QueryRawPricesResponse> rawPrices_Pre($grpc.ServiceCall call, $async.Future<$1.QueryRawPricesRequest> request) async {
    return rawPrices(call, await request);
  }

  $async.Future<$1.QueryOraclesResponse> oracles_Pre($grpc.ServiceCall call, $async.Future<$1.QueryOraclesRequest> request) async {
    return oracles(call, await request);
  }

  $async.Future<$1.QueryMarketsResponse> markets_Pre($grpc.ServiceCall call, $async.Future<$1.QueryMarketsRequest> request) async {
    return markets(call, await request);
  }

  $async.Future<$1.QueryParamsResponse> params($grpc.ServiceCall call, $1.QueryParamsRequest request);
  $async.Future<$1.QueryPriceResponse> price($grpc.ServiceCall call, $1.QueryPriceRequest request);
  $async.Future<$1.QueryPricesResponse> prices($grpc.ServiceCall call, $1.QueryPricesRequest request);
  $async.Future<$1.QueryRawPricesResponse> rawPrices($grpc.ServiceCall call, $1.QueryRawPricesRequest request);
  $async.Future<$1.QueryOraclesResponse> oracles($grpc.ServiceCall call, $1.QueryOraclesRequest request);
  $async.Future<$1.QueryMarketsResponse> markets($grpc.ServiceCall call, $1.QueryMarketsRequest request);
}
