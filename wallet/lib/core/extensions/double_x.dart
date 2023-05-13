import 'dart:math';

/// [toStringAsFixed()] method also rounds the number, for example it turns 0.3999999999 into 0.40000000
/// and to do that without rounding our [double] number, we use the method [truncateToDecimalPlaces] below
extension TruncateDoubles on double {
  double truncateToDecimalPlaces(int fractionalDigits) =>
      (this * pow(10, fractionalDigits)).truncate() / pow(10, fractionalDigits);
}
