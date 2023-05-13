import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet/domain/balances/entities/fetched_balance_data.dart';
import 'package:wallet/domain/balances/i_balances_repository.dart';
import 'package:wallet/infrastructure/accounts/selected_account_manager.dart';
import 'package:injectable/injectable.dart';

part 'balances_fetch_event.dart';
part 'balances_fetch_state.dart';
part 'balances_fetch_bloc.freezed.dart';

@injectable
class BalancesFetchBloc extends Bloc<BalancesFetchEvent, BalancesFetchState> {
  final IBalancesRepository _balancesRepository;
  final SelectedAccountManager _selectedAccountManager;

  BalancesFetchBloc(this._balancesRepository, this._selectedAccountManager)
      : super(const BalancesFetchState.initial()) {
    on<_FetchBalances>(_onFetchBalances);
    on<_ResetState>(_onResetState);
  }

  Future<void> _onFetchBalances(
    _FetchBalances event,
    Emitter<BalancesFetchState> emit,
  ) async {
    final address = _selectedAccountManager.selectedAddress;
    emit(const BalancesFetchState.inProcess());

    final fetchedBalancesData = await _balancesRepository.getBalances();

    emit(BalancesFetchState.fetched(fetchedBalancesData));
  }

  Future<void> _onResetState(
    _ResetState event,
    Emitter<BalancesFetchState> emit,
  ) async {
    emit(const BalancesFetchState.initial());
  }
}
