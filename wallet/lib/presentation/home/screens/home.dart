import 'package:flutter/material.dart';
import 'package:wallet/presentation/core/widgets/scaffold.dart';
import 'package:wallet/presentation/home/widgets/accounts_manager_app_bar.dart';
import 'package:wallet/presentation/home/widgets/currency_balance_tile.dart';
import 'package:wallet/presentation/home/widgets/transaction_actions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FLTScaffold(
      body: SafeArea(
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: AccountsManagerAppBar(),
            ),
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TransactionActions(),
            ),
            SizedBox(height: 32),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CurrencyBalanceTile(
                  // tokenBalance: ,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
