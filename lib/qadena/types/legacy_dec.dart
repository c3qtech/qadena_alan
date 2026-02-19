import 'dart:core';

class LegacyDec {
  static const int precision = 18;
  static final BigInt _precisionReuse = BigInt.from(10).pow(precision);

  final BigInt i;

  const LegacyDec._(this.i);

  factory LegacyDec.zero() => LegacyDec._(BigInt.zero);
  factory LegacyDec.one() => LegacyDec._(_precisionReuse);

  factory LegacyDec.fromBigInt(BigInt value, {int prec = 0}) {
    if (prec < 0 || prec > precision) {
      throw RangeError.range(prec, 0, precision, 'prec');
    }
    final multiplier = BigInt.from(10).pow(precision - prec);
    return LegacyDec._(value * multiplier);
  }

  /// Parses a raw integer string interpreted as an already-scaled value with
  /// 18 decimal places ("atomics").
  ///
  /// Example: "7" represents 7 * 10^-18 and will render as
  /// "0.000000000000000007".
  factory LegacyDec.parseRaw(String str) {
    var s = str.trim();
    if (s.isEmpty) {
      throw const FormatException('decimal string cannot be empty');
    }

    var neg = false;
    if (s.startsWith('-')) {
      neg = true;
      s = s.substring(1);
    }

    if (s.isEmpty) {
      throw const FormatException('decimal string cannot be empty');
    }

    if (s.contains('.')) {
      throw const FormatException('raw decimal string must be an integer');
    }

    final rawInt = BigInt.parse(s);
    return LegacyDec._(neg ? -rawInt : rawInt);
  }

  factory LegacyDec.parse(String str) {
    var s = str.trim();
    if (s.isEmpty) {
      throw const FormatException('decimal string cannot be empty');
    }

    var neg = false;
    if (s.startsWith('-')) {
      neg = true;
      s = s.substring(1);
    }

    if (s.isEmpty) {
      throw const FormatException('decimal string cannot be empty');
    }

    final parts = s.split('.');
    if (parts.length > 2) {
      throw const FormatException('invalid decimal string');
    }

    final whole = parts[0];
    final frac = parts.length == 2 ? parts[1] : '';

    if (whole.isEmpty || (parts.length == 2 && frac.isEmpty)) {
      throw const FormatException('invalid decimal length');
    }

    if (frac.length > precision) {
      throw const FormatException('value exceeds max precision');
    }

    final paddedFrac = frac.padRight(precision, '0');
    final combined = whole + paddedFrac;

    final combinedInt = BigInt.parse(combined);
    return LegacyDec._(neg ? -combinedInt : combinedInt);
  }

  bool get isZero => i == BigInt.zero;
  bool get isNegative => i.isNegative;

  bool operator <(LegacyDec other) => i < other.i;
  bool operator <=(LegacyDec other) => i <= other.i;
  bool operator >(LegacyDec other) => i > other.i;
  bool operator >=(LegacyDec other) => i >= other.i;

  LegacyDec max(LegacyDec other) => this >= other ? this : other;

  LegacyDec mulFraction(int numerator, int denominator) {
    if (denominator == 0) {
      throw const IntegerDivisionByZeroException();
    }
    final num = BigInt.from(numerator);
    final den = BigInt.from(denominator);

    final scaled = i * num;
    final quo = scaled ~/ den;
    final rem = scaled.remainder(den).abs();
    final half = (den.abs() ~/ BigInt.two);

    // Banker's rounding: round half to even
    var rounded = quo;
    final cmp = rem.compareTo(half);
    if (cmp > 0) {
      rounded = quo + (scaled.isNegative ? -BigInt.one : BigInt.one);
    } else if (cmp == 0 && (quo.isOdd)) {
      rounded = quo + (scaled.isNegative ? -BigInt.one : BigInt.one);
    }

    return LegacyDec._(rounded);
  }

  BigInt truncateInt() => i ~/ _precisionReuse;

  @override
  String toString() {
    final neg = i.isNegative;
    final abs = i.abs();

    final whole = abs ~/ _precisionReuse;
    final frac = (abs % _precisionReuse).toString().padLeft(precision, '0');

    final str = frac == '0'.padLeft(precision, '0')
        ? whole.toString()
        : '${whole.toString()}.$frac';

    return neg ? '-$str' : str;
  }
}
