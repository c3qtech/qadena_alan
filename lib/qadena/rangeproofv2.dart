import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';
import 'package:collection/collection.dart';
import 'package:pointycastle/digests/keccak.dart';
import 'package:convert/convert.dart';
import 'package:pointycastle/ecc/api.dart';
import 'package:pointycastle/ecc/curves/secp256k1.dart';
import 'package:pointycastle/random/fortuna_random.dart';
import 'package:pointycastle/src/utils.dart';
import 'package:qadena_alan/qadena/common.dart' as common;
import 'ecpedersen.dart'; // For bigIntToByteArray
import 'encrypt.dart' as encrypt;

class InnerProductProofV2 {
  final List<ECPoint> L;
  final List<ECPoint> R;
  final BigInt A;
  final BigInt B;

  InnerProductProofV2(this.L, this.R, this.A, this.B);

  @override
  String toString() {
    return "A: $A\nB: $B\nL: $L\nR: $R";
  }
}

class InnerProductWitness {
  final List<BigInt> A;
  final List<BigInt> B;

  InnerProductWitness(this.A, this.B);

  List<BigInt> getA() => A;
  List<BigInt> getB() => B;
}

class RangeProofV2 {
  final ECPoint A;
  final ECPoint S;
  final List<PedersenCommit> TCommits;
  final BigInt TauX;
  final BigInt Mu;
  final BigInt T;
  final InnerProductProofV2? ProductProof;

  RangeProofV2({
    required this.A,
    required this.S,
    required this.TCommits,
    required this.TauX,
    required this.Mu,
    required this.T,
    required this.ProductProof,
  });

  @override
  String toString() {
    return "A: $A\nS: $S";
  }
}

BigInt toInt(Uint8List hash, BigInt q) {
  final bigIntHash = BigInt.parse(hex.encode(hash), radix: 16);
  return bigIntHash % q;
}

BigInt hashWithSalt(String id, BigInt salt) {
  final hasher = KeccakDigest(256);
  hasher.update(Uint8List.fromList(utf8.encode(id)), 0, id.length);
  hasher.update(bigIntToByteArray(salt), 0, bigIntToByteArray(salt).length);
  final hash = Uint8List(hasher.digestSize);
  hasher.doFinal(hash, 0);
  return BigInt.parse(hex.encode(hash), radix: 16);
}

BigInt randomNumber(int bits) {
  return encrypt.rnd.nextBigInteger(bits);
}

BigInt randomNumber256() => randomNumber(256);

void hashUInt(KeccakDigest hasher, BigInt integer) {
  final intArr = bigIntToByteArray(integer);
  if (intArr.length >= 32) {
    hasher.update(intArr, intArr.length - 32, 32);
  } else {
    final shaArr = Uint8List(32);
    shaArr.setRange(32 - intArr.length, 32, intArr);
    hasher.update(shaArr, 0, shaArr.length);
  }
}

List<BigInt> randVectorV2(int l, BigInt q) {
  return List<BigInt>.generate(l, (_) => randomNumber256() % q);
}

ECPoint vectorCommitExp(List<ECPoint?> points, List<BigInt> exponents) {
  if (points.length != exponents.length) {
    throw ArgumentError('Arrays not of the same length');
  }

  ECPoint? ret;
  for (var i = 0; i < points.length; i++) {
    if (exponents[i] != BigInt.zero) {
      ret = (ret == null)
          ? safeMultECPointBigInt(points[i]!, exponents[i])
          : ret + safeMultECPointBigInt(points[i]!, exponents[i]);
    }
  }

  return ret!;
}

ECPoint? vectorBaseCommitGExpHExpBlinding(
    VectorBase vb, List<BigInt> gExp, List<BigInt> hExp, BigInt blinding) {
  final gs = vb.Gs;
  final hs = vb.Hs;

  if (gs.length != hs.length ||
      gs.length != gExp.length ||
      gExp.length != hExp.length) {
    throw ArgumentError('Arrays not of the same length');
  }

  ECPoint? gsgExp;
  ECPoint? hshExp;

  for (var i = 0; i < gs.length; i++) {
    if (gExp[i] != BigInt.zero) {
      gsgExp = (gsgExp == null)
          ? safeMultECPointBigInt(gs[i]!, gExp[i])
          : gsgExp + safeMultECPointBigInt(gs[i]!, gExp[i]);
    }
    if (hExp[i] != BigInt.zero) {
      hshExp = (hshExp == null)
          ? safeMultECPointBigInt(hs[i]!, hExp[i])
          : hshExp + safeMultECPointBigInt(hs[i]!, hExp[i]);
    }
  }

  final hb = safeMultECPointBigInt(vb.H, blinding);

  ECPoint? ret;
  if (gsgExp == null && hshExp == null) {
    ret = hb;
  } else if (gsgExp == null) {
    ret = hshExp! + hb;
  } else if (hshExp == null) {
    ret = gsgExp + hb;
  } else {
    ret = (gsgExp + hshExp)! + hb;
  }
  return ret;
}

