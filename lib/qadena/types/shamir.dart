// Copyright (c) HashiCorp, Inc.
// SPDX-License-Identifier: MPL-2.0

import 'dart:math';
import 'dart:typed_data';

/// ShareOverhead is the byte size overhead of each share
/// when using Split on a secret. This is caused by appending
/// a one byte tag to the share.
const int shareOverhead = 1;

/// polynomial represents a polynomial of arbitrary degree
class _Polynomial {
  final Uint8List coefficients;

  _Polynomial(this.coefficients);

  /// makePolynomial constructs a random polynomial of the given
  /// degree but with the provided intercept value.
  static _Polynomial make(int intercept, int degree) {
    final coefficients = Uint8List(degree + 1);

    // Ensure the intercept is set
    coefficients[0] = intercept;

    // Assign random co-efficients to the polynomial
    final random = Random.secure();
    for (int i = 1; i < coefficients.length; i++) {
      coefficients[i] = random.nextInt(256);
    }

    return _Polynomial(coefficients);
  }

  /// evaluate returns the value of the polynomial for the given x
  int evaluate(int x) {
    // Special case the origin
    if (x == 0) {
      return coefficients[0];
    }

    // Compute the polynomial value using Horner's method.
    final degree = coefficients.length - 1;
    int out = coefficients[degree];
    for (int i = degree - 1; i >= 0; i--) {
      final coeff = coefficients[i];
      out = _add(_mult(out, x), coeff);
    }
    return out;
  }
}

/// interpolatePolynomial takes N sample points and returns
/// the value at a given x using a lagrange interpolation.
int _interpolatePolynomial(List<int> xSamples, List<int> ySamples, int x) {
  final limit = xSamples.length;
  int result = 0;
  int basis;

  for (int i = 0; i < limit; i++) {
    basis = 1;
    for (int j = 0; j < limit; j++) {
      if (i == j) {
        continue;
      }
      final num = _add(x, xSamples[j]);
      final denom = _add(xSamples[i], xSamples[j]);
      final term = _div(num, denom);
      basis = _mult(basis, term);
    }
    final group = _mult(ySamples[i], basis);
    result = _add(result, group);
  }
  return result;
}

/// div divides two numbers in GF(2^8)
int _div(int a, int b) {
  if (b == 0) {
    throw ArgumentError('divide by zero');
  }

  int ret = _mult(a, _inverse(b));

  // Ensure we return zero if a is zero
  if (a == 0) {
    ret = 0;
  }
  return ret;
}

/// inverse calculates the inverse of a number in GF(2^8)
int _inverse(int a) {
  int b = _mult(a, a);
  int c = _mult(a, b);
  b = _mult(c, c);
  b = _mult(b, b);
  c = _mult(b, c);
  b = _mult(b, b);
  b = _mult(b, b);
  b = _mult(b, c);
  b = _mult(b, b);
  b = _mult(a, b);

  return _mult(b, b);
}

/// mult multiplies two numbers in GF(2^8)
int _mult(int a, int b) {
  int r = 0;
  int i = 8;

  while (i > 0) {
    i--;
    // Use bitwise operations for GF(2^8) multiplication
    final bBit = (b >> i) & 1;
    final rBit = (r >> 7) & 1;
    r = ((-bBit & a) ^ (-rBit & 0x1B) ^ (r + r)) & 0xFF;
  }

  return r;
}

/// add combines two numbers in GF(2^8)
/// This can also be used for subtraction since it is symmetric.
int _add(int a, int b) {
  return a ^ b;
}

