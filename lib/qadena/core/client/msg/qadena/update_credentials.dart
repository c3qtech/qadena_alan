import 'dart:typed_data';

import 'package:protobuf/protobuf.dart';
import 'package:qadena_alan/proto/qadena/qadena/export.dart';
import 'package:qadena_alan/proto/qadena/nameservice/export.dart' as nstypes;
import 'package:qadena_alan/qadena.dart';
import 'package:qadena_alan/qadena/core/client/query/export.dart';
import 'package:qadena_alan/qadena/types/qadena_hd_wallet.dart';
import 'package:qadena_alan/qadena/vshare.dart' as vshare;
import 'package:qadena_alan/qadena/core/client/msg/qadena/claim_credentials.dart';
import 'package:qadena_alan/qadena/core/client/msg/qadena/common.dart';
import 'package:qadena_alan/qadena/common.dart' as common;
import 'package:grpc/grpc.dart';

/// Applying a correction the identity provider published.
///
/// Mirrors x/qadena/client/cli/tx_update_credential.go. The division of labour is
/// imposed by the chain, not chosen: msg_server_update_credential.go requires
/// `credential.WalletID == msg.Creator`, so only the wallet that owns the
/// credential can update it. The identity provider can publish a corrected
/// ownerless credential and nothing more; this is the other half.
///
/// Three things about the shape of the flow are load-bearing:
///
///  * The personal-info row and every changed name sub-credential move in ONE
///    message. The enclave requires a sub-update for each changed name field --
///    a name that moved without its sub-credential would leave the transfer-time
///    name proof attesting to a name that is not in the identity hash.
///  * All of them are found under a single claim code, the one supplied to the
///    identity provider's issue endpoint. Whoever holds its scalars can apply the
///    correction, so they never leave the device.
///  * Every ephemeral wallet must afterwards send MsgClaimUpdatedCredential. Their
///    accept-lists pin the sub-credential commitments and fail closed until
///    refreshed, so skipping it leaves the wallet unable to present those
///    credentials at all.

/// The name sub-credentials that ride along inside a personal-info update.
const List<String> nameSubCredentialTypes = [
  common.FirstNamePersonalInfoCredentialType,
  common.MiddleNamePersonalInfoCredentialType,
  common.LastNamePersonalInfoCredentialType,
];

/// One credential re-blinded against the wallet's own amount commitment.
class ReblindedCredential {
  final Uint8List encCredentialInfoVShare;
  final vshare.VShareBindData credentialInfoVShareBind;
  final PedersenCommit newCredentialPC;
  final PedersenCommit claimPC;
  final PedersenCommit zeroPC;

  ReblindedCredential({
    required this.encCredentialInfoVShare,
    required this.credentialInfoVShareBind,
    required this.newCredentialPC,
    required this.claimPC,
    required this.zeroPC,
  });
}

/// One name sub-credential as the identity provider issued it.
class SubCredentialSource {
  final String credentialType;
  final EncryptableSingleContactInfoDetails details;
  final String pin;

  SubCredentialSource({
    required this.credentialType,
    required this.details,
    required this.pin,
  });
}

class MsgUpdateCredentialArgs {
  final Chain chain;

  /// The wallet that owns the credential. It signs, and the chain accepts the
  /// update from nobody else.
  final WalletResponse txwallet;

  /// The credential wallet, whose key the corrected rows are readable with.
  final WalletResponse cxwallet;

  /// The claim code the identity provider published the correction under: the app
  /// generated it, sent only the curve point to the issue endpoint, and kept these.
  final BigInt claimAmount;
  final BigInt claimBlindingFactor;

  /// personal-info, email-contact-info or phone-contact-info. A contact update
  /// carries no sub-updates -- the enclave rejects one that does.
  final String credentialType;

  /// The name sub-credentials to move with a personal-info update. Defaults to all
  /// three, which is always safe: the enclave requires the changed ones and
  /// permits the rest.
  final List<String> subCredentialTypes;

  final WalletAmountRef? mainWalletQadenaWalletAmount;
  final List<String>? mainWalletServiceProviderID;