BigInt computeChallengeFromECPoints(BigInt q, List<ECPoint> points) {
  final hasher = KeccakDigest(256);

  for (final point in points) {
    hasher.update(point.getEncoded(true), 0, point.getEncoded(true).length);
  }
  final hash = Uint8List(hasher.digestSize);
  hasher.doFinal(hash, 0);
  return toInt(hash, q);
}

BigInt computeChallengeFromSaltECPoints(
    BigInt q, BigInt salt, List<ECPoint> points) {
  final hasher = KeccakDigest(256);
  hashUInt(hasher, salt);
  for (final point in points) {
    hasher.update(point.getEncoded(true), 0, point.getEncoded(true).length);
  }
  final hash = Uint8List(hasher.digestSize);
  hasher.doFinal(hash, 0);
  return toInt(hash, q);
}

BigInt computeChallengeFromPedersenCommit(
    BigInt q, BigInt salt, List<PedersenCommit> pcs) {
  final hasher = KeccakDigest(256);
  hashUInt(hasher, salt);
  for (final pc in pcs) {
    if (pc.X != BigInt.zero) {
      hasher.update(pc.C!.getEncoded(true), 0, pc.C!.getEncoded(true).length);
    }
  }
  final hash = Uint8List(hasher.digestSize);
  hasher.doFinal(hash, 0);
  return toInt(hash, q);
}

BigInt computeChallengeFromInts(BigInt q, List<BigInt> ints) {
  final hasher = KeccakDigest(256);
  for (final integer in ints) {
    hashUInt(hasher, integer);
  }
  final hash = Uint8List(hasher.digestSize);
  hasher.doFinal(hash, 0);
  return toInt(hash, q);
}

List<BigInt> powerVectorQ(int l, BigInt base, BigInt q) {
  return List<BigInt>.generate(l, (i) => base.modPow(BigInt.from(i), q));
}

List<BigInt> vectorAddScalarQ(List<BigInt> v, BigInt s, BigInt q) {
  return v.map((e) => (e + s) % q).toList();
}

List<BigInt> vectorMulScalarQ(List<BigInt> v, BigInt s, BigInt q) {
  return v.map((e) => (e * s) % q).toList();
}

List<BigInt> vectorHadamardQ(List<BigInt> v, List<BigInt> w, BigInt q) {
  if (v.length != w.length) {
    throw ArgumentError('Arrays not of the same length');
  }
  return List<BigInt>.generate(v.length, (i) => (v[i] * w[i]) % q);
}

List<ECPoint?> vectorHadamardECPointQ(
    List<ECPoint?> v, List<BigInt?> w, BigInt q) {
  if (v.length != w.length) {
    throw ArgumentError('Arrays not of the same length');
  }
  return List<ECPoint?>.generate(
      v.length, (i) => safeMultECPointBigInt(v[i]!, w[i]!));
}

List<BigInt> vectorAddQ(List<BigInt> v, List<BigInt> w, BigInt q) {
  if (v.length != w.length) {
    throw ArgumentError('Arrays not of the same length');
  }
  return List<BigInt>.generate(v.length, (i) => (v[i] + w[i]) % q);
}

List<ECPoint?> vectorSumECPointWithECPoint(List<ECPoint?> v, List<ECPoint?> w) {
  return List<ECPoint?>.generate(v.length, (i) => v[i]! + w[i]);
}

ECPoint? vectorSumECPoint(List<ECPoint?> v) {
  ECPoint? result = v[0]!;

  for (int i = 1; i < v.length; i++) {
    result = result! + v[i];
  }

  return result;
}

BigInt vectorSumQ(List<BigInt> y, BigInt q) {
  return y.fold(BigInt.zero, (a, b) => (a + b) % q);
}

BigInt modInverse(BigInt a, BigInt m) {
  return a.modInverse(m);
}

List<BigInt> vectorModInverseQ(List<BigInt> v, BigInt q) {
  return v.map((e) => e.modInverse(q)).toList();
}

