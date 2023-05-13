part of 'balances_fetch_bloc.dart';

@freezed
class BalancesFetchEvent with _$BalancesFetchEvent {
  const factory BalancesFetchEvent.fetchBalances() = _FetchBalances;
  const factory BalancesFetchEvent.resetState() = _ResetState;
}
