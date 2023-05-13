import 'package:wallet/core/extensions/double_x.dart';
import 'package:wallet/domain/balances/entities/balance.dart';

extension TokenBalanceX on TokenBalance {
  String get displayAmount =>
      amount == 0 ? '0' : amount.truncateToDecimalPlaces(6).toString();
}
