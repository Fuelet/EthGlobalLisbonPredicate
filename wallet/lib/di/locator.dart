import 'package:wallet/application/accounts/account_select/account_select_bloc.dart';
import 'package:wallet/application/accounts/accounts_bloc.dart';
import 'package:wallet/application/balances/balances_bloc/balances_bloc.dart';
import 'package:wallet/application/balances/balances_fetch_bloc/balances_fetch_bloc.dart';
import 'package:wallet/application/create_wallet/create_account/create_account_bloc.dart';
import 'package:wallet/application/create_wallet/seed_phrase/seed_phrase_bloc.dart';
import 'package:wallet/application/receive/bloc/receive_bloc.dart';
import 'package:get_it/get_it.dart';

final locator = Locator(GetIt.instance);

class Locator {
  final GetIt _getIt;

  const Locator(this._getIt);

  AccountsBloc get accountsBloc => _getIt<AccountsBloc>();

  SeedPhraseBloc get seedPhraseBloc => _getIt<SeedPhraseBloc>();

  CreateAccountBloc get createAccountBloc => _getIt<CreateAccountBloc>();

  AccountSelectBloc get accountSelectBloc => _getIt<AccountSelectBloc>();

  ReceiveBloc get receiveBloc => _getIt<ReceiveBloc>();

  BalancesFetchBloc get balancesFetchBloc => _getIt<BalancesFetchBloc>();

  BalancesBloc get balancesBloc => _getIt<BalancesBloc>();
}