  MsgUpdateCredentialArgs({
    required this.chain,
    required this.txwallet,
    required this.cxwallet,
    required this.claimAmount,
    required this.claimBlindingFactor,
    this.credentialType = common.PersonalInfoCredentialType,
    this.subCredentialTypes = nameSubCredentialTypes,
    this.mainWalletQadenaWalletAmount,
    this.mainWalletServiceProviderID,
  });
}

/// Re-blinds one credential: a fresh PIN, a new commitment to the same contents,
/// and the two proofs the enclave checks.
///
/// `zeroPC` proves the new commitment differs from the identity provider's by a
/// commitment to zero -- that it is the SAME data, re-blinded. That proof is what
/// stops one person applying a correction meant for another, so its A and X are
/// deliberately left unblinded while the other two are blinded.
ReblindedCredential reblindCredential(
  String credentialType,
  GeneratedMessage details,
  String oldPin,
  PedersenCommit walletPC,
  List<VSharePubKInfo> innerCCPubK,
) {
  final all = details.writeToBuffer();

  final oldPinInt = BigInt.parse(oldPin, radix: 10);
  final ipCredentialPC = PedersenCommit(hashUint8List(all), oldPinInt);

  final newPin = generateRandomBlindingFactor();

  final credentialInfoVShareBind = vshare.VShareBindData.fromEmpty();
  Uint8List? encCredentialInfoVShare;

  if (credentialType == common.PersonalInfoCredentialType) {
    final p = EncryptablePersonalInfo.create();
    final d = EncryptablePersonalInfoDetails.create();
    d.mergeFromBuffer(all);
    p.details = d;
    p.pIN = newPin.toString();
    encCredentialInfoVShare =
        protoMarshalAndVShareBEncrypt(innerCCPubK, p, credentialInfoVShareBind);
  } else {
    final p = EncryptableSingleContactInfo.create();
    final d = EncryptableSingleContactInfoDetails.create();
    d.mergeFromBuffer(all);
    p.details = d;
    p.pIN = newPin.toString();
    encCredentialInfoVShare =
        protoMarshalAndVShareBEncrypt(innerCCPubK, p, credentialInfoVShareBind);
  }

  final newCredentialPC = PedersenCommit(hashUint8List(all), newPin);
  final claimPC = addPedersenCommitNoMaxCheck(walletPC, newCredentialPC);
  final zeroPC = subPedersenCommitNoMinCheck(ipCredentialPC, newCredentialPC);

  // Warn rather than throw, exactly as the claim flow and the CLI do: the enclave
  // re-runs both checks and is the authority on them.
  if (!validateSubPedersenCommit(ipCredentialPC, newCredentialPC, zeroPC)) {
    print('failed to validate credentialPC - newCredentialPC - zeroPC = 0');
  }
  if (validateAddPedersenCommit(walletPC, newCredentialPC, claimPC)) {
    if (common.Debug) {
      print('validated claimPC');
    }
  }

  return ReblindedCredential(
    encCredentialInfoVShare: encCredentialInfoVShare!,
    credentialInfoVShareBind: credentialInfoVShareBind,
    newCredentialPC: newCredentialPC,
    claimPC: claimPC!,
    zeroPC: zeroPC!,
  );
}

