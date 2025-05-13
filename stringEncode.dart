String encode(String input) {
  final output = StringBuffer();
  for (final codePoint in input.runes) {
    output.writeCharCode(codePoint + 1);
  }
  return output.toString();
}

extension on String {
  String get encoded {
    final output = StringBuffer();
    for (final codePoint in runes) {
      output.writeCharCode(codePoint + 1);
    }
    return output.toString();
  }

  String get decoded {
    final output = StringBuffer();
    for (final codePoint in runes) {
      output.writeCharCode(codePoint - 1);
}
return output.toString();
}
}

void main(List<String> args) {
  final original = 'abc';
  final secret = encode(original);
  print(secret);

  final extensionSecret = 'abc'.encoded;
  print(extensionSecret);
}
