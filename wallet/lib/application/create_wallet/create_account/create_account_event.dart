part of 'create_account_bloc.dart';

@freezed
class CreateAccountEvent with _$CreateAccountEvent {
  const factory CreateAccountEvent.createAccount(
    String mnemonic, {
    required bool creatingAfterSettingPasscode,
    required List<Account> existingAccounts,
  }) = _CreateAccount;
}
