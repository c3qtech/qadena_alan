import 'dart:typed_data';
import 'package:convert/convert.dart';
import 'package:qadena_alan/qadena.dart';
import 'package:pointycastle/ecc/api.dart';
import 'package:test/test.dart';
import 'package:collection/collection.dart';

bool generateAndVerifyRangeProof(VectorBase vectorBase, BigInt number) {
  final randomness = randomNumber256();

  final v = PedersenCommit(number, randomness);
  print('V $v');

  final witness = PedersenCommit(number, randomness);

  final proof = newRangeProofV2(vectorBase, v, witness);
  print('Generated proof');
  print('Proof.A ${proof.A}');
  print('Proof.S ${proof.S}');
  for (int i = 0; i < proof.TCommits.length; i++) {
    print('Proof.TCommits $i ${proof.TCommits[i]}');
  }
  print('Proof.TauX ${proof.TauX}');
  print('Proof.Mu ${proof.Mu}');
  print('Proof.T ${proof.T}');
  print('Proof.ProductProof.A ${proof.ProductProof!.A}');
  print('Proof.ProductProof.B ${proof.ProductProof!.B}');
  for (int i = 0; i < proof.ProductProof!.L.length; i++) {
    print('Proof.ProductProof.L $i ${proof.ProductProof!.L[i]}');
  }
  for (int i = 0; i < proof.ProductProof!.R.length; i++) {
    print('Proof.ProductProof.R $i ${proof.ProductProof!.R[i]}');
  }

  final result = verifyRangeProofV2(vectorBase, v, proof);
  print('Verification Result $result');
  return result;
}

void verifyRangeProof(
    VectorBase vectorBase, String numberStr, bool expectedResult) {
  final number = BigInt.parse(numberStr);
  final result = generateAndVerifyRangeProof(vectorBase, number);
  expect(result, expectedResult,
      reason: 'result = $result; want $expectedResult');
}

void main() {
  final params = newECPrimeGroupKeyV2(vecLength);
  final vectorBase = params.getVectorBase();

  ecPedersen = params;

  test('TestPaddedHash', () {
    final h = paddedHash('G', 0);
    print('h: $h');

    final expectedH = BigInt.parse(
        '115377814942352259530286949104270929993039261943703817083262565652424755313180');
    expect(h, equals(expectedH), reason: 'h = $h; want $expectedH');
  });

  test('TestMapInto', () {
    final h = paddedHash('G', 0);
    final p = mapInto(h);
    print('p: $p');

    final testP = newECPoint(
        BigInt.parse(
            '115377814942352259530286949104270929993039261943703817083262565652424755313180'),
        BigInt.parse(
            '84196338600477622106060066094085754468039456168128225340647481061089751590089'));
    expect(p, equals(testP), reason: 'p = $p; want $testP');
  });

  test('TestHashString', () {
    final h = hashString('G');
    print('h: $h');

    final expectedH = BigInt.parse(
        '3388216464548280147592959668976866603264284679474019247268538060944586934226');
    expect(h, equals(expectedH), reason: 'h = $h; want $expectedH');
  });

  test('TestNewRangeProofV2', () {
    final number = BigInt.from(5);

    final result = generateAndVerifyRangeProof(vectorBase, number);
    final expectedResult = true;

    expect(result, expectedResult,
        reason: 'result = $result; want $expectedResult');
  });

  test('TestNewRangeProofV2One', () {
    final number = BigInt.one;

    final result = generateAndVerifyRangeProof(vectorBase, number);
    final expectedResult = true;

    expect(result, expectedResult,
        reason: 'result = $result; want $expectedResult');
  });

  test('TestNewRangeProofV2Zero', () {
    final number = BigInt.zero;

    final result = generateAndVerifyRangeProof(vectorBase, number);
    final expectedResult = true;

    expect(result, expectedResult,
        reason: 'result = $result; want $expectedResult');
  });

  test('TestNewRangeProofV2Negative', () {
    final number = BigInt.from(-1);

    final result = generateAndVerifyRangeProof(vectorBase, number);
    final expectedResult = false;

    expect(result, expectedResult,
        reason: 'result = $result; want $expectedResult');
  });

  test('TestNewRangeProofV2TooLarge', () {
    final number = BigInt.two.pow(vecLength);

    final result = generateAndVerifyRangeProof(vectorBase, number);
    final expectedResult = false;

    expect(result, expectedResult,
        reason: 'result = $result; want $expectedResult');
  });

  test('TestNewRangeProofV2LargeButInRange', () {
    final number = BigInt.two.pow(vecLength) - BigInt.one;

    final result = generateAndVerifyRangeProof(vectorBase, number);
    final expectedResult = true;

    expect(result, expectedResult,
        reason: 'result = $result; want $expectedResult');
  });

  test('TestNewRangeProofV2SmallRange', () {
    final params8 = newECPrimeGroupKeyV2(8);
    final vectorBase8 = params8.getVectorBase();

    verifyRangeProof(vectorBase8, '255', true);
    verifyRangeProof(vectorBase8, '0', true);
    verifyRangeProof(vectorBase8, '1', true);
    verifyRangeProof(vectorBase8, '254', true);
    verifyRangeProof(vectorBase8, '-1', false);
    verifyRangeProof(vectorBase8, '-2', false);
    verifyRangeProof(vectorBase8, '256', false);
    verifyRangeProof(vectorBase8, '257', false);
  });
}