BigInt innerProductQ(List<BigInt> a, List<BigInt> b, BigInt q) {
  if (a.length != b.length) {
    throw ArgumentError('Arrays not of the same length');
  }
  return a.asMap().entries.fold(BigInt.zero,
      (sum, entry) => (sum + (entry.value * b[entry.key]) % q) % q);
}

List<PedersenCommit> createPolyCommitment(BigInt a0, List<BigInt> as) {
  final ret = List<PedersenCommit>.generate(as.length + 1, (i) {
    if (i == 0) {
      return PedersenCommit(a0, BigInt.zero);
    } else {
      final bf = randomNumber256();
      return PedersenCommit(as[i - 1], bf);
    }
  });
  return ret;
}

List<BigInt> generateSequence1_x_xx_xxx(int n, BigInt x) {
  final xs = List<BigInt>.generate(n, (i) => i == 0 ? BigInt.one : BigInt.zero);
  for (var i = 1; i < n; i++) {
    xs[i] = xs[i - 1] * x;
  }
  return xs;
}

PedersenCommit evaluatePolyCommitment(
    List<PedersenCommit> polyCommitment, BigInt x) {
  final xs = generateSequence1_x_xx_xxx(polyCommitment.length, x);
  final multiplyPolyCommitment =
      List<PedersenCommit>.generate(polyCommitment.length, (i) {
    return PedersenCommit(
        polyCommitment[i].A! * xs[i], polyCommitment[i].X! * xs[i]);
  });

  final sumPolyCommitmentA =
      multiplyPolyCommitment.fold(BigInt.zero, (sum, pc) => sum + pc.A!);
  final sumPolyCommitmentX =
      multiplyPolyCommitment.fold(BigInt.zero, (sum, pc) => sum + pc.X!);

  return PedersenCommit(sumPolyCommitmentA, sumPolyCommitmentX);
}

ECPoint? commitPolyCommitmentExp(
    List<PedersenCommit> polyCommitment, List<BigInt> xs) {
  List<ECPoint?> multiplyECPoint =
      List<ECPoint?>.filled(polyCommitment.length, null);

  if (common.DebugFull) {
    print("xs: $xs");
  }

  for (int i = 0; i < polyCommitment.length; i++) {
    if (common.DebugFull) {
      print("polyCommitment $i: ${polyCommitment[i].C}");
    }
    multiplyECPoint[i] = safeMultECPointBigInt(polyCommitment[i].C!, xs[i]);
  }

  // Sum the ECPoints
  ECPoint? sumECPoint = multiplyECPoint[0];

  for (int i = 1; i < multiplyECPoint.length; i++) {
    sumECPoint = sumECPoint! + multiplyECPoint[i]!;
  }

  return sumECPoint;
}

bool compareSlices(List<BigInt> slice1, List<BigInt> slice2) {
  if (slice1.length != slice2.length) {
    return false;
  }
  for (var i = 0; i < slice1.length; i++) {
    if (slice1[i] != slice2[i]) {
      return false;
    }
  }
  return true;
}

InnerProductProofV2? generateInnerProductProofV2(
    VectorBase base, ECPoint c, InnerProductWitness witness, BigInt? salt) {
  int n = base.Gs.length;
  if ((n & (n - 1)) != 0) {
    if (common.DebugFull) {
      print("generateInnerProductProof: Uh oh! n not a power of 2");
      print("n: $n");
    }
  }

  int bc = n.bitLength;

  salt ??= BigInt.zero;

  return generateInnerProductProofSubV2(
      base, c, witness.getA(), witness.getB(), [], [], salt);
}

