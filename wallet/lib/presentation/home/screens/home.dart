import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet/application/accounts/accounts_bloc.dart';
import 'package:wallet/application/balances/balances_bloc/balances_bloc.dart';
import 'package:wallet/application/balances/balances_fetch_bloc/balances_fetch_bloc.dart';
import 'package:wallet/presentation/core/constants/colors.dart';
import 'package:wallet/presentation/core/widgets/scaffold.dart';
import 'package:wallet/presentation/home/widgets/accounts_manager_app_bar.dart';
import 'package:wallet/presentation/home/widgets/currency_balance_tile.dart';
import 'package:wallet/presentation/home/widgets/transaction_actions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();

    if (context.read<AccountsBloc>().state.selectedAccount != null) {
      context
          .read<BalancesFetchBloc>()
          .add(const BalancesFetchEvent.fetchBalances());
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<BalancesFetchBloc, BalancesFetchState>(
          listener: (context, state) {
            state.maybeMap(
              orElse: () {},
              fetched: (fetchedState) {
                context.read<BalancesBloc>().add(
                      BalancesEvent.addFetchedBalances(
                        fetchedState.balanceData.walletAddress,
                        fetchedState.balanceData.balances,
                        fetchedState.balanceData.pageInfo,
                        () {},
                      ),
                    );
              },
            );
          },
        ),
      ],
      child: FLTScaffold(
        body: SafeArea(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: AccountsManagerAppBar(),
              ),
              const SizedBox(height: 25),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: TransactionActions(),
              ),
              const SizedBox(height: 32),
              BlocBuilder<BalancesBloc, BalancesState>(
                builder: (context, balancesState) {
                  return BlocBuilder<BalancesFetchBloc, BalancesFetchState>(
                    builder: (context, state) {
                      return state.maybeMap(
                        orElse: () => const Expanded(
                          child: Center(
                            child: CircularProgressIndicator(
                              color: FLTColors.blue,
                              strokeWidth: 3,
                            ),
                          ),
                        ),
                        fetched: (fetchedBances) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: CurrencyBalanceTile(
                              tokenBalance: balancesState.balances.first,
                            ),
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
