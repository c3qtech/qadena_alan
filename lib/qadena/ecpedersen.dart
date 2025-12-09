import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';
import 'package:convert/convert.dart';
import 'package:pointycastle/digests/keccak.dart';
import 'package:pointycastle/ecc/api.dart';
import 'package:pointycastle/ecc/curves/secp256k1.dart';
import 'package:pointycastle/api.dart' show SecureRandom, KeyParameter;
import 'package:pointycastle/random/fortuna_random.dart';
import 'package:qadena_alan/qadena/common.dart' as common;
//import 'package:chia_crypto_utils/chia_crypto_utils.dart'; // Import chia_crypto_utils

class ECPointInfo {
  ECPoint ecPoint;
  String nodeType;
  String nodeID;

  ECPointInfo(this.ecPoint, this.nodeType, this.nodeID);

  @override
  String toString() {
    return 'ecPoint: $ecPoint, nodeType: $nodeType, nodeID: $nodeID';
  }
}

class CryptoParams {
  final ECCurve curve;
  final List<ECPoint> Gs;
  final List<ECPoint> Hs;
  final BigInt n;
  final ECPoint u;
  final int v;
  final ECPoint cg;
  final ECPoint ch;
  final ECPoint baseG;

  CryptoParams(
      this.curve, this.Gs, this.Hs, this.n, this.u, this.v, this.cg, this.ch, this.baseG);

  BaseG() { return baseG; }

  G() {
    return cg;
  }

  H() {
    return ch;
  }

  ECPoint zeroECPoint() {
    return newECPoint(BigInt.zero, BigInt.zero);
  }

  VectorBase getVectorBase() {
    return VectorBase(Gs: Gs, Hs: Hs, G: cg, H: ch, Q: n);
  }
}

class VectorBase {
  final List<ECPoint?> Gs;
  final List<ECPoint?> Hs;
  final ECPoint H;
  final ECPoint? G;
  final BigInt Q; // group order

  VectorBase({
    required this.Gs,
    required this.Hs,
    required this.H,
    required this.G,
    required this.Q,
  });
}

VectorBase newVectorBase(
    List<ECPoint> Gs, List<ECPoint> Hs, ECPoint G, ECPoint H, BigInt Q) {
  return VectorBase(Gs: Gs, Hs: Hs, G: G, H: H, Q: Q);
}

BigInt keccakHashString(String s) {
  final hasher = KeccakDigest(256);
  hasher.update(utf8.encode(s), 0, s.length);
  final hash = Uint8List(hasher.digestSize);
  hasher.doFinal(hash, 0);
  return BigInt.parse(hex.encode(hash), radix: 16);
}

BigInt paddedHash(String part1, int i) {
  final hasher = KeccakDigest(256);
  hasher.update(utf8.encode(part1) as Uint8List, 0, part1.length);

  final buf = Uint8List(32);
  final byteData = ByteData.sublistView(buf);
  byteData.setUint32(28, i, Endian.big);
  hasher.update(buf, 0, buf.length);

  final hash = Uint8List(hasher.digestSize);
  hasher.doFinal(hash, 0);
  final hashResult = BigInt.parse(hex.encode(hash), radix: 16);
  if (common.DebugFull) {
    print('hashResult: $hashResult');
  }
  return hashResult;
}

// global
CryptoParams? ecPedersen;
const vecLength = 128;

void initECPedersen() {
  if (ecPedersen != null) {
    return;
  }
  ecPedersen = newECPrimeGroupKeyV2(vecLength);
}

final bigIntMax = BigInt.from(2).pow(vecLength);

ECPoint newECPoint(BigInt x, BigInt y) {
  final ECCurve ecCurve = ECCurve_secp256k1().curve;
  return ecCurve.createPoint(x, y);
}

Uint8List bigIntToByteArray(BigInt bigInt) {
  // Ensure the BigInt is treated as an unsigned integer
  var bytes = bigInt.toUnsigned(256).toRadixString(16).padLeft(64, '0');
  var byteArray = Uint8List.fromList(List<int>.generate(
      32, (i) => int.parse(bytes.substring(i * 2, i * 2 + 2), radix: 16)));
  return byteArray;
}