/// Builds the MsgUpdateCredential for one credential and its sub-credentials.
Future<GeneratedMessage> createUpdateCredentialMessage(
  Chain chain,
  PedersenCommit findCredentialPC,
  String credentialID,
  String credPubKey,
  String credentialType,
  GeneratedMessage newDetails,
  String newPin,
  List<SubCredentialSource> subs,
  String srcWalletID,
  List<String> srcServiceProviderID,
  EncryptableWalletAmount ewa,
) async {
  List<VSharePubKInfo> ccPubK = [
    VSharePubKInfo(pubK: credPubKey, nodeID: "", nodeType: ""),
  ];

  ccPubK = await clientAppendRequiredChainCCPubK(chain, ccPubK, "", false);
  ccPubK = await clientAppendOptionalServiceProvidersCCPubK(
      chain, ccPubK, srcServiceProviderID, [common.FinanceServiceProvider]);

  final walletPC = unprotoizeEncryptablePedersenCommit(ewa.pedersenCommit);

  // Each credential gets its own fresh PIN and its own claimPC against the same
  // walletPC, exactly as the four-message claim flow does.
  final reblinded =
      reblindCredential(credentialType, newDetails, newPin, walletPC, ccPubK);

  // Only personal-info has an identity hash; for a contact credential the enclave
  // does not even look at the field.
  Uint8List? encCredentialHashVShare;
  vshare.VShareBindData? credentialHashVShareBind;
  if (newDetails is EncryptablePersonalInfoDetails) {
    credentialHashVShareBind = vshare.VShareBindData.fromEmpty();
    encCredentialHashVShare = protoMarshalAndVShareBEncrypt(
      ccPubK,
      EncryptableString.create()..value = createCredentialHash(newDetails),
      credentialHashVShareBind,
    );
  }

  final parms = EncryptableUpdateCredentialExtraParms.create();
  parms.encCredentialInfoVShare =
      List<int>.from(reblinded.encCredentialInfoVShare);
  parms.credentialInfoVShareBind =
      protoizeVShareBindData(reblinded.credentialInfoVShareBind);
  parms.walletID = srcWalletID;
  parms.findCredentialPC = protoizeBPedersenCommit(findCredentialPC);
  parms.newCredentialPC = protoizeBPedersenCommit(reblinded.newCredentialPC);
  parms.zeroPC = protoizeEncryptablePedersenCommit(reblinded.zeroPC);
  parms.claimPC = protoizeBPedersenCommit(reblinded.claimPC);

  if (encCredentialHashVShare != null && credentialHashVShareBind != null) {
    parms.encCredentialHashVShare = List<int>.from(encCredentialHashVShare);
    parms.credentialHashVShareBind =
        protoizeVShareBindData(credentialHashVShareBind);
  }

  for (final sub in subs) {
    final subReblinded =
        reblindCredential(sub.credentialType, sub.details, sub.pin, walletPC, ccPubK);

    final protoSub = EncryptableUpdateSubCredential.create();
    protoSub.credentialType = sub.credentialType;
    protoSub.encCredentialInfoVShare =
        List<int>.from(subReblinded.encCredentialInfoVShare);
    protoSub.credentialInfoVShareBind =
        protoizeVShareBindData(subReblinded.credentialInfoVShareBind);
    // The SAME claim code as the personal-info row: the enclave resolves each
    // sub-update by (findCredentialPC, credentialType), so a different code here
    // makes the sub-credential invisible and the whole update is rejected.
    protoSub.findCredentialPC = protoizeBPedersenCommit(findCredentialPC);
    protoSub.newCredentialPC = protoizeBPedersenCommit(subReblinded.newCredentialPC);
    protoSub.zeroPC = protoizeEncryptablePedersenCommit(subReblinded.zeroPC);
    protoSub.claimPC = protoizeBPedersenCommit(subReblinded.claimPC);

    parms.subUpdates.add(protoSub);
  }

  final parmsVShareBind = vshare.VShareBindData.fromEmpty();
  final encParmsVShare =
      protoMarshalAndVShareBEncrypt(ccPubK, parms, parmsVShareBind);

  final msg = MsgUpdateCredential.create();
  msg.creator = srcWalletID;
  // The wallet's EXISTING credential ID. An update keeps the credential in place;
  // it is not a new credential, which is the point of the whole mechanism -- the
  // recovery lineage and the wallet binding survive it.
  msg.credentialID = credentialID;
  msg.credentialType = credentialType;
  msg.encUpdateCredentialExtraParmsVShare = List<int>.from(encParmsVShare!);
  msg.updateCredentialExtraParmsVShareBind =
      protoizeVShareBindData(parmsVShareBind);

  return msg;
}

