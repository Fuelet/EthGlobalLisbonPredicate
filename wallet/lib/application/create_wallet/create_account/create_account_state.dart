part of 'create_account_bloc.dart';

@freezed
class CreateAccountState with _$CreateAccountState {
  const factory CreateAccountState.initial() = _Initial;
  const factory CreateAccountState.created(Account account) = _Created;
  const factory CreateAccountState.creationFailed(WalletCreateFailure failure) =
      _CreationFailed;
}