InnerProductProofV2? generateInnerProductProofSubV2(
    VectorBase base,
    ECPoint P,
    List<BigInt> as,
    List<BigInt> bs,
    List<ECPoint> ls,
    List<ECPoint> rs,
    BigInt previousChallenge) {
  int n = as.length;
  if (n == 1) {
    return InnerProductProofV2(ls, rs, as[0], bs[0]);
  }

  int nPrime = n ~/ 2;

  List<BigInt> asLeft = as.sublist(0, nPrime);
  List<BigInt> asRight = as.sublist(nPrime, n);
  List<BigInt> bsLeft = bs.sublist(0, nPrime);
  List<BigInt> bsRight = bs.sublist(nPrime, n);

  List<ECPoint?> gs = base.Gs;
  List<ECPoint?> gLeft = gs.sublist(0, nPrime);
  List<ECPoint?> gRight = gs.sublist(nPrime, n);

  List<ECPoint?> hs = base.Hs;
  List<ECPoint?> hLeft = hs.sublist(0, nPrime);
  List<ECPoint?> hRight = hs.sublist(nPrime, n);

  BigInt cL = innerProductQ(asLeft, bsRight, base.Q);
  if (common.DebugFull) {
    print("cL: $cL");
  }
  BigInt cR = innerProductQ(asRight, bsLeft, base.Q);
  if (common.DebugFull) {
    print("cR: $cR");
  }

  ECPoint? L =
      vectorCommitExp(gRight, asLeft) + vectorCommitExp(hLeft, bsRight);
  if (common.DebugFull) {
    print("L: $L");
  }
  ECPoint? R =
      vectorCommitExp(gLeft, asRight) + vectorCommitExp(hRight, bsLeft);
  if (common.DebugFull) {
    print("R: $R");
  }

  ECPoint u = base.H;

  L = (L! + safeMultECPointBigInt(u, cL));
  if (common.DebugFull) {
    print("L: $L");
  }
  ls.add(L!);

  R = R! + safeMultECPointBigInt(u, cR)!;
  if (common.DebugFull) {
    print("R: $R");
  }
  rs.add(R!);

  BigInt q = base.Q;

  BigInt x = computeChallengeFromSaltECPoints(q, previousChallenge, [L, R!]);
  if (common.DebugFull) {
    print("x: $x");
  }

  BigInt xInv = x.modInverse(q);
  if (common.DebugFull) {
    print("xInv: $xInv");
  }

  BigInt xSquare = x.modPow(BigInt.two, q);
  if (common.DebugFull) {
    print("xSquare: $xSquare");
  }

  BigInt xSquareInv = xSquare.modInverse(q);
  if (common.DebugFull) {
    print("xSquareInv: $xSquareInv");
  }

  List<BigInt> xs = List<BigInt>.filled(nPrime, x);
  if (common.DebugFull) {
    print("xs: $xs");
  }

  List<BigInt> xInverse = List<BigInt>.filled(nPrime, xInv);
  if (common.DebugFull) {
    print("xInverse: $xInverse");
  }

  List<ECPoint?> gPrime = vectorSumECPointWithECPoint(
      vectorHadamardECPointQ(gLeft, xInverse, q),
      vectorHadamardECPointQ(gRight, xs, q));
  if (common.DebugFull) {
    print("gPrime: $gPrime");
  }

  List<ECPoint?> hPrime = vectorSumECPointWithECPoint(
      vectorHadamardECPointQ(hLeft, xs, q),
      vectorHadamardECPointQ(hRight, xInverse, q));
  if (common.DebugFull) {
    print("hPrime: $hPrime");
  }

  List<BigInt> aPrime = vectorAddQ(
      vectorMulScalarQ(asLeft, x, q), vectorMulScalarQ(asRight, xInv, q), q);
  if (common.DebugFull) {
    print("aPrime: $aPrime");
  }

  List<BigInt> bPrime = vectorAddQ(
      vectorMulScalarQ(bsLeft, xInv, q), vectorMulScalarQ(bsRight, x, q), q);
  if (common.DebugFull) {
    print("bPrime: $bPrime");
  }

  ECPoint? PPrime = (P + safeMultECPointBigInt(L, xSquare))! +
      safeMultECPointBigInt(R, xSquareInv);
  if (common.DebugFull) {
    print("PPrime: $PPrime");
  }

  VectorBase basePrime =
      VectorBase(Gs: gPrime, Hs: hPrime, G: base.G, H: u, Q: q);
  if (common.DebugFull) {
    print("basePrime: $basePrime");
  }

  return generateInnerProductProofSubV2(
      basePrime, PPrime!, aPrime, bPrime, ls, rs, x);
}

String padLeft(String str, String pad, int length) {
  // If str is longer than length, return the right-most length characters
  if (str.length > length) {
    return str.substring(str.length - length);
  }

  // Calculate the number of pad characters needed
  int padCount = length - str.length;

  // Create the padding string
  String padding = pad * padCount;

  // Concatenate the padding and the original string
  return padding + str;
}

List<BigInt> strToBigIntArray(String str) {
  List<BigInt> result = List<BigInt>.filled(str.length, BigInt.zero);

  for (int i = 0; i < str.length; i++) {
    BigInt? t = BigInt.tryParse(str[i]);
    if (t != null) {
      result[i] = t;
    }
  }

  return result;
}

List<BigInt> reverse(List<BigInt> list) {
  List<BigInt> result = List<BigInt>.filled(list.length, BigInt.zero);

  for (int i = 0; i < list.length; i++) {
    result[i] = list[list.length - i - 1];
  }

  return result;
}

