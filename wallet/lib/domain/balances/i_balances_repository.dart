import 'package:wallet/domain/balances/entities/fetched_balance_data.dart';

abstract class IBalancesRepository {
  Future<FetchedBalanceData> getBalances();
}