/// Split takes an arbitrarily long secret and generates a `parts`
/// number of shares, `threshold` of which are required to reconstruct
/// the secret. The parts and threshold must be at least 2, and less
/// than 256. The returned shares are each one byte longer than the secret
/// as they attach a tag used to reconstruct the secret.
List<Uint8List> split(Uint8List secret, int parts, int threshold) {
  // Sanity check the input
  if (parts < threshold) {
    throw ArgumentError('parts cannot be less than threshold');
  }
  if (parts > 255) {
    throw ArgumentError('parts cannot exceed 255');
  }
  if (threshold < 2) {
    throw ArgumentError('threshold must be at least 2');
  }
  if (threshold > 255) {
    throw ArgumentError('threshold cannot exceed 255');
  }
  if (secret.isEmpty) {
    throw ArgumentError('cannot split an empty secret');
  }

  // Generate random list of x coordinates
  final random = Random(DateTime.now().microsecondsSinceEpoch);
  final xCoordinates = _randomPermutation(255, random);

  // Allocate the output array, initialize the final byte
  // of the output with the offset. The representation of each
  // output is {y1, y2, .., yN, x}.
  final out = List<Uint8List>.generate(parts, (idx) {
    final share = Uint8List(secret.length + 1);
    share[secret.length] = xCoordinates[idx] + 1;
    return share;
  });

  // Construct a random polynomial for each byte of the secret.
  // Because we are using a field of size 256, we can only represent
  // a single byte as the intercept of the polynomial, so we must
  // use a new polynomial for each byte.
  for (int idx = 0; idx < secret.length; idx++) {
    final val = secret[idx];
    final p = _Polynomial.make(val, threshold - 1);

    // Generate a `parts` number of (x,y) pairs
    // We cheat by encoding the x value once as the final index,
    // so that it only needs to be stored once.
    for (int i = 0; i < parts; i++) {
      final x = xCoordinates[i] + 1;
      final y = p.evaluate(x);
      out[i][idx] = y;
    }
  }

  // Return the encoded secrets
  return out;
}

/// Combine is used to reverse a Split and reconstruct a secret
/// once a `threshold` number of parts are available.
Uint8List combine(List<Uint8List> parts) {
  // Verify enough parts provided
  if (parts.length < 2) {
    throw ArgumentError('less than two parts cannot be used to reconstruct the secret');
  }

  // Verify the parts are all the same length
  final firstPartLen = parts[0].length;
  if (firstPartLen < 2) {
    throw ArgumentError('parts must be at least two bytes');
  }
  for (int i = 1; i < parts.length; i++) {
    if (parts[i].length != firstPartLen) {
      throw ArgumentError('all parts must be the same length');
    }
  }

  // Create a buffer to store the reconstructed secret
  final secret = Uint8List(firstPartLen - 1);

  // Buffer to store the samples
  final xSamples = List<int>.filled(parts.length, 0);
  final ySamples = List<int>.filled(parts.length, 0);

  // Set the x value for each sample and ensure no x_sample values are the same,
  // otherwise div() can be unhappy
  final checkMap = <int, bool>{};
  for (int i = 0; i < parts.length; i++) {
    final samp = parts[i][firstPartLen - 1];
    if (checkMap.containsKey(samp)) {
      throw ArgumentError('duplicate part detected');
    }
    checkMap[samp] = true;
    xSamples[i] = samp;
  }

  // Reconstruct each byte
  for (int idx = 0; idx < secret.length; idx++) {
    // Set the y value for each sample
    for (int i = 0; i < parts.length; i++) {
      ySamples[i] = parts[i][idx];
    }

    // Interpolate the polynomial and compute the value at 0
    final val = _interpolatePolynomial(xSamples, ySamples, 0);

    // Evaluate the 0th value to get the intercept
    secret[idx] = val;
  }
  return secret;
}

/// Generate a random permutation of integers from 0 to n-1
List<int> _randomPermutation(int n, Random random) {
  final list = List<int>.generate(n, (i) => i);
  // Fisher-Yates shuffle
  for (int i = n - 1; i > 0; i--) {
    final j = random.nextInt(i + 1);
    final temp = list[i];
    list[i] = list[j];
    list[j] = temp;
  }
  return list;
}