/// Builds the MsgUpdateCredential that applies a published correction.
///
/// Returns a single message; the sub-credentials travel inside it. Broadcast it
/// from [MsgUpdateCredentialArgs.txwallet], then send MsgClaimUpdatedCredential
/// from every ephemeral wallet (see [msgClaimUpdatedCredential]) and, for a
/// contact correction, swap the nameservice bindings.
Future<List<GeneratedMessage>> msgUpdateCredential(
    MsgUpdateCredentialArgs args) async {
  final srcWalletID = args.txwallet.address;
  final credentialPubKey = args.cxwallet.pubkeyB64;

  final findCredentialPC =
      PedersenCommit(args.claimAmount, args.claimBlindingFactor);

  if (common.Debug) {
    print("findCredentialPC: $findCredentialPC");
  }

  List<String> srcServiceProviderID = [];
  var mainWalletQadenaWalletAmount = args.mainWalletQadenaWalletAmount;
  String? walletCredentialID;

  if (args.mainWalletQadenaWalletAmount == null &&
      args.mainWalletServiceProviderID == null) {
    final srcWallet = await args.chain.qadenaQuery.queryClient.wallet(
      QueryGetWalletRequest(walletID: srcWalletID),
      options: CallOptions(timeout: Duration(seconds: 4)),
    );

    mainWalletQadenaWalletAmount =
        WalletAmountRef(srcWallet.wallet.walletAmount[common.QadenaTokenDenom]);
    srcServiceProviderID = srcWallet.wallet.serviceProviderID;
    walletCredentialID = srcWallet.wallet.credentialID;
  } else {
    srcServiceProviderID = args.mainWalletServiceProviderID!;
  }

  if (walletCredentialID == null || walletCredentialID.isEmpty) {
    // The chain requires wallet.credentialID == msg.credentialID and refuses to
    // paper over a disagreement, so read it rather than guess it.
    final srcWallet = await args.chain.qadenaQuery.queryClient.wallet(
      QueryGetWalletRequest(walletID: srcWalletID),
      options: CallOptions(timeout: Duration(seconds: 4)),
    );
    walletCredentialID = srcWallet.wallet.credentialID;
  }

  if (walletCredentialID.isEmpty) {
    throw Exception(
        'wallet $srcWalletID has no credential, so there is nothing to update');
  }

  final ewa = EncryptableWalletAmount.create();
  final unprotoWalletAmountVShareBind = unprotoizeVShareBindData(
      mainWalletQadenaWalletAmount!.value!.walletAmountVShareBind);

  if (!vShareBDecryptAndProtoUnmarshal(
      args.txwallet.privkeyHex,
      args.txwallet.pubkeyB64,
      unprotoWalletAmountVShareBind,
      Uint8List.fromList(
          mainWalletQadenaWalletAmount.value!.encWalletAmountVShare),
      ewa)) {
    throw Exception('Failed to decrypt wallet amount');
  }

  // Read the corrected rows the identity provider published, under the claim code.
  // Their contents are what gets re-blinded: an update may only re-blind, never
  // alter, which is exactly what stops a client substituting its own data.
  if (args.credentialType == common.PersonalInfoCredentialType) {
    final personalInfo = EncryptablePersonalInfo.create();
    final publishedID = StringHolder("");
    await queryFindCredential(args.chain, args.cxwallet, findCredentialPC,
        common.PersonalInfoCredentialType, personalInfo, publishedID);

    if (common.Debug) {
      print("published correction: ${publishedID.value}");
      print("corrected details: ${personalInfo.details}");
    }

    final subs = <SubCredentialSource>[];
    for (final credentialType in args.subCredentialTypes) {
      final sci = EncryptableSingleContactInfo.create();
      final subID = StringHolder("");
      await queryFindCredential(
          args.chain, args.cxwallet, findCredentialPC, credentialType, sci, subID);

      // The enclave compares each sub-credential against the corrected details
      // with plain string equality. Catching a mismatch here says which row is
      // wrong; the chain would only say ErrCredentialUpdateRejected.
      final expected = _nameForSubCredentialType(personalInfo.details, credentialType);
      if (sci.details.contact != expected) {
        throw Exception('the published $credentialType is "${sci.details.contact}" '
            'but the corrected personal info says "$expected"; '
            'the identity provider published an inconsistent bundle');
      }

      subs.add(SubCredentialSource(
        credentialType: credentialType,
        details: sci.details,
        pin: sci.pIN,
      ));
    }

    final msg = await createUpdateCredentialMessage(
      args.chain,
      findCredentialPC,
      walletCredentialID,
      credentialPubKey,
      common.PersonalInfoCredentialType,
      personalInfo.details,
      personalInfo.pIN,
      subs,
      srcWalletID,
      srcServiceProviderID,
      ewa,
    );

    return [msg];
  }

  // A contact correction: one row, no sub-updates. The enclave rejects a contact
  // update that carries any.
  final sci = EncryptableSingleContactInfo.create();
  final publishedID = StringHolder("");
  await queryFindCredential(args.chain, args.cxwallet, findCredentialPC,
      args.credentialType, sci, publishedID);

  if (sci.details.contact.isEmpty) {
    throw Exception('the published ${args.credentialType} is empty; '
        'a contact credential may not be emptied, it must be removed instead');
  }

  final msg = await createUpdateCredentialMessage(
    args.chain,
    findCredentialPC,
    walletCredentialID,
    credentialPubKey,
    args.credentialType,
    sci.details,
    sci.pIN,
    const <SubCredentialSource>[],
    srcWalletID,
    srcServiceProviderID,
    ewa,
  );

  return [msg];
}