SecureRandom _secureRandom() {
  final secureRandom = FortunaRandom();
  final seedSource = Random.secure();
  final seeds = List<int>.generate(32, (_) => seedSource.nextInt(255));
  secureRandom.seed(KeyParameter(Uint8List.fromList(seeds)));
  return secureRandom;
}

BigInt generateRandomBlindingFactor() {
  final random = _secureRandom();
  final v = 256;
  final n = ecPedersen!.n;
  return BigInt.parse(
      random
          .nextBytes(v ~/ 8)
          .map((e) => e.toRadixString(16).padLeft(2, '0'))
          .join(),
      radix: 16) % n;
}

ECPoint? safeMultECPointBigInt(ECPoint a, BigInt b) {
  if (b < BigInt.zero) {
    // If b is negative, multiply by the absolute value and then negate the result
    return -(a * b.abs())!;
  } else {
    // If b is non-negative, multiply directly
    return a * b;
  }
}

class PedersenCommit {
  BigInt? A;
  BigInt? X;
  ECPoint? C;

  PedersenCommit.fromCommitment(ECPoint c) {
    C = c;
    A = BigInt.zero;
    X = BigInt.zero;
  }

  PedersenCommit.fromValue(BigInt value) {
    A = value;
    X = generateRandomBlindingFactor();
    C = safeMultECPointBigInt(ecPedersen!.G(), value)! +
        safeMultECPointBigInt(ecPedersen!.H(), X!)!;
  }

  PedersenCommit(BigInt value, BigInt blindingFactor) {
    // print the value and blinding factor
    //print('Value: $value');
    //print('Blinding factor: $blindingFactor');
    // print the generator points
    //print('G: ${ecPedersen!.G()}');
    //print('H: ${ecPedersen!.H()}');
    A = value % ecPedersen!.n;
    X = blindingFactor % ecPedersen!.n;

    C = safeMultECPointBigInt(ecPedersen!.G(), value)! +
        safeMultECPointBigInt(ecPedersen!.H(), blindingFactor);
  }

  @override
  String toString() {
    if (C == null) {
      return 'PedersenCommit(A: $A, X: $X, C: null)';
    }
    return 'PedersenCommit(A: $A, X: $X, C: ${C!.x!.toBigInteger()}, ${C!.y!.toBigInteger()})';
  }
}

PedersenCommit? subPedersenCommit(
    PedersenCommit? input, PedersenCommit? transfer) {
  if (input == null || transfer == null) {
    return null;
  }

  final diff = input.A! - transfer.A!;
  if (diff < BigInt.zero) {
    if (common.DebugFull) {
      print("cannot commit transfer=${transfer.A} > input=${input.A}");
    }
    return null;
  }

  final changeX = input.X! - transfer.X!;
  final change = PedersenCommit(diff, changeX);
  if (common.DebugFull) {
    print('subPedersenCommit: $input - $transfer = $change');
  }
  return change;
}

bool validateSubPedersenCommit(
    PedersenCommit? input, PedersenCommit? output, PedersenCommit? change) {
  if (input == null || output == null || change == null) {
    return false;
  }
  final negOutput = -output.C!;
  final negChange = -change.C!;
  var check = (input.C! + negOutput)! + negChange;

  if (check!.x == null && check.y == null) {
    return true;
  }

  return check.x!.byteLength == 0 && check.y!.byteLength == 0;
}

PedersenCommit? subPedersenCommitNoMinCheck(
    PedersenCommit? input, PedersenCommit? transfer) {
  if (input == null || transfer == null) {
    return null;
  }
  final diff = input.A! - transfer.A!;
  final changeX = input.X! - transfer.X!;
  final change = PedersenCommit(diff, changeX);
  return change;
}

PedersenCommit? addPedersenCommit(
    PedersenCommit? input, PedersenCommit? transfer) {
  if (input == null || transfer == null) {
    return null;
  }
  final sum = input.A! + transfer.A!;
  final sumX = input.X! + transfer.X!;
  if (sum > bigIntMax) {
    if (common.DebugFull) {
      print("cannot commit sum=${sum} > max=${bigIntMax}");
    }
    return null;
  }

  final output = PedersenCommit(sum, sumX);
  return output;
}

