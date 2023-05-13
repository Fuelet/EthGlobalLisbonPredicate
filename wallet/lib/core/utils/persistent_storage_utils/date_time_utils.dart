class DateTimeUtils {
  static final BigInt _deduction = BigInt.from(2).pow(62) + BigInt.from(10);

  static DateTime fromTAI64(BigInt siSeconds) {
    // see https://forum.fuel.network/t/how-do-i-convert-a-tai64-timestamp/1853
    final timeStamp = siSeconds - _deduction;

    return DateTime.fromMillisecondsSinceEpoch(timeStamp.toInt() * 1000);
  }
}
