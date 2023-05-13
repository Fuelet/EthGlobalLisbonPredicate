part of 'balances_fetch_bloc.dart';

@freezed
class BalancesFetchState with _$BalancesFetchState {
  const factory BalancesFetchState.initial() = Initial;
  const factory BalancesFetchState.inProcess() = _InProcess;
  const factory BalancesFetchState.fetched(FetchedBalanceData balanceData) =
      Fetched;
}
