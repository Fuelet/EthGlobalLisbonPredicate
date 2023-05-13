import 'package:equatable/equatable.dart';

class TokenBalance with EquatableMixin {
  final double amount;
  final int fractionalAmount;
  final int decimal;
  final String asset;
  final String symbol;
  final String name;
  final String? coinId;

  const TokenBalance({
    required this.amount,
    required this.fractionalAmount,
    required this.decimal,
    required this.asset,
    required this.symbol,
    required this.name,
    this.coinId,
  });

  @override
  String toString() =>
      "amount: $amount, asset: $asset, symbol: $symbol, name: $name, decimal: $decimal";

  @override
  List<Object?> get props => [
        amount,
        fractionalAmount,
        decimal,
        asset,
        symbol,
        name,
        coinId,
      ];
}
