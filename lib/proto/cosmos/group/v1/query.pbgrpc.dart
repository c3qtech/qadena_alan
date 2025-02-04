//
//  Generated code. Do not modify.
//  source: cosmos/group/v1/query.proto
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

@$pb.GrpcServiceName('cosmos.group.v1.Query')
class QueryClient extends $grpc.Client {
  static final _$groupInfo = $grpc.ClientMethod<$1.QueryGroupInfoRequest, $1.QueryGroupInfoResponse>(
      '/cosmos.group.v1.Query/GroupInfo',
      ($1.QueryGroupInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryGroupInfoResponse.fromBuffer(value));
  static final _$groupPolicyInfo = $grpc.ClientMethod<$1.QueryGroupPolicyInfoRequest, $1.QueryGroupPolicyInfoResponse>(
      '/cosmos.group.v1.Query/GroupPolicyInfo',
      ($1.QueryGroupPolicyInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryGroupPolicyInfoResponse.fromBuffer(value));
  static final _$groupMembers = $grpc.ClientMethod<$1.QueryGroupMembersRequest, $1.QueryGroupMembersResponse>(
      '/cosmos.group.v1.Query/GroupMembers',
      ($1.QueryGroupMembersRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryGroupMembersResponse.fromBuffer(value));
  static final _$groupsByAdmin = $grpc.ClientMethod<$1.QueryGroupsByAdminRequest, $1.QueryGroupsByAdminResponse>(
      '/cosmos.group.v1.Query/GroupsByAdmin',
      ($1.QueryGroupsByAdminRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryGroupsByAdminResponse.fromBuffer(value));
  static final _$groupPoliciesByGroup = $grpc.ClientMethod<$1.QueryGroupPoliciesByGroupRequest, $1.QueryGroupPoliciesByGroupResponse>(
      '/cosmos.group.v1.Query/GroupPoliciesByGroup',
      ($1.QueryGroupPoliciesByGroupRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryGroupPoliciesByGroupResponse.fromBuffer(value));
  static final _$groupPoliciesByAdmin = $grpc.ClientMethod<$1.QueryGroupPoliciesByAdminRequest, $1.QueryGroupPoliciesByAdminResponse>(
      '/cosmos.group.v1.Query/GroupPoliciesByAdmin',
      ($1.QueryGroupPoliciesByAdminRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryGroupPoliciesByAdminResponse.fromBuffer(value));
  static final _$proposal = $grpc.ClientMethod<$1.QueryProposalRequest, $1.QueryProposalResponse>(
      '/cosmos.group.v1.Query/Proposal',
      ($1.QueryProposalRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryProposalResponse.fromBuffer(value));
  static final _$proposalsByGroupPolicy = $grpc.ClientMethod<$1.QueryProposalsByGroupPolicyRequest, $1.QueryProposalsByGroupPolicyResponse>(
      '/cosmos.group.v1.Query/ProposalsByGroupPolicy',
      ($1.QueryProposalsByGroupPolicyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryProposalsByGroupPolicyResponse.fromBuffer(value));
  static final _$voteByProposalVoter = $grpc.ClientMethod<$1.QueryVoteByProposalVoterRequest, $1.QueryVoteByProposalVoterResponse>(
      '/cosmos.group.v1.Query/VoteByProposalVoter',
      ($1.QueryVoteByProposalVoterRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryVoteByProposalVoterResponse.fromBuffer(value));
  static final _$votesByProposal = $grpc.ClientMethod<$1.QueryVotesByProposalRequest, $1.QueryVotesByProposalResponse>(
      '/cosmos.group.v1.Query/VotesByProposal',
      ($1.QueryVotesByProposalRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryVotesByProposalResponse.fromBuffer(value));
  static final _$votesByVoter = $grpc.ClientMethod<$1.QueryVotesByVoterRequest, $1.QueryVotesByVoterResponse>(
      '/cosmos.group.v1.Query/VotesByVoter',
      ($1.QueryVotesByVoterRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryVotesByVoterResponse.fromBuffer(value));
  static final _$groupsByMember = $grpc.ClientMethod<$1.QueryGroupsByMemberRequest, $1.QueryGroupsByMemberResponse>(
      '/cosmos.group.v1.Query/GroupsByMember',
      ($1.QueryGroupsByMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryGroupsByMemberResponse.fromBuffer(value));
  static final _$tallyResult = $grpc.ClientMethod<$1.QueryTallyResultRequest, $1.QueryTallyResultResponse>(
      '/cosmos.group.v1.Query/TallyResult',
      ($1.QueryTallyResultRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryTallyResultResponse.fromBuffer(value));
  static final _$groups = $grpc.ClientMethod<$1.QueryGroupsRequest, $1.QueryGroupsResponse>(
      '/cosmos.group.v1.Query/Groups',
      ($1.QueryGroupsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryGroupsResponse.fromBuffer(value));

  QueryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.QueryGroupInfoResponse> groupInfo($1.QueryGroupInfoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$groupInfo, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryGroupPolicyInfoResponse> groupPolicyInfo($1.QueryGroupPolicyInfoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$groupPolicyInfo, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryGroupMembersResponse> groupMembers($1.QueryGroupMembersRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$groupMembers, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryGroupsByAdminResponse> groupsByAdmin($1.QueryGroupsByAdminRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$groupsByAdmin, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryGroupPoliciesByGroupResponse> groupPoliciesByGroup($1.QueryGroupPoliciesByGroupRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$groupPoliciesByGroup, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryGroupPoliciesByAdminResponse> groupPoliciesByAdmin($1.QueryGroupPoliciesByAdminRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$groupPoliciesByAdmin, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryProposalResponse> proposal($1.QueryProposalRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$proposal, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryProposalsByGroupPolicyResponse> proposalsByGroupPolicy($1.QueryProposalsByGroupPolicyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$proposalsByGroupPolicy, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryVoteByProposalVoterResponse> voteByProposalVoter($1.QueryVoteByProposalVoterRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$voteByProposalVoter, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryVotesByProposalResponse> votesByProposal($1.QueryVotesByProposalRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$votesByProposal, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryVotesByVoterResponse> votesByVoter($1.QueryVotesByVoterRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$votesByVoter, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryGroupsByMemberResponse> groupsByMember($1.QueryGroupsByMemberRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$groupsByMember, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryTallyResultResponse> tallyResult($1.QueryTallyResultRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$tallyResult, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryGroupsResponse> groups($1.QueryGroupsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$groups, request, options: options);
  }
}

@$pb.GrpcServiceName('cosmos.group.v1.Query')
abstract class QueryServiceBase extends $grpc.Service {
  $core.String get $name => 'cosmos.group.v1.Query';

  QueryServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.QueryGroupInfoRequest, $1.QueryGroupInfoResponse>(
        'GroupInfo',
        groupInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryGroupInfoRequest.fromBuffer(value),
        ($1.QueryGroupInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryGroupPolicyInfoRequest, $1.QueryGroupPolicyInfoResponse>(
        'GroupPolicyInfo',
        groupPolicyInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryGroupPolicyInfoRequest.fromBuffer(value),
        ($1.QueryGroupPolicyInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryGroupMembersRequest, $1.QueryGroupMembersResponse>(
        'GroupMembers',
        groupMembers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryGroupMembersRequest.fromBuffer(value),
        ($1.QueryGroupMembersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryGroupsByAdminRequest, $1.QueryGroupsByAdminResponse>(
        'GroupsByAdmin',
        groupsByAdmin_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryGroupsByAdminRequest.fromBuffer(value),
        ($1.QueryGroupsByAdminResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryGroupPoliciesByGroupRequest, $1.QueryGroupPoliciesByGroupResponse>(
        'GroupPoliciesByGroup',
        groupPoliciesByGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryGroupPoliciesByGroupRequest.fromBuffer(value),
        ($1.QueryGroupPoliciesByGroupResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryGroupPoliciesByAdminRequest, $1.QueryGroupPoliciesByAdminResponse>(
        'GroupPoliciesByAdmin',
        groupPoliciesByAdmin_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryGroupPoliciesByAdminRequest.fromBuffer(value),
        ($1.QueryGroupPoliciesByAdminResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryProposalRequest, $1.QueryProposalResponse>(
        'Proposal',
        proposal_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryProposalRequest.fromBuffer(value),
        ($1.QueryProposalResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryProposalsByGroupPolicyRequest, $1.QueryProposalsByGroupPolicyResponse>(
        'ProposalsByGroupPolicy',
        proposalsByGroupPolicy_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryProposalsByGroupPolicyRequest.fromBuffer(value),
        ($1.QueryProposalsByGroupPolicyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryVoteByProposalVoterRequest, $1.QueryVoteByProposalVoterResponse>(
        'VoteByProposalVoter',
        voteByProposalVoter_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryVoteByProposalVoterRequest.fromBuffer(value),
        ($1.QueryVoteByProposalVoterResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryVotesByProposalRequest, $1.QueryVotesByProposalResponse>(
        'VotesByProposal',
        votesByProposal_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryVotesByProposalRequest.fromBuffer(value),
        ($1.QueryVotesByProposalResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryVotesByVoterRequest, $1.QueryVotesByVoterResponse>(
        'VotesByVoter',
        votesByVoter_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryVotesByVoterRequest.fromBuffer(value),
        ($1.QueryVotesByVoterResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryGroupsByMemberRequest, $1.QueryGroupsByMemberResponse>(
        'GroupsByMember',
        groupsByMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryGroupsByMemberRequest.fromBuffer(value),
        ($1.QueryGroupsByMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryTallyResultRequest, $1.QueryTallyResultResponse>(
        'TallyResult',
        tallyResult_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryTallyResultRequest.fromBuffer(value),
        ($1.QueryTallyResultResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryGroupsRequest, $1.QueryGroupsResponse>(
        'Groups',
        groups_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryGroupsRequest.fromBuffer(value),
        ($1.QueryGroupsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.QueryGroupInfoResponse> groupInfo_Pre($grpc.ServiceCall call, $async.Future<$1.QueryGroupInfoRequest> request) async {
    return groupInfo(call, await request);
  }

  $async.Future<$1.QueryGroupPolicyInfoResponse> groupPolicyInfo_Pre($grpc.ServiceCall call, $async.Future<$1.QueryGroupPolicyInfoRequest> request) async {
    return groupPolicyInfo(call, await request);
  }

  $async.Future<$1.QueryGroupMembersResponse> groupMembers_Pre($grpc.ServiceCall call, $async.Future<$1.QueryGroupMembersRequest> request) async {
    return groupMembers(call, await request);
  }

  $async.Future<$1.QueryGroupsByAdminResponse> groupsByAdmin_Pre($grpc.ServiceCall call, $async.Future<$1.QueryGroupsByAdminRequest> request) async {
    return groupsByAdmin(call, await request);
  }

  $async.Future<$1.QueryGroupPoliciesByGroupResponse> groupPoliciesByGroup_Pre($grpc.ServiceCall call, $async.Future<$1.QueryGroupPoliciesByGroupRequest> request) async {
    return groupPoliciesByGroup(call, await request);
  }

  $async.Future<$1.QueryGroupPoliciesByAdminResponse> groupPoliciesByAdmin_Pre($grpc.ServiceCall call, $async.Future<$1.QueryGroupPoliciesByAdminRequest> request) async {
    return groupPoliciesByAdmin(call, await request);
  }

  $async.Future<$1.QueryProposalResponse> proposal_Pre($grpc.ServiceCall call, $async.Future<$1.QueryProposalRequest> request) async {
    return proposal(call, await request);
  }

  $async.Future<$1.QueryProposalsByGroupPolicyResponse> proposalsByGroupPolicy_Pre($grpc.ServiceCall call, $async.Future<$1.QueryProposalsByGroupPolicyRequest> request) async {
    return proposalsByGroupPolicy(call, await request);
  }

  $async.Future<$1.QueryVoteByProposalVoterResponse> voteByProposalVoter_Pre($grpc.ServiceCall call, $async.Future<$1.QueryVoteByProposalVoterRequest> request) async {
    return voteByProposalVoter(call, await request);
  }

  $async.Future<$1.QueryVotesByProposalResponse> votesByProposal_Pre($grpc.ServiceCall call, $async.Future<$1.QueryVotesByProposalRequest> request) async {
    return votesByProposal(call, await request);
  }

  $async.Future<$1.QueryVotesByVoterResponse> votesByVoter_Pre($grpc.ServiceCall call, $async.Future<$1.QueryVotesByVoterRequest> request) async {
    return votesByVoter(call, await request);
  }

  $async.Future<$1.QueryGroupsByMemberResponse> groupsByMember_Pre($grpc.ServiceCall call, $async.Future<$1.QueryGroupsByMemberRequest> request) async {
    return groupsByMember(call, await request);
  }

  $async.Future<$1.QueryTallyResultResponse> tallyResult_Pre($grpc.ServiceCall call, $async.Future<$1.QueryTallyResultRequest> request) async {
    return tallyResult(call, await request);
  }

  $async.Future<$1.QueryGroupsResponse> groups_Pre($grpc.ServiceCall call, $async.Future<$1.QueryGroupsRequest> request) async {
    return groups(call, await request);
  }

  $async.Future<$1.QueryGroupInfoResponse> groupInfo($grpc.ServiceCall call, $1.QueryGroupInfoRequest request);
  $async.Future<$1.QueryGroupPolicyInfoResponse> groupPolicyInfo($grpc.ServiceCall call, $1.QueryGroupPolicyInfoRequest request);
  $async.Future<$1.QueryGroupMembersResponse> groupMembers($grpc.ServiceCall call, $1.QueryGroupMembersRequest request);
  $async.Future<$1.QueryGroupsByAdminResponse> groupsByAdmin($grpc.ServiceCall call, $1.QueryGroupsByAdminRequest request);
  $async.Future<$1.QueryGroupPoliciesByGroupResponse> groupPoliciesByGroup($grpc.ServiceCall call, $1.QueryGroupPoliciesByGroupRequest request);
  $async.Future<$1.QueryGroupPoliciesByAdminResponse> groupPoliciesByAdmin($grpc.ServiceCall call, $1.QueryGroupPoliciesByAdminRequest request);
  $async.Future<$1.QueryProposalResponse> proposal($grpc.ServiceCall call, $1.QueryProposalRequest request);
  $async.Future<$1.QueryProposalsByGroupPolicyResponse> proposalsByGroupPolicy($grpc.ServiceCall call, $1.QueryProposalsByGroupPolicyRequest request);
  $async.Future<$1.QueryVoteByProposalVoterResponse> voteByProposalVoter($grpc.ServiceCall call, $1.QueryVoteByProposalVoterRequest request);
  $async.Future<$1.QueryVotesByProposalResponse> votesByProposal($grpc.ServiceCall call, $1.QueryVotesByProposalRequest request);
  $async.Future<$1.QueryVotesByVoterResponse> votesByVoter($grpc.ServiceCall call, $1.QueryVotesByVoterRequest request);
  $async.Future<$1.QueryGroupsByMemberResponse> groupsByMember($grpc.ServiceCall call, $1.QueryGroupsByMemberRequest request);
  $async.Future<$1.QueryTallyResultResponse> tallyResult($grpc.ServiceCall call, $1.QueryTallyResultRequest request);
  $async.Future<$1.QueryGroupsResponse> groups($grpc.ServiceCall call, $1.QueryGroupsRequest request);
}
