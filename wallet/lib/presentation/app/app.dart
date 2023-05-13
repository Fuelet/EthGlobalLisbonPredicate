import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet/application/accounts/account_select/account_select_bloc.dart';
import 'package:wallet/application/accounts/accounts_bloc.dart';
import 'package:wallet/application/balances/balances_bloc/balances_bloc.dart';
import 'package:wallet/application/balances/balances_fetch_bloc/balances_fetch_bloc.dart';
import 'package:wallet/di/locator.dart';
import 'package:wallet/presentation/core/constants/colors.dart';
import 'package:wallet/presentation/core/routes/router.gr.dart';
import 'package:overlay_support/overlay_support.dart';

class FuelWalletApp extends StatelessWidget {
  FuelWalletApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AccountsBloc>(
          lazy: false,
          create: (_) => locator.accountsBloc
            ..add(
              const AccountsEvent.loadLocalAccounts(),
            ),
        ),
        BlocProvider<AccountSelectBloc>(
          create: (context) => locator.accountSelectBloc,
        ),
        BlocProvider<BalancesFetchBloc>(
          lazy: false,
          create: (_) => locator.balancesFetchBloc,
        ),
        BlocProvider<BalancesBloc>(
          lazy: false,
          create: (_) => locator.balancesBloc,
        ),
      ],
      child: OverlaySupport.global(
        child: OverlaySupportTheme(
          toastTheme: ToastThemeData(
            alignment: Alignment.bottomCenter,
            background: FLTColors.charlestonGreen2F,
            textColor: Colors.white,
          ),
          child: MaterialApp.router(
            title: 'Fuelet',
            debugShowCheckedModeBanner: false,
            routerDelegate: _appRouter.delegate(),
            routeInformationParser: _appRouter.defaultRouteParser(),
          ),
        ),
      ),
    );
  }
}
