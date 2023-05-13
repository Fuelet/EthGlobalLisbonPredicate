import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet/application/accounts/accounts_bloc.dart';
import 'package:wallet/application/balances/balances_bloc/balances_bloc.dart';
import 'package:wallet/gen/assets.gen.dart';
import 'package:wallet/presentation/core/constants/colors.dart';
import 'package:wallet/presentation/core/routes/router.gr.dart';
import 'package:wallet/presentation/core/widgets/buttons/button_size.dart';
import 'package:wallet/presentation/core/widgets/buttons/primary_button.dart';
import 'package:wallet/presentation/core/widgets/buttons/secondary_button.dart';

class TransactionActions extends StatelessWidget {
  final String? assetId;
  final double? coinTotalAmount;

  const TransactionActions({
    super.key,
    this.assetId,
    this.coinTotalAmount,
  });

  void _handleAirdrop(BuildContext context) {
    final currentAddress =
        context.read<AccountsBloc>().state.selectedAccountAddress;

    context.router.push(
      AirdropRoute(address: currentAddress!),
    );
  }

  Future<void> _handleScan(BuildContext context) async {
    final value = await context.router.push<String?>(
      ScanQrRoute(isForAddress: true),
    );

    if (value == null) {
      return;
    }

    try {
      Map<String, dynamic> data = jsonDecode(value);

      final double amount = data["amount"];
      final String senderAddress = data["sender_address"];
      final String secret = data["secret"];

      //TODO : get and pass data to [ReceiveRoute]

      context.router.push(
        ReceiveRoute(amount: amount, senderAddress: senderAddress, secret: secret),
      );
    } catch (e) {
      print(e);
    }
  }

  void _handleSendByQR(BuildContext context) {
    if (context.read<BalancesBloc>().state.balances.isNotEmpty) {
      context.router.push(
        SendCoinRoute(
            tokenBalance: context.read<BalancesBloc>().state.balances.first,
            account: context.read<AccountsBloc>().state.accounts.first),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: FLTMonocoloredPrimaryButton(
            size: ButtonSize.xsmall,
            text: "Send by QR",
            prefixIcon: SvgPicture.asset(
              Assets.icons.arrows.arrowUp,
              color: FLTColors.charlestonGreen2F,
            ),
            onPressed: () {
              _handleSendByQR(context);
            },
          ),
        ),
        const SizedBox(width: 9),
        Expanded(
          child: FLTMonocoloredSecondaryButton(
            size: ButtonSize.xsmall,
            onPressed: () => _handleScan(context),
            text: "Scan QR",
            prefixIcon: SvgPicture.asset(Assets.icons.scan),
          ),
        ),
        const SizedBox(width: 9),
        Expanded(
          child: FLTMonocoloredSecondaryButton(
            size: ButtonSize.xsmall,
            onPressed: () => _handleAirdrop(context),
            text: "Airdrop",
            prefixIcon: SvgPicture.asset(
              Assets.icons.plus,
              color: FLTColors.grey9D,
            ),
          ),
        ),
      ],
    );
  }
}
