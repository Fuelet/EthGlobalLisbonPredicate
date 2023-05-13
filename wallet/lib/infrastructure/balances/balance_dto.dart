import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet/domain/balances/entities/balance.dart';

part 'balance_dto.g.dart';

@JsonSerializable(createToJson: false)
class TokenBalanceDto {
  final String amount;
  final String assetId;

  const TokenBalanceDto({
    required this.amount,
    required this.assetId,
  });

  TokenBalance toDomain({
    required String name,
    required String symbol,
    required int decimal,
    String? coinId,
  }) {
    final amountInt = int.parse(amount);

    decimal = pow(10, decimal) as int;
    return TokenBalance(
      amount: amountInt / decimal,
      fractionalAmount: amountInt,
      asset: assetId,
      symbol: symbol,
      name: name,
      decimal: decimal,
      coinId: coinId,
    );
  }

  factory TokenBalanceDto.fromJson(Map<String, dynamic> json) =>
      _$TokenBalanceDtoFromJson(json);
}