RangeProofV2 newRangeProofV2(
    VectorBase vectorBase, PedersenCommit commitment, PedersenCommit witness) {
  if (common.DebugFull) {
    print("commitment: $commitment");
  }

  BigInt number = witness.A!;
  BigInt q = vectorBase.Q;
  if (common.DebugFull) {
    print("q: $q");
  }

  int n = vectorBase.Gs.length;
  List<BigInt> aL =
      reverse(strToBigIntArray(padLeft(number.toRadixString(2), "0", n)));

  if (common.DebugFull) {
    print("aL: $aL");
  }

  List<BigInt> aR = List<BigInt>.filled(n, -BigInt.one);
  aR = vectorAddQ(aL, aR, q);

  if (common.DebugFull) {
    print("aR: $aR");
  }

  BigInt alpha = randomNumber256();
  ECPoint? a = vectorBaseCommitGExpHExpBlinding(vectorBase, aL, aR, alpha);
  if (common.DebugFull) {
    print("a: $a");
  }

  List<BigInt> sL = randVectorV2(n, q);
  List<BigInt> sR = randVectorV2(n, q);
  BigInt rho = randomNumber256();

  ECPoint? s = vectorBaseCommitGExpHExpBlinding(vectorBase, sL, sR, rho);
  if (common.DebugFull) {
    print("s: $s");
  }

  BigInt y = computeChallengeFromECPoints(q, [commitment.C!, a!, s!]);
  if (common.DebugFull) {
    print("y: $y");
  }

  List<BigInt> ys = generateSequence1_x_xx_xxx(n, y);
  if (common.DebugFull) {
    print("ys: $ys");
  }

  BigInt z = computeChallengeFromInts(q, [y]);
  if (common.DebugFull) {
    print("z: $z");
  }

  BigInt zSquared = z.modPow(BigInt.two, q);
  if (common.DebugFull) {
    print("zSquared: $zSquared");
  }

  BigInt three = BigInt.from(3);

  BigInt zCubed = z.modPow(three, q);
  if (common.DebugFull) {
    print("zCubed: $zCubed");
  }

  BigInt negz = -z;
  List<BigInt> l0 = vectorAddScalarQ(aL, negz, q);
  if (common.DebugFull) {
    print("l0: $l0");
  }

  List<BigInt> twos = powerVectorQ(n, BigInt.two, q);
  if (common.DebugFull) {
    print("twos: $twos");
  }

  List<BigInt> l1 = sL;
  if (common.DebugFull) {
    print("l1: $l1");
  }

  List<BigInt> twoTimesZSquared = vectorMulScalarQ(twos, zSquared, q);
  if (common.DebugFull) {
    print("twoTimesZSquared: $twoTimesZSquared");
  }

  List<BigInt> r0 = vectorAddQ(
      vectorHadamardQ(ys, vectorAddScalarQ(aR, z, q), q), twoTimesZSquared, q);
  if (common.DebugFull) {
    print("r0: $r0");
  }

  List<BigInt> r1 = vectorHadamardQ(sR, ys, q);
  if (common.DebugFull) {
    print("r1: $r1");
  }

  BigInt sumys = vectorSumQ(ys, q);
  BigInt zSubZSquared = z - zSquared;
  BigInt sumysMultiplyZSubZSquared = sumys * zSubZSquared;
  BigInt zCubedShiftLeft = zCubed << n;
  BigInt zCubedShiftLeftSubZCubed = zCubedShiftLeft - zCubed;
  BigInt k = sumysMultiplyZSubZSquared - zCubedShiftLeftSubZCubed;
  if (common.DebugFull) {
    print("k: $k");
  }

  BigInt t0 = (k + (zSquared * number)) % q;
  if (common.DebugFull) {
    print("t0: $t0");
  }

  BigInt l1r0innerproduct = innerProductQ(l1, r0, q);
  if (common.DebugFull) {
    print("l1r0innerproduct: $l1r0innerproduct");
  }
  BigInt l0r1innerproduct = innerProductQ(l0, r1, q);
  if (common.DebugFull) {
    print("l0r1innerproduct: $l0r1innerproduct");
  }
  BigInt t1 = l1r0innerproduct + l0r1innerproduct;
  if (common.DebugFull) {
    print("t1: $t1");
  }

  BigInt t2 = innerProductQ(l1, r1, q);
  if (common.DebugFull) {
    print("t2: $t2");
  }

  List<PedersenCommit> polyCommitment = createPolyCommitment(t0, [t1, t2]);
  if (common.DebugFull) {
    for (int i = 0; i < polyCommitment.length; i++) {
      print("polyCommitment $i: ${polyCommitment[i]}");
    }
  }

  BigInt x = computeChallengeFromPedersenCommit(q, z, polyCommitment);
  if (common.DebugFull) {
    print("x: $x");
  }

  PedersenCommit evalCommit = evaluatePolyCommitment(polyCommitment, x);
  if (common.DebugFull) {
    print("evalCommit: $evalCommit");
  }

  BigInt tauX = (zSquared * witness.X! + evalCommit.X!) % q;
  if (common.DebugFull) {
    print("tauX: $tauX");
  }

  BigInt t = evalCommit.A!;
  if (common.DebugFull) {
    print("t: $t");
  }

  BigInt mu = (alpha + (rho * x)) % q;
  if (common.DebugFull) {
    print("mu: $mu");
  }

  BigInt uChallenge = computeChallengeFromInts(q, [x, tauX, mu, t]);
  if (common.DebugFull) {
    print("uChallenge: $uChallenge");
  }

  ECPoint? u = safeMultECPointBigInt(vectorBase.G!, uChallenge);
  if (common.DebugFull) {
    print("u: $u");
  }

  List<ECPoint?> hs = vectorBase.Hs;
  if (common.DebugFull) {
    print("hs: $hs");
  }

  List<ECPoint?> gs = vectorBase.Gs;
  if (common.DebugFull) {
    print("gs: $gs");
  }

  List<ECPoint?> hPrimes =
      vectorHadamardECPointQ(hs, vectorModInverseQ(ys, q), q);
  if (common.DebugFull) {
    print("hPrimes: $hPrimes");
  }

  List<BigInt> l = vectorAddQ(l0, vectorMulScalarQ(l1, x, q), q);
  if (common.DebugFull) {
    print("l: $l");
  }

  List<BigInt> r = vectorAddQ(r0, vectorMulScalarQ(r1, x, q), q);
  if (common.DebugFull) {
    print("r: $r");
  }

  List<BigInt> hExp =
      vectorAddQ(vectorMulScalarQ(ys, z, q), twoTimesZSquared, q);
  if (common.DebugFull) {
    print("hExp: $hExp");
  }

  ECPoint hprimescommithexp = vectorCommitExp(hPrimes, hExp);
  if (common.DebugFull) {
    print("hprimescommithexp: $hprimescommithexp");
  }

  ECPoint? umultiplyt = safeMultECPointBigInt(u!, t);
  if (common.DebugFull) {
    print("umultiplyt: $umultiplyt");
  }

  ECPoint? hmultiplymu = safeMultECPointBigInt(vectorBase.H, mu);
  if (common.DebugFull) {
    print("hmultiplymu: $hmultiplymu");
  }

  ECPoint? smultiplyx = safeMultECPointBigInt(s, x);

  ECPoint? gssum = vectorSumECPoint(gs);

  ECPoint? gssummulnegz = safeMultECPointBigInt(gssum!, negz);
  if (common.DebugFull) {
    print("gssummulnegz $gssummulnegz");
  }

  ECPoint? P = ((((a + smultiplyx!)! + gssummulnegz!)! + hprimescommithexp)! +
          umultiplyt)! -
      hmultiplymu!;
  if (common.DebugFull) {
    print("P: $P");
  }

  VectorBase primeBase =
      VectorBase(Gs: gs, Hs: hPrimes, G: vectorBase.G, H: u, Q: q);
  if (common.DebugFull) {
    print("primeBase: $primeBase");
  }

  InnerProductWitness innerProductWitness = InnerProductWitness(l, r);
  if (common.DebugFull) {
    print("innerProductWitness: $innerProductWitness");
  }

  InnerProductProofV2? proof = generateInnerProductProofV2(
      primeBase, P!, innerProductWitness, uChallenge);
  if (common.DebugFull) {
    print("proof: $proof");

    print("y: $y");
    print("z: $z");
    print("x: $x");
    print("u: $uChallenge");
  }

  List<PedersenCommit> filteredPolyCommitment =
      polyCommitment.where((pc) => pc.X != BigInt.zero).toList();

  return RangeProofV2(
    A: a,
    S: s,
    TCommits: filteredPolyCommitment,
    TauX: tauX,
    Mu: mu,
    T: t,
    ProductProof: proof,
  );
}

