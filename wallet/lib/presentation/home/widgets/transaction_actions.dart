import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet/application/accounts/accounts_bloc.dart';
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

  @override
  Widget build(BuildContext context) {
    // final balancesState = context.read<BalancesBloc>().state;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: FLTMonocoloredPrimaryButton(
            onPressed: () {},
            // onPressed: () => DemoModeUtils.checkAndDo(
            //   accounts: context.read<AccountsBloc>().state.accounts,
            //   context: context,
            //   callback: () async {
            //     // ConnectionRequestBottomSheet.show(context);
            //     // return;
            //     if (assetId == null) {
            //       /// From [HomeScreen]
            //       if (balancesState.balances.length == 1) {
            //         context.router.push(
            //           SendCoinRoute(
            //             tokenBalance: balancesState.balances.first,
            //           ),
            //         );
            //       } else {
            //         SelectTokenBottomSheet.show(
            //           context,
            //           onSelectTokenBalance: (tokenBalance) {
            //             context.router.push(
            //               SendCoinRoute(
            //                 tokenBalance: tokenBalance,
            //               ),
            //             );
            //           },
            //         );
            //       }
            //     } else {
            //       /// From [CoinScreen], we already know which token to send, no needs to show [SelectTokenBottomSheet]
            //       context.router.push(
            //         SendCoinRoute(
            //           tokenBalance: context
            //               .read<BalancesBloc>()
            //               .state
            //               .balances
            //               .firstWhere(
            //                 (e) => e.asset == assetId,
            //               ),
            //         ),
            //       );
            //     }
            //   },
            // ),
            size: ButtonSize.xsmall,
            text: "Send by QR",
            prefixIcon: SvgPicture.asset(
              Assets.icons.arrows.arrowUp,
              color: FLTColors.charlestonGreen2F,
            ),
          ),
        ),
        const SizedBox(width: 9),
        Expanded(
          child: FLTMonocoloredSecondaryButton(
            size: ButtonSize.xsmall,
            onPressed: () {
              // DemoModeUtils.checkAndDo(
              //   accounts: context.read<AccountsBloc>().state.accounts,
              //   context: context,
              //   callback: () {
              //     if (assetId == null) {
              //       /// From [HomeScreen]
              //       SelectTokenBottomSheet.show(
              //         context,
              //         useAllTokens: true,
              //         onSelectTokenBalance: (tokenBalance) {
              //           ReceiveBottomSheet.show(context, tokenBalance);
              //         },
              //       );
              //     } else {
              //       /// From [CoinScreen]
              //       ReceiveBottomSheet.show(
              //         context,
              //         balancesState.balances
              //             .firstWhere((e) => e.asset == assetId),
              //       );
              //     }
              //   },
              // );
            },
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
