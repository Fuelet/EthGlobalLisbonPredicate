import 'package:equatable/equatable.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet/domain/balances/entities/balance.dart';
import 'package:wallet/domain/transactions/entities/page_info.dart';
import 'package:wallet/domain/transactions/entities/token.dart';
import 'package:wallet/infrastructure/accounts/selected_account_manager.dart';

import 'package:injectable/injectable.dart';

part 'balances_event.dart';
part 'balances_state.dart';
part 'balances_bloc.freezed.dart';

@injectable
class BalancesBloc extends Bloc<BalancesEvent, BalancesState> {
  final SelectedAccountManager _selectedAccountManager;

  BalancesBloc(this._selectedAccountManager) : super(BalancesState.initial()) {
    on<_AddFetchedBalances>(_onAddFetchedBalances);
    on<_ResetState>(_onResetState);
  }

  Future<void> _onAddFetchedBalances(
    _AddFetchedBalances event,
    Emitter<BalancesState> emit,
  ) async {
    final address = _selectedAccountManager.selectedAddress;

    emit(
      state.copyWith(
        loadedPageInfo: event.loadedPageInfo,
        balances: event.balances,
        walletAddress: address,
      ),
    );

    event.onSuccess();
  }

  Future<void> _onResetState(
    _ResetState event,
    Emitter<BalancesState> emit,
  ) async {
    emit(BalancesState.initial());
  }
}
