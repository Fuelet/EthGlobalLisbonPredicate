import 'package:wallet/core/fuel_wallet_address_convertor.dart';
import 'package:wallet/domain/transactions/entities/token.dart';
import 'package:wallet/domain/transactions/entities/transactions_response.dart';
import 'package:wallet/infrastructure/transactions/models/page_info_dto.dart';
import 'package:wallet/infrastructure/transactions/models/transaction_dto.dart';

class TransactionsResponseDto {
  final PageInfoDto pageInfo;
  final List<TransactionDto> transactions;

  const TransactionsResponseDto({
    required this.pageInfo,
    required this.transactions,
  });

  // We need account address for transaction type detection and balance change calculation
  Future<FuelTransactionsResponse> toEntity(
    String b256Address, {
    required WalletAddressConvertor b256ToBech32Convertor,
    required List<TokenData> tokensData,
  }) async =>
      FuelTransactionsResponse(
        pageInfo: pageInfo.toEntity(),
        transactions: (await Future.wait(
          transactions.map(
            (e) async => await e.toEntity(
              b256Address,
              b256ToBech32Convertor: b256ToBech32Convertor,
              tokenData: tokensData.firstWhere(
                (t) => t.assetId == e.inputs.first.assetId,
              ),
            ),
          ),
        ))
            .toList(),
      );

  factory TransactionsResponseDto.fromJson(Map json) {
    final List<TransactionDto> transactions = [];

    json['nodes'] as List;
    for (var nodeJson in json['nodes']) {
      try {
        // Some instances can have invalid model
        transactions.add(TransactionDto.fromJson(nodeJson));
      } catch (_) {}
    }

    return TransactionsResponseDto(
      pageInfo: PageInfoDto.fromJson(json["pageInfo"]),
      transactions: transactions,
    );
  }
}