PedersenCommit? addPedersenCommitNoMaxCheck(
    PedersenCommit? input, PedersenCommit? transfer) {
  if (input == null || transfer == null) {
    return null;
  }
  final sum = input.A! + transfer.A!;
  final sumX = input.X! + transfer.X!;
  final output = PedersenCommit(sum, sumX);
  return output;
}

bool comparePedersenCommit(PedersenCommit? p, PedersenCommit? q) {
  return p != null && q != null && p.C! == q.C!;
}

void blindPedersenCommit(PedersenCommit? p) {
  if (p == null) {
    return;
  }

  p.A = BigInt.zero;
  p.X = BigInt.zero;
}

bool validPedersenCommit(PedersenCommit? p) {
  return p != null && p.C != null && p.C!.x != null && p.C!.y != null;
}

bool validatePedersenCommit(PedersenCommit? p) {
  if (p == null) {
    return false;
  }

  final test = PedersenCommit(p.A!, p.X!);
  return p.C! == test.C!;
}

bool validateAddPedersenCommit(
    PedersenCommit? input, PedersenCommit? transfer, PedersenCommit? output) {
  if (input == null || transfer == null || output == null) {
    return false;
  }

  final negOutput = -output.C!;
  final check = (input.C! + negOutput)! + transfer.C;

  if (check!.x == null && check.y == null) {
    return true;
  }

  return check.x!.byteLength == 0 && check.y!.byteLength == 0;
}

BigInt? modSqrt(BigInt value, BigInt Q) {
  if (value == BigInt.zero) {
    return BigInt.zero;
  } else if (value.modPow((Q - BigInt.one) ~/ BigInt.two, Q) != BigInt.one) {
    return null;
  } else if (Q.remainder(BigInt.from(4)) == BigInt.from(3)) {
    return value.modPow((Q + BigInt.one) ~/ BigInt.from(4), Q);
  } else if (Q.remainder(BigInt.from(8)) == BigInt.from(5)) {
    var v = value.modPow((Q + BigInt.from(3)) ~/ BigInt.from(8), Q);
    if (v * v % Q == value) {
      return v;
    }
    return (v * BigInt.from(2).modPow((Q - BigInt.one) ~/ BigInt.from(4), Q)) %
        Q;
  }

  var S = BigInt.zero;
  var q = Q - BigInt.one;
  while (q.remainder(BigInt.two) == BigInt.zero) {
    q ~/= BigInt.two;
    S += BigInt.one;
  }

  var z = BigInt.zero;
  for (var i = BigInt.one; i < Q; i += BigInt.one) {
    if (i.modPow((Q - BigInt.one) ~/ BigInt.two, Q) == Q - BigInt.one) {
      z = i;
      break;
    }
  }

  var M = S;
  var c = z.modPow(q, Q);
  var t = value.modPow(q, Q);
  var R = value.modPow((q + BigInt.one) ~/ BigInt.two, Q);

  while (t != BigInt.zero && t != BigInt.one) {
    var i = BigInt.zero;
    var f = t;
    while (f != BigInt.one) {
      f = f.modPow(BigInt.two, Q);
      i += BigInt.one;
      if (i == M) {
        return null; // No valid square root found
      }
    }

    var b = c.modPow(BigInt.two.modPow(M - i - BigInt.one, Q), Q);
    M = i;
    c = b.modPow(BigInt.two, Q);
    t = (t * c) % Q;
    R = (R * b) % Q;
  }

  return t == BigInt.zero ? BigInt.zero : R;
}

