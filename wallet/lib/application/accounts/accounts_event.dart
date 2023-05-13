part of 'accounts_bloc.dart';

@freezed
class AccountsEvent with _$AccountsEvent {
  const factory AccountsEvent.loadLocalAccounts() = _LoadLocalAccounts;
  const factory AccountsEvent.addAccount(Account account) = _AddAccount;
  const factory AccountsEvent.selectAccount(String address) = _SelectAccount;
  const factory AccountsEvent.removeAllAccounts() = _RemoveAllAccounts;
  const factory AccountsEvent.removeJustCreatedFlag() = _RemoveJustCreatedFlag;
  const factory AccountsEvent.updateAccount(Account updatedAccount) =
      _UpdateAccount;
  const factory AccountsEvent.deleteAccount(String address) = _DeleteAccount;
}