bool verifyRangeProofV2(
    VectorBase vectorBase, PedersenCommit input, RangeProofV2 proof) {
  int n = vectorBase.Gs.length;

  ECPoint a = proof.A;
  ECPoint s = proof.S;

  BigInt q = vectorBase.Q;

  List<ECPoint> points = [input.C!, a, s];

  BigInt y = computeChallengeFromECPoints(q, points);
  if (common.DebugFull) {
    print("y: $y");
  }

  List<BigInt> ys = generateSequence1_x_xx_xxx(n, y);
  if (common.DebugFull) {
    print("ys: $ys");
  }

  BigInt z = computeChallengeFromInts(q, [y]);
  if (common.DebugFull) {
    print("z: $z");
  }

  BigInt zSquared = z.modPow(BigInt.two, q);
  if (common.DebugFull) {
    print("zSquared: $zSquared");
  }

  BigInt zCubed = z.modPow(BigInt.from(3), q);
  if (common.DebugFull) {
    print("zCubed: $zCubed");
  }

  List<BigInt> twos = powerVectorQ(n, BigInt.two, q);
  if (common.DebugFull) {
    print("twos: $twos");
  }

  List<BigInt> twoTimesZSquared = vectorMulScalarQ(twos, zSquared, q);
  if (common.DebugFull) {
    print("twoTimesZSquared: $twoTimesZSquared");
  }

  List<PedersenCommit> tCommits = proof.TCommits;
  if (common.DebugFull) {
    print("tCommits: $tCommits");
  }

  BigInt x = computeChallengeFromPedersenCommit(q, z, tCommits);
  if (common.DebugFull) {
    print("x: $x");
  }

  BigInt tauX = proof.TauX;
  BigInt mu = proof.Mu;
  BigInt t = proof.T;

  BigInt sumys = vectorSumQ(ys, q);
  BigInt zSubZSquared = z - zSquared;
  BigInt sumysMultiplyZSubZSquared = sumys * zSubZSquared;
  BigInt zCubedShiftLeft = zCubed << n;
  BigInt zCubedShiftLeftSubZCubed = zCubedShiftLeft - zCubed;
  BigInt k = sumysMultiplyZSubZSquared - zCubedShiftLeftSubZCubed;

  PedersenCommit lhsPC = PedersenCommit(t - k, tauX);
  ECPoint lhs = lhsPC.C!;
  if (common.DebugFull) {
    print("lhs: $lhs");
  }

  BigInt xSquared = x.modPow(BigInt.two, q);

  ECPoint? rhsx = commitPolyCommitmentExp(tCommits, [x, xSquared]);
  if (common.DebugFull) {
    print("rhsx: $rhsx");
  }

  ECPoint? testrhsx = commitPolyCommitmentExp(tCommits.sublist(0, 1), [x]);
  if (common.DebugFull) {
    print("testrhsx: $testrhsx");
  }

  ECPoint? rhs = rhsx! + safeMultECPointBigInt(input.C!, zSquared);
  if (common.DebugFull) {
    print("rhs: $rhs");
  }

  if (lhs != rhs) {
    if (common.DebugFull) {
      print("Range proof verification failed");
    }
    return false;
  }

  BigInt uChallenge = computeChallengeFromInts(q, [x, tauX, mu, t]);
  if (common.DebugFull) {
    print("uChallenge: $uChallenge");
  }

  ECPoint? u = safeMultECPointBigInt(vectorBase.G!, uChallenge);
  if (common.DebugFull) {
    print("u: $u");
  }

  List<ECPoint?> hs = vectorBase.Hs;
  List<ECPoint?> gs = vectorBase.Gs;
  List<ECPoint?> hPrimes =
      vectorHadamardECPointQ(hs, vectorModInverseQ(ys, q), q);
  if (common.DebugFull) {
    print("hPrimes: $hPrimes");
  }

  List<BigInt> hExp =
      vectorAddQ(vectorMulScalarQ(ys, z, q), twoTimesZSquared, q);
  if (common.DebugFull) {
    print("hExp: $hExp");
  }

  BigInt negz = -z;

  ECPoint? vectorsumecpointgsmulnegz =
      safeMultECPointBigInt(vectorSumECPoint(gs)!, negz);

  ECPoint? P =
      ((((a + safeMultECPointBigInt(s, x))! + vectorsumecpointgsmulnegz)! +
                  vectorCommitExp(hPrimes, hExp))! +
              safeMultECPointBigInt(u!, t))! -
          safeMultECPointBigInt(vectorBase.H, mu)!;
  if (common.DebugFull) {
    print("P: $P");
  }

  VectorBase primeBase = VectorBase(Gs: gs, Hs: hPrimes, G: null, H: u, Q: q);

  return verifyInnerProductProofV2(
      primeBase, P!, proof.ProductProof!, uChallenge);
}

