part of 'accounts_bloc.dart';

class AccountsState with EquatableMixin {
  final List<Account> accounts;
  final String? selectedAccountAddress;
  final bool inited;

  const AccountsState({
    required this.accounts,
    required this.selectedAccountAddress,
    required this.inited,
  });

  factory AccountsState.initial({bool isInited = false}) => AccountsState(
        accounts: [],
        selectedAccountAddress: null,
        inited: isInited,
      );

  AccountsState copyWith({
    List<Account>? accounts,
    String? selectedAccountAddress,
    bool? inited,
    bool? justAddedAccount,
  }) =>
      AccountsState(
        accounts: accounts ?? this.accounts,
        selectedAccountAddress:
            selectedAccountAddress ?? this.selectedAccountAddress,
        inited: inited ?? this.inited,
      );

  Account? get selectedAccount => selectedAccountAddress == null
      ? null
      : accounts
          .firstWhere((element) => element.address == selectedAccountAddress);

  Account getAccountByAddress(String address) {
    return accounts.firstWhere((element) => element.address == address);
  }

  @override
  List<Object?> get props => [
        accounts,
        selectedAccountAddress,
        inited,
      ];
}
