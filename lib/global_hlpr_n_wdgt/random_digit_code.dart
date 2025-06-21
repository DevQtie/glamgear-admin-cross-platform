import 'dart:math';

class RandomDigitCode {
  String? generateFourRandomDigitCode() {
    // it strictly generates 4-digit random code only
    String? codes;
    Set<int> setOfInts = <int>{};
    var scopedCode = 1000 +
        Random().nextInt(
            9000); // >= 1000 and < 9000; it guaranteed that you'll get four-digit code
    setOfInts.add(scopedCode);

    for (var code in setOfInts) {
      codes = code.toString();
    }
    return codes;
  }

  String? generateSixRandomDigitCode() {
    // it strictly generates 6-digit random code only
    String? codes;
    Set<int> setOfInts = <int>{};
    var scopedCode = 100000 +
        Random().nextInt(
            900000); // >= 100 000 and < 900 000; it guaranteed that you'll get six-digit code
    setOfInts.add(scopedCode);

    for (var code in setOfInts) {
      codes = code.toString();
    }
    return codes;
  }
}
