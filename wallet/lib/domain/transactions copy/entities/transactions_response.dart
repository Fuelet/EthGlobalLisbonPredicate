import 'package:wallet/domain/transactions%20copy/entities/page_info.dart';
import 'package:wallet/domain/transactions%20copy/entities/transaction.dart';

class FuelTransactionsResponse {
  final PageInfo pageInfo;
  final List<FuelTransaction> transactions;

  const FuelTransactionsResponse({
    required this.pageInfo,
    required this.transactions,
  });
}
