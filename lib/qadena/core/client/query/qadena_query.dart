import 'package:decimal/decimal.dart';
import 'package:qadena_alan/alan.dart';
import 'package:qadena_alan/proto/cosmos/bank/v1beta1/bank.pb.dart';
import 'package:qadena_alan/proto/qadena/qadena/export.dart';

class Incentive {
  final String denom;
  final Decimal amount;

  Incentive({
    required this.denom,
    required this.amount,
  });

  factory Incentive.fromMap(Map<String, dynamic> map) {
    return Incentive(
      denom: map['denom'],
      amount: Decimal.parse(map['amount']),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      denom: denom,
      'amount': amount.toString(),
    };
  }
}

Decimal fromAtomics(String amount) {
  return Decimal.parse(amount);
}

class QadenaQuery {
  final QueryClient queryClient;

  QadenaQuery(this.queryClient);

  Future<Map<String, Incentive>> incentives(List<Metadata> denoms) async {
    final res = await queryClient.incentives(QueryIncentivesRequest());
    final Map<String, Incentive> incentives = {};

    if (res.createWalletIncentive.isValid) {
      final denom = denoms.firstWhere(
          (e) => e.base == (res.createWalletIncentive.denom ?? 'aqdn'));
      incentives['createWallet'] = Incentive(
        denom: denom.base,
        amount: fromAtomics(res.createWalletIncentive.amount ?? '0'),
      );
    }
    if (res.createWalletTransparentIncentive.isValid) {
      final denom = denoms.firstWhere((e) =>
          e.base == (res.createWalletTransparentIncentive.denom ?? 'aqdn'));
      incentives['createWalletTransparent'] = Incentive(
        denom: denom.base,
        amount: fromAtomics(res.createWalletTransparentIncentive.amount ?? '0'),
      );
    }
    if (res.createEphemeralWalletIncentive.isValid) {
      final denom = denoms.firstWhere((e) =>
          e.base == (res.createEphemeralWalletIncentive.denom ?? 'aqdn'));
      incentives['createEphemeralWallet'] = Incentive(
        denom: denom.base,
        amount: fromAtomics(res.createEphemeralWalletIncentive.amount ?? '0'),
      );
    }
    if (res.createEphemeralWalletTransparentIncentive.isValid) {
      final denom = denoms.firstWhere((e) =>
          e.base ==
          (res.createEphemeralWalletTransparentIncentive.denom ?? 'aqdn'));
      incentives['createEphemeralWalletTransparent'] = Incentive(
        denom: denom.base,
        amount: fromAtomics(
            res.createEphemeralWalletTransparentIncentive.amount ?? '0'),
      );
    }

    return incentives;
  }
}
