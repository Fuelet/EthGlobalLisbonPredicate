import 'package:wallet/domain/balances/entities/balance.dart';
import 'package:wallet/domain/transactions/entities/page_info.dart';

class FetchedBalanceData {
  final String walletAddress;
  final List<TokenBalance> balances;
  final PageInfo pageInfo;

  const FetchedBalanceData({
    required this.balances,
    required this.walletAddress,
    required this.pageInfo,
  });
}
