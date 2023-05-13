part of 'account_select_bloc.dart';

@freezed
class AccountSelectState with _$AccountSelectState {
  const factory AccountSelectState.initial() = _Initial;
  const factory AccountSelectState.inProcess() = _InProcess;
  const factory AccountSelectState.accountSelected(String address) =
      _AccountSelected;
}