bool isValidPoint(ECPoint pt) {
  print('isValidPoint $pt');
  final negpt = -pt;
  final seed = pt.x!.toBigInteger()!;

  final curve = ECCurve_secp256k1();
  final b = BigInt.from(7); // hardcoded!!!!
  final groupOrder = curve.n;
  final p = BigInt.parse(
      'fffffffffffffffffffffffffffffffffffffffffffffffffffffffefffffc2f',
      radix: 16); // hardcoded!
  ECPoint? point;
  bool success = false;

  if (common.DebugFull) {
    print('seed: ${seed}');
    print('order: ${groupOrder}');
  }
  final x = seed % groupOrder;
  if (common.DebugFull) {
    print('x $x');
  }
  final x2 = x * x;
  if (common.DebugFull) {
    print('x2 $x2');
  }
  final x3 = x2 * x;
  if (common.DebugFull) {
    print('x3 $x3');
  }
  var rhs = (x3 + b);
  if (common.DebugFull) {
    print('rhs: $rhs');
  }
  rhs = rhs % p;
  if (common.DebugFull) {
    print('rhs mod p $rhs');
  }
  final y = modSqrt(rhs, p);

  print('y $y, ${pt.y}, ${negpt.y}');
  if (y != null &&
      (pt.y!.toBigInteger()! == y || negpt.y!.toBigInteger()! == y)) {
    return true;
  }

  return false;
}

ECPoint mapInto(BigInt seed) {
  final curve = ECCurve_secp256k1();
  final b = BigInt.from(7); // hardcoded!!!!
  final groupOrder = curve.n;
  final p = BigInt.parse(
      'fffffffffffffffffffffffffffffffffffffffffffffffffffffffefffffc2f',
      radix: 16); // hardcoded!
  ECPoint? point;
  bool success = false;

  while (!success) {
    if (common.DebugFull) {
      print('seed: ${seed}');
      print('order: ${groupOrder}');
    }
    final x = seed % groupOrder;
    if (common.DebugFull) {
      print('x $x');
    }
    final x2 = x * x;
    if (common.DebugFull) {
      print('x2 $x2');
    }
    final x3 = x2 * x;
    if (common.DebugFull) {
      print('x3 $x3');
    }
    var rhs = (x3 + b);
    if (common.DebugFull) {
      print('rhs: $rhs');
    }
    rhs = rhs % p;
    if (common.DebugFull) {
      print('rhs mod p $rhs');
    }
    final y = modSqrt(rhs, p);

    if (y != null) {
      if (common.DebugFull) {
        print('x: ${hex.encode(bigIntToByteArray(x))}');
        print('y: ${hex.encode(bigIntToByteArray(y))}');
      }
      point = curve.curve.createPoint(x, y);
      success = true;
    } else {
      seed += BigInt.one;
    }
  }

  return point!;
}

CryptoParams newECPrimeGroupKeyV2(int n) {
  final curve = ECCurve_secp256k1();

  final u = mapInto(keccakHashString('U'));
  final cg = mapInto(keccakHashString('G'));
  final ch = mapInto(keccakHashString('H'));

  final gVals = List<ECPoint>.generate(n, (i) => mapInto(paddedHash('G', i)));
  final hVals = List<ECPoint>.generate(n, (i) => mapInto(paddedHash('H', i)));

  // print out gVals

  if (common.DebugFull) {
    // Print out gVals
    for (var i = 0; i < n; i++) {
      print(
          'gs $i ${hex.encode(bigIntToByteArray(gVals[i].x!.toBigInteger()!))} ${hex.encode(bigIntToByteArray(gVals[i].y!.toBigInteger()!))}');
    }

    // Print out hVals
    for (var i = 0; i < n; i++) {
      print(
          'hs $i ${hex.encode(bigIntToByteArray(hVals[i].x!.toBigInteger()!))} ${hex.encode(bigIntToByteArray(hVals[i].y!.toBigInteger()!))}');
    }
  }

  final curValue = curve.G.x;

  if (common.DebugFull) {
    print('Gx: $curValue');
  }

  if (common.DebugFull) {
    print('G: $cg');
    print('H: $ch');
  }

  // Convert the byte arrays to BigInt
  BigInt baseGX = BigInt.parse("79be667ef9dcbbac55a06295ce870b07029bfcdb2dce28d959f2815b16f81798", radix: 16);
  BigInt baseGY = BigInt.parse("483ada7726a3c4655da4fbfc0e1108a8fd17b448a68554199c47d08ffb10d4b8", radix: 16);

  if (common.DebugFull) {
    print("BaseGX, BaseGY: $baseGX, $baseGY");
  }

  // Create the ECPoint without checking
  ECPoint baseG = newECPoint(baseGX, baseGY);  

  return CryptoParams(curve.curve, gVals, hVals, curve.n, u, n, cg, ch, baseG);
}
