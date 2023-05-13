part of 'balances_bloc.dart';

@freezed
class BalancesEvent with _$BalancesEvent {
  const factory BalancesEvent.addFetchedBalances(
    String address,
    List<TokenBalance> balances,
    PageInfo loadedPageInfo,
    void Function() onSuccess,
  ) = _AddFetchedBalances;

  const factory BalancesEvent.resetState() = _ResetState;
}
