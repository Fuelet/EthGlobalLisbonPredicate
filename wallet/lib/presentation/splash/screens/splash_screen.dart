import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet/application/accounts/accounts_bloc.dart';
import 'package:wallet/presentation/core/constants/colors.dart';
import 'package:wallet/presentation/core/routes/router.gr.dart';
import 'package:wallet/presentation/core/widgets/scaffold.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AccountsBloc, AccountsState>(
      listener: (context, state) {
        if (state.accounts.isNotEmpty) {
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
      },
      child: const FLTScaffold(
        body: Center(
          child: SizedBox.square(
            dimension: 50,
            child: CircularProgressIndicator(
              color: FLTColors.blue,
              strokeWidth: 3,
            ),
          ),
        ),
      ),
    );
  }
}