String _nameForSubCredentialType(
    EncryptablePersonalInfoDetails details, String credentialType) {
  switch (credentialType) {
    case common.FirstNamePersonalInfoCredentialType:
      return details.firstName;
    case common.MiddleNamePersonalInfoCredentialType:
      return details.middleName;
    case common.LastNamePersonalInfoCredentialType:
      return details.lastName;
  }
  throw Exception('$credentialType is not a name sub-credential');
}

class MsgClaimUpdatedCredentialArgs {
  final Chain chain;

  /// The ephemeral wallet whose accept-list needs refreshing. It signs.
  final WalletResponse ephwallet;

  /// The credential wallet of the wallet the ephemeral one is linked to, whose key
  /// the credentials are readable with.
  final WalletResponse linkToCxWallet;

  /// The wallet holding the updated credential.
  final String linkToWalletID;

  /// Which credential types this ephemeral wallet's accept-list covers.
  final List<String> acceptedTypes;

  MsgClaimUpdatedCredentialArgs({
    required this.chain,
    required this.ephwallet,
    required this.linkToCxWallet,
    required this.linkToWalletID,
    this.acceptedTypes = nameSubCredentialTypes,
  });
}

/// Refreshes one ephemeral wallet's accept-list after an update.
///
/// Not optional, and easy to leave out. An ephemeral wallet's accept-list pins the
/// sub-credential commitments it will vouch for, and those commitments changed. It
/// fails closed: until this is sent, the wallet cannot present the credentials at
/// all. One message per ephemeral wallet, each signed by that wallet.
Future<GeneratedMessage> msgClaimUpdatedCredential(
    MsgClaimUpdatedCredentialArgs args) async {
  final ephWalletID = args.ephwallet.address;

  final ephWallet = await args.chain.qadenaQuery.queryClient.wallet(
    QueryGetWalletRequest(walletID: ephWalletID),
    options: CallOptions(timeout: Duration(seconds: 4)),
  );

  final linkToWallet = await args.chain.qadenaQuery.queryClient.wallet(
    QueryGetWalletRequest(walletID: args.linkToWalletID),
    options: CallOptions(timeout: Duration(seconds: 4)),
  );

  if (linkToWallet.wallet.credentialID.isEmpty) {
    throw Exception('wallet ${args.linkToWalletID} has no credential');
  }

  // Rebuilt from the credentials as they are right now. The enclave checks every
  // commitment against its own copy, so there is no point sending anything else.
  final validatedCredentials = EncryptableValidatedCredentials.create();

  for (final credentialType in args.acceptedTypes) {
    final credential =
        await args.chain.qadenaQuery.queryClient.credential(
      QueryGetCredentialRequest(
        credentialID: linkToWallet.wallet.credentialID,
        credentialType: credentialType,
      ),
    );

    final unprotoBind =
        unprotoizeVShareBindData(credential.credential.credentialInfoVShareBind);

    final p = EncryptableSingleContactInfo.create();
    if (!vShareBDecryptAndProtoUnmarshal(
        args.linkToCxWallet.privkeyHex,
        args.linkToCxWallet.pubkeyB64,
        unprotoBind,
        Uint8List.fromList(credential.credential.encCredentialInfoVShare),
        p)) {
      throw Exception("couldn't decrypt $credentialType of "
          "${linkToWallet.wallet.credentialID}");
    }

    if (common.Debug) {
      print('$credentialType generation ${credential.credential.updateGeneration}');
    }

    final entry = EncryptableValidatedCredential.create();
    entry.credentialType = credentialType;
    entry.pIN = p.pIN;
    entry.credentialPC = credential.credential.credentialPedersenCommit;

    validatedCredentials.credentials.add(entry);
  }

  // The same audience the accept-list published by CreateWallet used, or the
  // enclave could not decrypt the replacement.
  List<VSharePubKInfo> validatedCredentialsCCPubK = [
    VSharePubKInfo(pubK: args.ephwallet.pubkeyB64, nodeID: "", nodeType: ""),
  ];
  validatedCredentialsCCPubK = await clientAppendRequiredChainCCPubK(
      args.chain, validatedCredentialsCCPubK, "", false);
  validatedCredentialsCCPubK = await clientAppendOptionalServiceProvidersCCPubK(
      args.chain,
      validatedCredentialsCCPubK,
      ephWallet.wallet.serviceProviderID,
      [common.FinanceServiceProvider]);

  final bind = vshare.VShareBindData.fromEmpty();
  final enc = protoMarshalAndVShareBEncrypt(
      validatedCredentialsCCPubK, validatedCredentials, bind);

  final msg = MsgClaimUpdatedCredential.create();
  msg.creator = ephWalletID;
  msg.encAcceptValidatedCredentialsVShare = List<int>.from(enc!);
  msg.acceptValidatedCredentialsVShareBind = protoizeVShareBindData(bind);

  return msg;
}