List<BigInt> multiplySlice(List<BigInt> challengeVector, BigInt multiplier) {
  return challengeVector.map((val) => val * multiplier).toList();
}

bool testBit(BigInt number, int bitPosition) {
  // Shift the number to the right by bitPosition and check if the least significant bit is 1
  return (number >> bitPosition) & BigInt.one == BigInt.one;
}

bool verifyInnerProductProofV2(
    VectorBase params, ECPoint? c, InnerProductProofV2 proof, BigInt salt) {
  List<ECPoint> ls = proof.L;
  List<ECPoint> rs = proof.R;
  List<BigInt> challenges = [];
  BigInt q = params.Q;
  BigInt previousChallenge = salt;

  for (int i = 0; i < ls.length; i++) {
    ECPoint l = ls[i];
    ECPoint r = rs[i];
    BigInt x = computeChallengeFromSaltECPoints(q, previousChallenge, [l, r]);
    challenges.add(x);
    BigInt xInv = x.modInverse(q);
    c = (c! + safeMultECPointBigInt(l, x.modPow(BigInt.two, q)))! +
        safeMultECPointBigInt(r, xInv.modPow(BigInt.two, q));
    previousChallenge = x;
  }
  if (common.DebugFull) {
    print("challenges: $challenges");
  }

  int n = params.Gs.length;
  List<BigInt> otherExponents = List<BigInt>.filled(n, BigInt.one);

  for (int i = 0; i < challenges.length; i++) {
    otherExponents[0] = (otherExponents[0] * challenges[i]) % q;
  }
  otherExponents[0] = otherExponents[0].modInverse(q);

  challenges = challenges.reversed.toList();

  List<bool> bitSet = List<bool>.filled(n, false);

  for (int i = 0; i < n ~/ 2; i++) {
    for (int j = 0; (1 << j) + i < n; j++) {
      int i1 = i + (1 << j);
      if (!bitSet[i1]) {
        otherExponents[i1] =
            (otherExponents[i] * challenges[j].modPow(BigInt.two, q)) % q;
        bitSet[i1] = true;
      }
    }
  }

  if (common.DebugFull) {
    for (int i = 0; i < otherExponents.length; i++) {
      print("otherExponents[$i]: ${otherExponents[i]}");
    }
  }

  List<BigInt> challengeVector2 = List<BigInt>.filled(n, BigInt.one);

  for (int i = 0; i < n; i++) {
    BigInt bigIntI = BigInt.from(i);
    BigInt ithChallenge = BigInt.one;
    for (int j = 0; j < challenges.length; j++) {
      if (bigIntI.bitLength > j && testBit(bigIntI, j)) {
        ithChallenge = (ithChallenge * challenges[j]) % q;
      } else {
        BigInt inv = challenges[j].modInverse(q);
        ithChallenge = (ithChallenge * inv) % q;
      }
    }
    challengeVector2[i] = ithChallenge;
  }

  if (common.DebugFull) {
    for (int i = 0; i < challengeVector2.length; i++) {
      print("challengeVector2[$i]: ${challengeVector2[i]}");
    }
  }

  List<BigInt> challengeVector = otherExponents;

  if (ListEquality().equals(challengeVector, challengeVector2)) {
    if (common.DebugFull) {
      print("Challenge vectors are equal");
    }
  } else {
    return false;
  }

  List<BigInt> sleft = multiplySlice(challengeVector, proof.A);

  if (common.DebugFull) {
    for (int i = 0; i < sleft.length; i++) {
      print("sleft[$i]: ${sleft[i]}");
    }
  }

  List<BigInt> reversedChallengeVector = challengeVector.reversed.toList();
  List<BigInt> sright = multiplySlice(reversedChallengeVector, proof.B);

  if (common.DebugFull) {
    for (int i = 0; i < sright.length; i++) {
      print("sright[$i]: ${sright[i]}");
    }
  }

  BigInt prod = (proof.A * proof.B) % q;

  ECPoint g = vectorCommitExp(params.Gs, sleft);
  ECPoint h = vectorCommitExp(params.Hs, sright);

  ECPoint? cProof = (g + h)! + safeMultECPointBigInt(params.H, prod);

  if (common.DebugFull) {
    print("c: $c");
    print("cProof: $cProof");
  }

  return cProof == c;
}
