import 'package:flutter/material.dart';
import 'package:wallet/presentation/core/routes/router.gr.dart';

class FuelWallet extends StatelessWidget {
  FuelWallet({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Fuelet',
      debugShowCheckedModeBanner: false,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
