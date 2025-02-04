//
//  Generated code. Do not modify.
//  source: qadena/qadena/query.proto
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

@$pb.GrpcServiceName('qadena.qadena.Query')
class QueryClient extends $grpc.Client {
  static final _$params = $grpc.ClientMethod<$1.QueryParamsRequest, $1.QueryParamsResponse>(
      '/qadena.qadena.Query/Params',
      ($1.QueryParamsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryParamsResponse.fromBuffer(value));
  static final _$credential = $grpc.ClientMethod<$1.QueryGetCredentialRequest, $1.QueryGetCredentialResponse>(
      '/qadena.qadena.Query/Credential',
      ($1.QueryGetCredentialRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryGetCredentialResponse.fromBuffer(value));
  static final _$credentialAll = $grpc.ClientMethod<$1.QueryAllCredentialRequest, $1.QueryAllCredentialResponse>(
      '/qadena.qadena.Query/CredentialAll',
      ($1.QueryAllCredentialRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryAllCredentialResponse.fromBuffer(value));
  static final _$publicKey = $grpc.ClientMethod<$1.QueryGetPublicKeyRequest, $1.QueryGetPublicKeyResponse>(
      '/qadena.qadena.Query/PublicKey',
      ($1.QueryGetPublicKeyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryGetPublicKeyResponse.fromBuffer(value));
  static final _$publicKeyAll = $grpc.ClientMethod<$1.QueryAllPublicKeyRequest, $1.QueryAllPublicKeyResponse>(
      '/qadena.qadena.Query/PublicKeyAll',
      ($1.QueryAllPublicKeyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryAllPublicKeyResponse.fromBuffer(value));
  static final _$wallet = $grpc.ClientMethod<$1.QueryGetWalletRequest, $1.QueryGetWalletResponse>(
      '/qadena.qadena.Query/Wallet',
      ($1.QueryGetWalletRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryGetWalletResponse.fromBuffer(value));
  static final _$walletAll = $grpc.ClientMethod<$1.QueryAllWalletRequest, $1.QueryAllWalletResponse>(
      '/qadena.qadena.Query/WalletAll',
      ($1.QueryAllWalletRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryAllWalletResponse.fromBuffer(value));
  static final _$intervalPublicKeyID = $grpc.ClientMethod<$1.QueryGetIntervalPublicKeyIDRequest, $1.QueryGetIntervalPublicKeyIDResponse>(
      '/qadena.qadena.Query/IntervalPublicKeyID',
      ($1.QueryGetIntervalPublicKeyIDRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryGetIntervalPublicKeyIDResponse.fromBuffer(value));
  static final _$intervalPublicKeyIDAll = $grpc.ClientMethod<$1.QueryAllIntervalPublicKeyIDRequest, $1.QueryAllIntervalPublicKeyIDResponse>(
      '/qadena.qadena.Query/IntervalPublicKeyIDAll',
      ($1.QueryAllIntervalPublicKeyIDRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryAllIntervalPublicKeyIDResponse.fromBuffer(value));
  static final _$pioneerJar = $grpc.ClientMethod<$1.QueryGetPioneerJarRequest, $1.QueryGetPioneerJarResponse>(
      '/qadena.qadena.Query/PioneerJar',
      ($1.QueryGetPioneerJarRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryGetPioneerJarResponse.fromBuffer(value));
  static final _$pioneerJarAll = $grpc.ClientMethod<$1.QueryAllPioneerJarRequest, $1.QueryAllPioneerJarResponse>(
      '/qadena.qadena.Query/PioneerJarAll',
      ($1.QueryAllPioneerJarRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryAllPioneerJarResponse.fromBuffer(value));
  static final _$jarRegulator = $grpc.ClientMethod<$1.QueryGetJarRegulatorRequest, $1.QueryGetJarRegulatorResponse>(
      '/qadena.qadena.Query/JarRegulator',
      ($1.QueryGetJarRegulatorRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryGetJarRegulatorResponse.fromBuffer(value));
  static final _$jarRegulatorAll = $grpc.ClientMethod<$1.QueryAllJarRegulatorRequest, $1.QueryAllJarRegulatorResponse>(
      '/qadena.qadena.Query/JarRegulatorAll',
      ($1.QueryAllJarRegulatorRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryAllJarRegulatorResponse.fromBuffer(value));
  static final _$suspiciousTransaction = $grpc.ClientMethod<$1.QueryGetSuspiciousTransactionRequest, $1.QueryGetSuspiciousTransactionResponse>(
      '/qadena.qadena.Query/SuspiciousTransaction',
      ($1.QueryGetSuspiciousTransactionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryGetSuspiciousTransactionResponse.fromBuffer(value));
  static final _$suspiciousTransactionAll = $grpc.ClientMethod<$1.QueryAllSuspiciousTransactionRequest, $1.QueryAllSuspiciousTransactionResponse>(
      '/qadena.qadena.Query/SuspiciousTransactionAll',
      ($1.QueryAllSuspiciousTransactionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryAllSuspiciousTransactionResponse.fromBuffer(value));
  static final _$protectKey = $grpc.ClientMethod<$1.QueryGetProtectKeyRequest, $1.QueryGetProtectKeyResponse>(
      '/qadena.qadena.Query/ProtectKey',
      ($1.QueryGetProtectKeyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryGetProtectKeyResponse.fromBuffer(value));
  static final _$protectKeyAll = $grpc.ClientMethod<$1.QueryAllProtectKeyRequest, $1.QueryAllProtectKeyResponse>(
      '/qadena.qadena.Query/ProtectKeyAll',
      ($1.QueryAllProtectKeyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryAllProtectKeyResponse.fromBuffer(value));
  static final _$recoverKey = $grpc.ClientMethod<$1.QueryGetRecoverKeyRequest, $1.QueryGetRecoverKeyResponse>(
      '/qadena.qadena.Query/RecoverKey',
      ($1.QueryGetRecoverKeyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryGetRecoverKeyResponse.fromBuffer(value));
  static final _$recoverKeyAll = $grpc.ClientMethod<$1.QueryAllRecoverKeyRequest, $1.QueryAllRecoverKeyResponse>(
      '/qadena.qadena.Query/RecoverKeyAll',
      ($1.QueryAllRecoverKeyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryAllRecoverKeyResponse.fromBuffer(value));
  static final _$treasury = $grpc.ClientMethod<$1.QueryTreasuryRequest, $1.QueryTreasuryResponse>(
      '/qadena.qadena.Query/Treasury',
      ($1.QueryTreasuryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryTreasuryResponse.fromBuffer(value));
  static final _$account = $grpc.ClientMethod<$1.QueryAccountRequest, $1.QueryAccountResponse>(
      '/qadena.qadena.Query/Account',
      ($1.QueryAccountRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryAccountResponse.fromBuffer(value));
  static final _$incentives = $grpc.ClientMethod<$1.QueryIncentivesRequest, $1.QueryIncentivesResponse>(
      '/qadena.qadena.Query/Incentives',
      ($1.QueryIncentivesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryIncentivesResponse.fromBuffer(value));
  static final _$syncEnclave = $grpc.ClientMethod<$1.QuerySyncEnclaveRequest, $1.QuerySyncEnclaveResponse>(
      '/qadena.qadena.Query/SyncEnclave',
      ($1.QuerySyncEnclaveRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QuerySyncEnclaveResponse.fromBuffer(value));
  static final _$enclaveSecretShare = $grpc.ClientMethod<$1.QueryEnclaveSecretShareRequest, $1.QueryEnclaveSecretShareResponse>(
      '/qadena.qadena.Query/EnclaveSecretShare',
      ($1.QueryEnclaveSecretShareRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryEnclaveSecretShareResponse.fromBuffer(value));
  static final _$enclaveRecoverKeyShare = $grpc.ClientMethod<$1.QueryEnclaveRecoverKeyShareRequest, $1.QueryEnclaveRecoverKeyShareResponse>(
      '/qadena.qadena.Query/EnclaveRecoverKeyShare',
      ($1.QueryEnclaveRecoverKeyShareRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryEnclaveRecoverKeyShareResponse.fromBuffer(value));
  static final _$findCredential = $grpc.ClientMethod<$1.QueryFindCredentialRequest, $1.QueryFindCredentialResponse>(
      '/qadena.qadena.Query/FindCredential',
      ($1.QueryFindCredentialRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryFindCredentialResponse.fromBuffer(value));

  QueryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.QueryParamsResponse> params($1.QueryParamsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$params, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryGetCredentialResponse> credential($1.QueryGetCredentialRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$credential, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryAllCredentialResponse> credentialAll($1.QueryAllCredentialRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$credentialAll, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryGetPublicKeyResponse> publicKey($1.QueryGetPublicKeyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$publicKey, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryAllPublicKeyResponse> publicKeyAll($1.QueryAllPublicKeyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$publicKeyAll, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryGetWalletResponse> wallet($1.QueryGetWalletRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$wallet, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryAllWalletResponse> walletAll($1.QueryAllWalletRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$walletAll, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryGetIntervalPublicKeyIDResponse> intervalPublicKeyID($1.QueryGetIntervalPublicKeyIDRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$intervalPublicKeyID, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryAllIntervalPublicKeyIDResponse> intervalPublicKeyIDAll($1.QueryAllIntervalPublicKeyIDRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$intervalPublicKeyIDAll, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryGetPioneerJarResponse> pioneerJar($1.QueryGetPioneerJarRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$pioneerJar, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryAllPioneerJarResponse> pioneerJarAll($1.QueryAllPioneerJarRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$pioneerJarAll, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryGetJarRegulatorResponse> jarRegulator($1.QueryGetJarRegulatorRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$jarRegulator, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryAllJarRegulatorResponse> jarRegulatorAll($1.QueryAllJarRegulatorRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$jarRegulatorAll, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryGetSuspiciousTransactionResponse> suspiciousTransaction($1.QueryGetSuspiciousTransactionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$suspiciousTransaction, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryAllSuspiciousTransactionResponse> suspiciousTransactionAll($1.QueryAllSuspiciousTransactionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$suspiciousTransactionAll, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryGetProtectKeyResponse> protectKey($1.QueryGetProtectKeyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$protectKey, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryAllProtectKeyResponse> protectKeyAll($1.QueryAllProtectKeyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$protectKeyAll, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryGetRecoverKeyResponse> recoverKey($1.QueryGetRecoverKeyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$recoverKey, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryAllRecoverKeyResponse> recoverKeyAll($1.QueryAllRecoverKeyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$recoverKeyAll, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryTreasuryResponse> treasury($1.QueryTreasuryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$treasury, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryAccountResponse> account($1.QueryAccountRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$account, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryIncentivesResponse> incentives($1.QueryIncentivesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$incentives, request, options: options);
  }

  $grpc.ResponseFuture<$1.QuerySyncEnclaveResponse> syncEnclave($1.QuerySyncEnclaveRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$syncEnclave, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryEnclaveSecretShareResponse> enclaveSecretShare($1.QueryEnclaveSecretShareRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$enclaveSecretShare, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryEnclaveRecoverKeyShareResponse> enclaveRecoverKeyShare($1.QueryEnclaveRecoverKeyShareRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$enclaveRecoverKeyShare, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryFindCredentialResponse> findCredential($1.QueryFindCredentialRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$findCredential, request, options: options);
  }
}

@$pb.GrpcServiceName('qadena.qadena.Query')
abstract class QueryServiceBase extends $grpc.Service {
  $core.String get $name => 'qadena.qadena.Query';

  QueryServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.QueryParamsRequest, $1.QueryParamsResponse>(
        'Params',
        params_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryParamsRequest.fromBuffer(value),
        ($1.QueryParamsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryGetCredentialRequest, $1.QueryGetCredentialResponse>(
        'Credential',
        credential_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryGetCredentialRequest.fromBuffer(value),
        ($1.QueryGetCredentialResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryAllCredentialRequest, $1.QueryAllCredentialResponse>(
        'CredentialAll',
        credentialAll_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryAllCredentialRequest.fromBuffer(value),
        ($1.QueryAllCredentialResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryGetPublicKeyRequest, $1.QueryGetPublicKeyResponse>(
        'PublicKey',
        publicKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryGetPublicKeyRequest.fromBuffer(value),
        ($1.QueryGetPublicKeyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryAllPublicKeyRequest, $1.QueryAllPublicKeyResponse>(
        'PublicKeyAll',
        publicKeyAll_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryAllPublicKeyRequest.fromBuffer(value),
        ($1.QueryAllPublicKeyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryGetWalletRequest, $1.QueryGetWalletResponse>(
        'Wallet',
        wallet_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryGetWalletRequest.fromBuffer(value),
        ($1.QueryGetWalletResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryAllWalletRequest, $1.QueryAllWalletResponse>(
        'WalletAll',
        walletAll_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryAllWalletRequest.fromBuffer(value),
        ($1.QueryAllWalletResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryGetIntervalPublicKeyIDRequest, $1.QueryGetIntervalPublicKeyIDResponse>(
        'IntervalPublicKeyID',
        intervalPublicKeyID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryGetIntervalPublicKeyIDRequest.fromBuffer(value),
        ($1.QueryGetIntervalPublicKeyIDResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryAllIntervalPublicKeyIDRequest, $1.QueryAllIntervalPublicKeyIDResponse>(
        'IntervalPublicKeyIDAll',
        intervalPublicKeyIDAll_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryAllIntervalPublicKeyIDRequest.fromBuffer(value),
        ($1.QueryAllIntervalPublicKeyIDResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryGetPioneerJarRequest, $1.QueryGetPioneerJarResponse>(
        'PioneerJar',
        pioneerJar_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryGetPioneerJarRequest.fromBuffer(value),
        ($1.QueryGetPioneerJarResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryAllPioneerJarRequest, $1.QueryAllPioneerJarResponse>(
        'PioneerJarAll',
        pioneerJarAll_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryAllPioneerJarRequest.fromBuffer(value),
        ($1.QueryAllPioneerJarResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryGetJarRegulatorRequest, $1.QueryGetJarRegulatorResponse>(
        'JarRegulator',
        jarRegulator_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryGetJarRegulatorRequest.fromBuffer(value),
        ($1.QueryGetJarRegulatorResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryAllJarRegulatorRequest, $1.QueryAllJarRegulatorResponse>(
        'JarRegulatorAll',
        jarRegulatorAll_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryAllJarRegulatorRequest.fromBuffer(value),
        ($1.QueryAllJarRegulatorResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryGetSuspiciousTransactionRequest, $1.QueryGetSuspiciousTransactionResponse>(
        'SuspiciousTransaction',
        suspiciousTransaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryGetSuspiciousTransactionRequest.fromBuffer(value),
        ($1.QueryGetSuspiciousTransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryAllSuspiciousTransactionRequest, $1.QueryAllSuspiciousTransactionResponse>(
        'SuspiciousTransactionAll',
        suspiciousTransactionAll_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryAllSuspiciousTransactionRequest.fromBuffer(value),
        ($1.QueryAllSuspiciousTransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryGetProtectKeyRequest, $1.QueryGetProtectKeyResponse>(
        'ProtectKey',
        protectKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryGetProtectKeyRequest.fromBuffer(value),
        ($1.QueryGetProtectKeyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryAllProtectKeyRequest, $1.QueryAllProtectKeyResponse>(
        'ProtectKeyAll',
        protectKeyAll_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryAllProtectKeyRequest.fromBuffer(value),
        ($1.QueryAllProtectKeyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryGetRecoverKeyRequest, $1.QueryGetRecoverKeyResponse>(
        'RecoverKey',
        recoverKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryGetRecoverKeyRequest.fromBuffer(value),
        ($1.QueryGetRecoverKeyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryAllRecoverKeyRequest, $1.QueryAllRecoverKeyResponse>(
        'RecoverKeyAll',
        recoverKeyAll_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryAllRecoverKeyRequest.fromBuffer(value),
        ($1.QueryAllRecoverKeyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryTreasuryRequest, $1.QueryTreasuryResponse>(
        'Treasury',
        treasury_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryTreasuryRequest.fromBuffer(value),
        ($1.QueryTreasuryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryAccountRequest, $1.QueryAccountResponse>(
        'Account',
        account_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryAccountRequest.fromBuffer(value),
        ($1.QueryAccountResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryIncentivesRequest, $1.QueryIncentivesResponse>(
        'Incentives',
        incentives_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryIncentivesRequest.fromBuffer(value),
        ($1.QueryIncentivesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QuerySyncEnclaveRequest, $1.QuerySyncEnclaveResponse>(
        'SyncEnclave',
        syncEnclave_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QuerySyncEnclaveRequest.fromBuffer(value),
        ($1.QuerySyncEnclaveResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryEnclaveSecretShareRequest, $1.QueryEnclaveSecretShareResponse>(
        'EnclaveSecretShare',
        enclaveSecretShare_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryEnclaveSecretShareRequest.fromBuffer(value),
        ($1.QueryEnclaveSecretShareResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryEnclaveRecoverKeyShareRequest, $1.QueryEnclaveRecoverKeyShareResponse>(
        'EnclaveRecoverKeyShare',
        enclaveRecoverKeyShare_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryEnclaveRecoverKeyShareRequest.fromBuffer(value),
        ($1.QueryEnclaveRecoverKeyShareResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryFindCredentialRequest, $1.QueryFindCredentialResponse>(
        'FindCredential',
        findCredential_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryFindCredentialRequest.fromBuffer(value),
        ($1.QueryFindCredentialResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.QueryParamsResponse> params_Pre($grpc.ServiceCall call, $async.Future<$1.QueryParamsRequest> request) async {
    return params(call, await request);
  }

  $async.Future<$1.QueryGetCredentialResponse> credential_Pre($grpc.ServiceCall call, $async.Future<$1.QueryGetCredentialRequest> request) async {
    return credential(call, await request);
  }

  $async.Future<$1.QueryAllCredentialResponse> credentialAll_Pre($grpc.ServiceCall call, $async.Future<$1.QueryAllCredentialRequest> request) async {
    return credentialAll(call, await request);
  }

  $async.Future<$1.QueryGetPublicKeyResponse> publicKey_Pre($grpc.ServiceCall call, $async.Future<$1.QueryGetPublicKeyRequest> request) async {
    return publicKey(call, await request);
  }

  $async.Future<$1.QueryAllPublicKeyResponse> publicKeyAll_Pre($grpc.ServiceCall call, $async.Future<$1.QueryAllPublicKeyRequest> request) async {
    return publicKeyAll(call, await request);
  }

  $async.Future<$1.QueryGetWalletResponse> wallet_Pre($grpc.ServiceCall call, $async.Future<$1.QueryGetWalletRequest> request) async {
    return wallet(call, await request);
  }

  $async.Future<$1.QueryAllWalletResponse> walletAll_Pre($grpc.ServiceCall call, $async.Future<$1.QueryAllWalletRequest> request) async {
    return walletAll(call, await request);
  }

  $async.Future<$1.QueryGetIntervalPublicKeyIDResponse> intervalPublicKeyID_Pre($grpc.ServiceCall call, $async.Future<$1.QueryGetIntervalPublicKeyIDRequest> request) async {
    return intervalPublicKeyID(call, await request);
  }

  $async.Future<$1.QueryAllIntervalPublicKeyIDResponse> intervalPublicKeyIDAll_Pre($grpc.ServiceCall call, $async.Future<$1.QueryAllIntervalPublicKeyIDRequest> request) async {
    return intervalPublicKeyIDAll(call, await request);
  }

  $async.Future<$1.QueryGetPioneerJarResponse> pioneerJar_Pre($grpc.ServiceCall call, $async.Future<$1.QueryGetPioneerJarRequest> request) async {
    return pioneerJar(call, await request);
  }

  $async.Future<$1.QueryAllPioneerJarResponse> pioneerJarAll_Pre($grpc.ServiceCall call, $async.Future<$1.QueryAllPioneerJarRequest> request) async {
    return pioneerJarAll(call, await request);
  }

  $async.Future<$1.QueryGetJarRegulatorResponse> jarRegulator_Pre($grpc.ServiceCall call, $async.Future<$1.QueryGetJarRegulatorRequest> request) async {
    return jarRegulator(call, await request);
  }

  $async.Future<$1.QueryAllJarRegulatorResponse> jarRegulatorAll_Pre($grpc.ServiceCall call, $async.Future<$1.QueryAllJarRegulatorRequest> request) async {
    return jarRegulatorAll(call, await request);
  }

  $async.Future<$1.QueryGetSuspiciousTransactionResponse> suspiciousTransaction_Pre($grpc.ServiceCall call, $async.Future<$1.QueryGetSuspiciousTransactionRequest> request) async {
    return suspiciousTransaction(call, await request);
  }

  $async.Future<$1.QueryAllSuspiciousTransactionResponse> suspiciousTransactionAll_Pre($grpc.ServiceCall call, $async.Future<$1.QueryAllSuspiciousTransactionRequest> request) async {
    return suspiciousTransactionAll(call, await request);
  }

  $async.Future<$1.QueryGetProtectKeyResponse> protectKey_Pre($grpc.ServiceCall call, $async.Future<$1.QueryGetProtectKeyRequest> request) async {
    return protectKey(call, await request);
  }

  $async.Future<$1.QueryAllProtectKeyResponse> protectKeyAll_Pre($grpc.ServiceCall call, $async.Future<$1.QueryAllProtectKeyRequest> request) async {
    return protectKeyAll(call, await request);
  }

  $async.Future<$1.QueryGetRecoverKeyResponse> recoverKey_Pre($grpc.ServiceCall call, $async.Future<$1.QueryGetRecoverKeyRequest> request) async {
    return recoverKey(call, await request);
  }

  $async.Future<$1.QueryAllRecoverKeyResponse> recoverKeyAll_Pre($grpc.ServiceCall call, $async.Future<$1.QueryAllRecoverKeyRequest> request) async {
    return recoverKeyAll(call, await request);
  }

  $async.Future<$1.QueryTreasuryResponse> treasury_Pre($grpc.ServiceCall call, $async.Future<$1.QueryTreasuryRequest> request) async {
    return treasury(call, await request);
  }

  $async.Future<$1.QueryAccountResponse> account_Pre($grpc.ServiceCall call, $async.Future<$1.QueryAccountRequest> request) async {
    return account(call, await request);
  }

  $async.Future<$1.QueryIncentivesResponse> incentives_Pre($grpc.ServiceCall call, $async.Future<$1.QueryIncentivesRequest> request) async {
    return incentives(call, await request);
  }

  $async.Future<$1.QuerySyncEnclaveResponse> syncEnclave_Pre($grpc.ServiceCall call, $async.Future<$1.QuerySyncEnclaveRequest> request) async {
    return syncEnclave(call, await request);
  }

  $async.Future<$1.QueryEnclaveSecretShareResponse> enclaveSecretShare_Pre($grpc.ServiceCall call, $async.Future<$1.QueryEnclaveSecretShareRequest> request) async {
    return enclaveSecretShare(call, await request);
  }

  $async.Future<$1.QueryEnclaveRecoverKeyShareResponse> enclaveRecoverKeyShare_Pre($grpc.ServiceCall call, $async.Future<$1.QueryEnclaveRecoverKeyShareRequest> request) async {
    return enclaveRecoverKeyShare(call, await request);
  }

  $async.Future<$1.QueryFindCredentialResponse> findCredential_Pre($grpc.ServiceCall call, $async.Future<$1.QueryFindCredentialRequest> request) async {
    return findCredential(call, await request);
  }

  $async.Future<$1.QueryParamsResponse> params($grpc.ServiceCall call, $1.QueryParamsRequest request);
  $async.Future<$1.QueryGetCredentialResponse> credential($grpc.ServiceCall call, $1.QueryGetCredentialRequest request);
  $async.Future<$1.QueryAllCredentialResponse> credentialAll($grpc.ServiceCall call, $1.QueryAllCredentialRequest request);
  $async.Future<$1.QueryGetPublicKeyResponse> publicKey($grpc.ServiceCall call, $1.QueryGetPublicKeyRequest request);
  $async.Future<$1.QueryAllPublicKeyResponse> publicKeyAll($grpc.ServiceCall call, $1.QueryAllPublicKeyRequest request);
  $async.Future<$1.QueryGetWalletResponse> wallet($grpc.ServiceCall call, $1.QueryGetWalletRequest request);
  $async.Future<$1.QueryAllWalletResponse> walletAll($grpc.ServiceCall call, $1.QueryAllWalletRequest request);
  $async.Future<$1.QueryGetIntervalPublicKeyIDResponse> intervalPublicKeyID($grpc.ServiceCall call, $1.QueryGetIntervalPublicKeyIDRequest request);
  $async.Future<$1.QueryAllIntervalPublicKeyIDResponse> intervalPublicKeyIDAll($grpc.ServiceCall call, $1.QueryAllIntervalPublicKeyIDRequest request);
  $async.Future<$1.QueryGetPioneerJarResponse> pioneerJar($grpc.ServiceCall call, $1.QueryGetPioneerJarRequest request);
  $async.Future<$1.QueryAllPioneerJarResponse> pioneerJarAll($grpc.ServiceCall call, $1.QueryAllPioneerJarRequest request);
  $async.Future<$1.QueryGetJarRegulatorResponse> jarRegulator($grpc.ServiceCall call, $1.QueryGetJarRegulatorRequest request);
  $async.Future<$1.QueryAllJarRegulatorResponse> jarRegulatorAll($grpc.ServiceCall call, $1.QueryAllJarRegulatorRequest request);
  $async.Future<$1.QueryGetSuspiciousTransactionResponse> suspiciousTransaction($grpc.ServiceCall call, $1.QueryGetSuspiciousTransactionRequest request);
  $async.Future<$1.QueryAllSuspiciousTransactionResponse> suspiciousTransactionAll($grpc.ServiceCall call, $1.QueryAllSuspiciousTransactionRequest request);
  $async.Future<$1.QueryGetProtectKeyResponse> protectKey($grpc.ServiceCall call, $1.QueryGetProtectKeyRequest request);
  $async.Future<$1.QueryAllProtectKeyResponse> protectKeyAll($grpc.ServiceCall call, $1.QueryAllProtectKeyRequest request);
  $async.Future<$1.QueryGetRecoverKeyResponse> recoverKey($grpc.ServiceCall call, $1.QueryGetRecoverKeyRequest request);
  $async.Future<$1.QueryAllRecoverKeyResponse> recoverKeyAll($grpc.ServiceCall call, $1.QueryAllRecoverKeyRequest request);
  $async.Future<$1.QueryTreasuryResponse> treasury($grpc.ServiceCall call, $1.QueryTreasuryRequest request);
  $async.Future<$1.QueryAccountResponse> account($grpc.ServiceCall call, $1.QueryAccountRequest request);
  $async.Future<$1.QueryIncentivesResponse> incentives($grpc.ServiceCall call, $1.QueryIncentivesRequest request);
  $async.Future<$1.QuerySyncEnclaveResponse> syncEnclave($grpc.ServiceCall call, $1.QuerySyncEnclaveRequest request);
  $async.Future<$1.QueryEnclaveSecretShareResponse> enclaveSecretShare($grpc.ServiceCall call, $1.QueryEnclaveSecretShareRequest request);
  $async.Future<$1.QueryEnclaveRecoverKeyShareResponse> enclaveRecoverKeyShare($grpc.ServiceCall call, $1.QueryEnclaveRecoverKeyShareRequest request);
  $async.Future<$1.QueryFindCredentialResponse> findCredential($grpc.ServiceCall call, $1.QueryFindCredentialRequest request);
}
