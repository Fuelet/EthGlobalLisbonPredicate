import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet/application/accounts/account_select/account_select_bloc.dart';
import 'package:wallet/application/accounts/accounts_bloc.dart';
import 'package:wallet/di/locator.dart';
import 'package:wallet/presentation/core/routes/router.gr.dart';

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
      ],
      child: MaterialApp.router(
        title: 'Fuelet',
        debugShowCheckedModeBanner: false,
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
