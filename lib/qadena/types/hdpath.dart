class HDPath {
  int purpose;
  int coinType;
  int walletType;
  bool change;
  int addressIdx;

  HDPath({
    int? purpose,
    int? coinType,
    int? walletType,
    bool? change,
    int? addressIdx,
  })  : purpose = purpose ?? 44,
        coinType = coinType ?? 744,
        walletType = walletType ?? 0,
        change = change ?? false,
        addressIdx = addressIdx ?? 0;

  @override
  String toString() {
    final s = <String>[];
    s.add('m/');
    s.add('$purpose');
    s.add("'/");
    s.add('$coinType');
    s.add("'/");
    s.add('$walletType');
    s.add("'/");
    s.add(change ? '1' : '0');
    s.add('/');
    s.add('$addressIdx');
    return s.join('');
  }
}
