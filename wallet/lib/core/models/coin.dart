import 'package:wallet/domain/balances/entities/balance.dart';

class CoinData {
  final String name;
  final String symbol;
  final String assetId;
  final String? coinId;
  final int decimal;

  const CoinData({
    required this.name,
    required this.symbol,
    required this.assetId,
    required this.coinId,
    required this.decimal,
  });

  TokenBalance toTokenBalance() => TokenBalance(
        amount: .0,
        fractionalAmount: 0,
        decimal: decimal,
        asset: assetId,
        symbol: symbol,
        name: name,
      );
}
