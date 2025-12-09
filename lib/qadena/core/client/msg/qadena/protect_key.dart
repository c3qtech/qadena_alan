import 'dart:convert';

import 'package:protobuf/protobuf.dart';
import 'package:qadena_alan/proto/qadena/qadena/export.dart';
import 'package:qadena_alan/qadena.dart';
import 'package:qadena_alan/qadena/core/client/query/export.dart';
import 'package:qadena_alan/qadena/types/qadena_hd_wallet.dart';
import 'package:qadena_alan/qadena/common.dart' as common;
import 'package:qadena_alan/qadena/types/shamir.dart';
import 'package:grpc/grpc.dart';

/// Arguments for msgProtectKey function
class MsgProtectKeyArgs {
  final Chain chain;
  final WalletResponse ephtxwallet;
  final String mnemonic;
  final int threshold;
  final List<String> recoveryPartners;

  MsgProtectKeyArgs({
    required this.chain,
    required this.ephtxwallet,
    required this.mnemonic,
    required this.threshold,
    required this.recoveryPartners,
  });
}

/// Creates a MsgProtectPrivateKey message.
///
/// This function:
/// 1. Validates threshold and recovery partners count
/// 2. Resolves recovery partner IDs to wallet IDs and public keys
/// 3. Creates Shamir secret shares (or direct encryption for single partner)
/// 4. Returns a MsgProtectPrivateKey message
Future<MsgProtectPrivateKey> msgProtectKey(MsgProtectKeyArgs args) async {
  final recoveryPartnersCount = args.recoveryPartners.length;

  if (recoveryPartnersCount < args.threshold) {
    throw Exception("NOT_ENOUGH_RECOVERY_PARTNERS");
  }

  if (recoveryPartnersCount > 1 && args.threshold < 2) {
    throw Exception("THRESHOLD_NEEDS_TO_BE_AT_LEAST_2");
  }

  final walletPubKs = <String>[];
  final walletIDs = <String>[];

  // Find all the pubk of the recovery partners
  for (int i = 0; i < args.recoveryPartners.length; i++) {
    final id = args.recoveryPartners[i];
    String? walletPubK;
    String? walletID;
    bool isWalletAddress = false;
    bool isPioneerID = false;
    bool isServiceProviderID = false;
    bool isEmail = false;
    bool isPhone = false;

    // Check if it's an wallet address
    try {
      // Try to get wallet by wallet address
      final walletResponse = await args.chain.qadenaQuery.queryClient.wallet(
        QueryGetWalletRequest(walletID: id),
        options: CallOptions(timeout: Duration(seconds: 4)),
      );
      walletID = walletResponse.wallet.walletID;

      if (common.Debug) {
        print("GetAddress success for $id");
      }
      isWalletAddress = true;
    } catch (e) {
      if (common.Debug) {
        print("GetAddress failed for $id");
      }
    }

    if (!isWalletAddress) {
      // Check if it's a pioneer ID
      try {
        final result = await common.clientGetIntervalPublicKey(args.chain, id, common.PioneerNodeType);
        if (common.Debug) {
          print("it's a pioneer ID");
        }
        walletID = result.item1;

        isPioneerID = true;
      } catch (e) {
        if (common.Debug) {
          print("it's not a pioneer ID");
        }
      }
    }

    if (!isPioneerID) {
      // Not a pioneer ID, check if it's a service provider ID
      try {
        final result = await common.clientGetIntervalPublicKey(args.chain, id, common.ServiceProviderNodeType);
        if (common.Debug) {
          print("it's a service provider ID");
        }
        walletID = result.item1;

        isServiceProviderID = true;
      } catch (e) {
        if (common.Debug) {
          print("it's neither a pioneer ID nor service provider ID");
        }
      }
    }

    if (!isServiceProviderID) {
      // Check via naming service - phone
      try {
        walletID = await common.clientFindSubWallet(args.chain, id, common.PhoneContactCredentialType);
        if (common.Debug) {
          print("FindSubWallet 'phone' success");
        }
        isPhone = true;
      } catch (e) {
        if (common.Debug) {
          print("FindSubWallet 'phone' failed");
        }
      }
    }

    if (!isPhone) {
      // Check via naming service - email
      try {
        walletID = await common.clientFindSubWallet(args.chain, id, common.EmailContactCredentialType);
        if (common.Debug) {
          print("FindSubWallet 'email' success");
        }
        isEmail = true;
      } catch (e) {
        if (common.Debug) {
          print("FindSubWallet 'email' failed");
        }
      }
    }

    // Get public key for the wallet
    try {
      walletPubK = await common.clientGetPublicKey(args.chain, walletID!, common.EnclavePubKType);
      if (common.Debug) {
        print("GetPublicKey 'enclave' success");
      }
    } catch (e) {
      if (common.Debug) {
        print("GetPublicKey 'enclave' failed");
      }

      try {
        walletPubK = await common.clientGetPublicKey(args.chain, walletID!, common.CredentialPubKType);
        if (common.Debug) {
          print("GetPublicKey 'credential' success");
        }
      } catch (e) {
        if (common.Debug) {
          print("GetPublicKey 'credential' failed");
        }
        rethrow;
      }
    }

    if (common.Debug) {
      print("isPioneerID: $isPioneerID");
      print("isServiceProviderID: $isServiceProviderID");
      print("isEmail: $isEmail");
      print("isPhone: $isPhone");
      print("walletID: $walletID, walletPubK: $walletPubK");
    }

    if (isPioneerID || isServiceProviderID) {
      walletIDs.add(id);
    } else {
      walletIDs.add(walletID!);
    }

    walletPubKs.add(walletPubK!);
  }

  // Check for duplicates
  if (_hasDuplicates(walletIDs)) {
    throw Exception("DUPLICATES_IN_WALLET_IDS_NOT_ALLOWED");
  }

  final recoverShares = <RecoverShare>[];

  if (recoveryPartnersCount == 1) {
    // Only one recovery partner - no need for Shamir
    final encShare = marshalAndBEncrypt(walletPubKs[0], args.mnemonic);
    recoverShares.add(RecoverShare(
      walletID: walletIDs[0],
      encWalletPubKShare: encShare,
    ));
  } else {
    // Create Shamir shares using sss256
    final shares = split(
      utf8.encode(args.mnemonic),
      recoveryPartnersCount,
      args.threshold,
    );

    if (common.Debug) {
      print("threshold: ${args.threshold}");
      print("mnemonic: ${args.mnemonic}");
    }

    for (int i = 0; i < shares.length; i++) {
      final shareString = shares[i];
      if (common.Debug) {
        print("shareString: $shareString");
      }
      final encShare = marshalAndBEncrypt(walletPubKs[i], base64Encode(shareString));
      recoverShares.add(RecoverShare(
        walletID: walletIDs[i],
        encWalletPubKShare: encShare,
      ));
    }
  }

  final msg = MsgProtectPrivateKey(
    creator: args.ephtxwallet.address,
    threshold: args.threshold,
    recoverShare: recoverShares,
  );

  return msg;
}

/// Helper function to check for duplicates in a list
bool _hasDuplicates(List<String> list) {
  final set = <String>{};
  for (final item in list) {
    if (set.contains(item)) {
      return true;
    }
    set.add(item);
  }
  return false;
}
