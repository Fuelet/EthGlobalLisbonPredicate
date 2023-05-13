import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet/application/accounts/accounts_bloc.dart';
import 'package:wallet/presentation/core/constants/colors.dart';
import 'package:wallet/presentation/core/routes/router.gr.dart';
import 'package:wallet/presentation/core/widgets/scaffold.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 1500));

      final accounts = context.read<AccountsBloc>().state.accounts;

      if (accounts.isNotEmpty) {
        context.router.pushAndPopUntil(
          const HomeRoute(),
          predicate: (_) => false,
        );
      } else {
        context.router.pushAndPopUntil(
          const SetupWalletRoute(),
          predicate: (_) => false,
        );
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const FLTScaffold(
      body: Center(
        child: SizedBox.square(
          dimension: 50,
          child: CircularProgressIndicator(
            color: FLTColors.blue,
            strokeWidth: 3,
          ),
        ),
      ),
    );
  }
}
