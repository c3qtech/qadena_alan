import 'package:qadena_alan/qadena.dart';
import 'package:test/test.dart';

void main() {
  ecPedersen = newECPrimeGroupKeyV2(vecLength);

  test('GeneratePedersenCommitHexCompressed', () {
    // Enable debugging if necessary
    // Debug = true;

    // Create a new ECPoint
    final value = BigInt.from(1234);
    final blindingFactor = BigInt.from(5678);
    final pc = PedersenCommit(value, blindingFactor);

    // Print G and H
    print('G: ${ecPedersen!.G()}');
    print('H: ${ecPedersen!.H()}');

    // Create expected ECPoint
    final x = BigInt.parse(
        '18303386956939991449903206602893465155767250067039941066256298966043004296781');
    final y = BigInt.parse(
        '17503329493696578784755977957747791143093586631190537577280653861517699092690');
    final ecPoint = newECPoint(x, y);

    // Check if the generated point is equal to the expected point
    expect(ecPoint == pc.C!, isTrue, reason: 'ecPoint = $ecPoint; want $pc');

    final encodedcommitment = pc.C!.getEncoded(true);

    print('Value encoded: $encodedcommitment');
    // print hex representation of the encoded commitment

// Convert the encoded commitment to a hex string
    final hex = encodedcommitment
        .map((byte) => byte.toRadixString(16).padLeft(2, '0'))
        .join();

    print('Value in hex: $hex');

    final expected = "0228775992ca7adfc91a8e858f1084af82d7888aea5dfd313391f9d3f5e76cde4d";

    expect(hex,
        expected,
        reason:
            'hexCompressed = $hex; want $expected');
  });

  test('GeneratePedersenCommit', () {
    for (var i = 0; i < 10; i++) {
      final r = generateRandomBlindingFactor();
      print("r: $r");
    }
    final pc = PedersenCommit.fromValue(BigInt.parse('1234'));
    print("pedersencommit: $pc");
  });

  test('PaddedHash', () {
    // Call PaddedHash with parameters "G" and 0
    var h = paddedHash("G", 0);

    // check if h is 115377814942352259530286949104270929993039261943703817083262565652424755313180
    expect(
      h,
      BigInt.parse(
          '115377814942352259530286949104270929993039261943703817083262565652424755313180'),
      reason: 'h is incorrect',
    );
  });

  test('TestMapInto', () {
    // Call paddedHash with parameters "G" and 0
    var h = paddedHash("G", 0);

    // Use mapInto to generate a point on the elliptic curve
    var p = mapInto(h);

    print('p: $p');

    // Create the expected point
    var testP = newECPoint(
        BigInt.parse(
            '115377814942352259530286949104270929993039261943703817083262565652424755313180'),
        BigInt.parse(
            '84196338600477622106060066094085754468039456168128225340647481061089751590089'));

    // Check if the generated point is equal to the expected point
    expect(p == testP, isTrue,
        reason:
            'p = $p; want (115377814942352259530286949104270929993039261943703817083262565652424755313180,84196338600477622106060066094085754468039456168128225340647481061089751590089)');
  });

  test('NewECPrimeGroupKey', () {
    // Create expected G and H points
    final gx = BigInt.parse(
        '3388216464548280147592959668976866603264284679474019247268538060944586934228');
    final gy = BigInt.parse(
        '75552690864069724229068221785829518949503260698205079432307762846969920217317');
    final g = newECPoint(gx, gy);

    final hx = BigInt.parse(
        '22665422587344413573085386901529593189028859532048437645553684283026419226678');
    final hy = BigInt.parse(
        '6107529163615064436172174578146738342996045377304802890658733470867606006634');
    final h = newECPoint(hx, hy);

    CryptoParams params = newECPrimeGroupKeyV2(vecLength);

    // Check if the generated G and H points are equal to the expected points
    expect(g == params!.G(), isTrue, reason: 'g = $g; want ${params!.G()}');
    expect(h == params!.H(), isTrue, reason: 'h = $h; want ${params!.H()}');
  });

  test('SubPedersenCommit', () {
    final x1 = BigInt.from(12345);
    final r1 = BigInt.from(67890);
    final x2 = BigInt.from(54321);
    final r2 = BigInt.from(9876);

    // Compute Pedersen commitments
    final input = PedersenCommit(x2, r1);
    final transfer = PedersenCommit(x1, r2);

    final sub = subPedersenCommit(input, transfer);

    final expectedDifference = x2 - x1;

    expect(sub!.A == expectedDifference, isTrue,
        reason:
            'SubPedersenCommit($x1, $x2) = ${sub.A}; want $expectedDifference');

    expect(validateSubPedersenCommit(input, transfer, sub), isTrue,
        reason: 'SubPedersenCommit($input, $transfer, $sub) failed validation');

    expect(validateSubPedersenCommit(input, transfer, transfer), isFalse,
        reason:
            'SubPedersenCommit($input, $transfer, $transfer) should have failed validation');
  });

  test('AddPedersenCommit', () {
    final x1 = BigInt.from(12345);
    final r1 = BigInt.from(67890);
    final x2 = BigInt.from(54321);
    final r2 = BigInt.from(9876);

    // Compute Pedersen commitments
    final input = PedersenCommit(x1, r1);
    final transfer = PedersenCommit(x2, r2);

    final add = addPedersenCommit(input, transfer);

    final expectedSum = x2 + x1;

    expect(add!.A == expectedSum, isTrue,
        reason: 'AddPedersenCommit($x1, $x2) = ${add.A}; want $expectedSum');

    expect(validateAddPedersenCommit(input, transfer, add), isTrue,
        reason: 'AddPedersenCommit($input, $transfer, $add) failed validation');

    expect(validateAddPedersenCommit(input, transfer, transfer), isFalse,
        reason:
            'AddPedersenCommit($input, $transfer, $transfer) should have failed validation');
  });

  test('ValidTests', () {
    final x1 = BigInt.from(12345);
    final r1 = BigInt.from(67890);
    final x2 = BigInt.from(54321);
    final r2 = BigInt.from(9876);

    // Compute Pedersen commitments
    final input = PedersenCommit(x1, r1);
    final transfer = PedersenCommit(x2, r2);

    expect(comparePedersenCommit(input, transfer), isFalse,
        reason: 'comparePedersenCommit($input, $transfer) should have failed');

    expect(comparePedersenCommit(input, input), isTrue,
        reason: 'comparePedersenCommit($input, $input) failed');

    expect(validatePedersenCommit(input), isTrue,
        reason: 'validatePedersenCommit($input) failed');

    blindPedersenCommit(input);

    expect(input.A == BigInt.zero && input.X == BigInt.zero, isTrue,
        reason: 'blindPedersenCommit($input) failed');

    transfer.C = null;
    expect(validPedersenCommit(transfer), isFalse,
        reason: 'validPedersenCommit($transfer) should have failed');
  });
}