/// Retires a nameservice binding for a contact value that is no longer current.
///
/// After a contact correction the OLD value keeps resolving to the wallet, because
/// a binding is keyed by the cleartext contact. Neither the enclave nor the
/// identity provider can retire it: only the client knows which ephemeral wallets
/// bound the value, and only they can sign. Until this is broadcast, social
/// recovery still resolves the old address and not the new one.
GeneratedMessage msgUnbindCredential({
  required String creatorWalletID,
  required String credentialType,
  required String credentialInfo,
}) {
  final msg = nstypes.MsgUnbindCredential.create();
  msg.creator = creatorWalletID;
  msg.credentialType = credentialType;
  msg.credentialInfo = credentialInfo;
  return msg;
}

/// Which identity fields differ between two sets of details.
///
/// For showing a diff before the user commits to spending a transaction. It is
/// deliberately NOT a policy decision: whether the chain will accept the change
/// depends on the edit distance, the alias budget, the cooldown and the
/// configurable field cap, all of which live in chain params and are answered by
/// the identity provider's precheck endpoint. Reimplementing that here would put a
/// second copy of the policy engine on the device, free to disagree with the
/// chain and with the server, and it would be the copy the user sees.
List<String> changedIdentityFields(
  EncryptablePersonalInfoDetails oldDetails,
  EncryptablePersonalInfoDetails newDetails,
) {
  final changed = <String>[];

  void compare(String field, String a, String b) {
    if (a != b) changed.add(field);
  }

  compare('FirstName', oldDetails.firstName, newDetails.firstName);
  compare('MiddleName', oldDetails.middleName, newDetails.middleName);
  compare('LastName', oldDetails.lastName, newDetails.lastName);
  compare('Birthdate', oldDetails.birthdate, newDetails.birthdate);
  compare('Gender', oldDetails.gender, newDetails.gender);
  compare('Citizenship', oldDetails.citizenship, newDetails.citizenship);
  compare('Residency', oldDetails.residency, newDetails.residency);

  return changed;
}

/// Whether a change moves the identity hash, and therefore consumes one of the
/// wallet's few lifetime identity aliases and starts the cooldown.
///
/// Citizenship and residency are not in the hash, so correcting them is free.
bool identityHashChanges(
  EncryptablePersonalInfoDetails oldDetails,
  EncryptablePersonalInfoDetails newDetails,
) {
  return createCredentialHash(oldDetails) != createCredentialHash(newDetails);
}
