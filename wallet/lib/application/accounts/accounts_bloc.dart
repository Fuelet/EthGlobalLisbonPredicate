import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet/domain/account/entities/account.dart';
import 'package:wallet/domain/account/entities/i_accounts_local_repository.dart';
import 'package:wallet/infrastructure/accounts/selected_account_manager.dart';
import 'package:injectable/injectable.dart';

part 'accounts_event.dart';
part 'accounts_state.dart';
part 'accounts_bloc.freezed.dart';

@injectable
class AccountsBloc extends Bloc<AccountsEvent, AccountsState> {
  final IAccountsLocalRepository accountsRepository;
  final SelectedAccountManager _selectedAccountManager;

  AccountsBloc(
    this.accountsRepository,
    this._selectedAccountManager,
  ) : super(AccountsState.initial()) {
    on<_AddAccount>(_onAddAccount);
    on<_LoadLocalAccounts>(_onLoadLocalAccounts);
    on<_SelectAccount>(_onSelectAccount);
    on<_RemoveAllAccounts>(_onRemoveAllAccounts);
    on<_UpdateAccount>(_onUpdateAccount);
    on<_DeleteAccount>(_onDeleteAccount);
    on<_RemoveJustCreatedFlag>(_onRemoveJustCreatedFlag);
  }

  Future<void> _onAddAccount(
    _AddAccount event,
    Emitter<AccountsState> emit,
  ) async {
    final updatedAccounts = [...state.accounts, event.account];

    await accountsRepository.saveAccounts(updatedAccounts);
    emit(
      state.copyWith(
        accounts: updatedAccounts,
        justAddedAccount: true,
      ),
    );

    add(AccountsEvent.selectAccount(event.account.address));
  }

  Future<void> _onLoadLocalAccounts(
    _LoadLocalAccounts event,
    Emitter<AccountsState> emit,
  ) async {
    final accounts = await accountsRepository.loadAccounts();
    final selectedAccountAddress = _selectedAccountManager.selectedAddress;

    assert(accounts.isNotEmpty && selectedAccountAddress != null ||
        (accounts.isEmpty && selectedAccountAddress == null));

    emit(
      state.copyWith(
        accounts: accounts
          ..sort(
            (a, b) => a.createdAt.compareTo(b.createdAt),
          ),
        selectedAccountAddress:
            accounts.isEmpty ? null : selectedAccountAddress,
        inited: true,
      ),
    );
  }

  void _onSelectAccount(
    _SelectAccount event,
    Emitter<AccountsState> emit,
  ) {
    emit(
      state.copyWith(
        selectedAccountAddress: event.address,
      ),
    );
  }

  Future<void> _onRemoveAllAccounts(
    _RemoveAllAccounts event,
    Emitter<AccountsState> emit,
  ) async {
    await accountsRepository.removeAllAccounts();

    emit(AccountsState.initial(isInited: true));
  }

  Future<void> _onUpdateAccount(
    _UpdateAccount event,
    Emitter<AccountsState> emit,
  ) async {
    await accountsRepository.updateAccount(event.updatedAccount);

    emit(state.copyWith(
        accounts: state.accounts
            .map((account) => account.address != event.updatedAccount.address
                ? account
                : event.updatedAccount)
            .toList()));
  }

  Future<void> _onDeleteAccount(
    _DeleteAccount event,
    Emitter<AccountsState> emit,
  ) async {
    final accounts = state.accounts;
    if (accounts.length == 1) {
      // last account
      await _selectedAccountManager.resetSelectedAddress();

      emit(AccountsState.initial(isInited: true));
    } else {
      // just remove from state and select another one

      final nextSelectedAccountAddress = accounts
          .firstWhere((element) => element.address != event.address)
          .address;

      await _selectedAccountManager
          .setSelectedAccountAddress(nextSelectedAccountAddress);

      emit(
        state.copyWith(
          accounts: accounts
              .where((element) => element.address != event.address)
              .toList(),
          selectedAccountAddress: nextSelectedAccountAddress,
        ),
      );
    }
  }

  Future<void> _onRemoveJustCreatedFlag(
    _RemoveJustCreatedFlag event,
    Emitter<AccountsState> emit,
  ) async {
    emit(state.copyWith(justAddedAccount: false));
  }
}
