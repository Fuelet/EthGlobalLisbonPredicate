import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet/core/fuel_wallet_address_convertor.dart';
import 'package:wallet/infrastructure/accounts/selected_account_credentials.dart';
import 'package:wallet/infrastructure/accounts/selected_account_manager.dart';
import 'package:injectable/injectable.dart';

part 'account_select_event.dart';
part 'account_select_state.dart';
part 'account_select_bloc.freezed.dart';

@injectable
class AccountSelectBloc extends Bloc<AccountSelectEvent, AccountSelectState> {
  final SelectedAccountManager _selectedAccountManager;
  final SelectedAccountCredentials _selectedAccountCredentials;
  final FuelWalletAddressConvertor _addressConvertor;

  AccountSelectBloc(
    this._selectedAccountManager,
    this._selectedAccountCredentials,
    this._addressConvertor,
  ) : super(const AccountSelectState.initial()) {
    on<_SelectAccount>(_onSelectAccount);
  }

  Future<void> _onSelectAccount(
    _SelectAccount event,
    Emitter<AccountSelectState> emit,
  ) async {
    emit(const AccountSelectState.inProcess());

    await _selectedAccountManager.setSelectedAccountAddress(
      event.accountAddress,
    );
    await _selectedAccountCredentials.setCredentialsByAddress(
        address: event.accountAddress);

    emit(AccountSelectState.accountSelected(event.accountAddress));
  }
}
