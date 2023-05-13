part of 'account_select_bloc.dart';

@freezed
class AccountSelectEvent with _$AccountSelectEvent {
  const factory AccountSelectEvent.selectAccount(String accountAddress) =
      _SelectAccount;
}
