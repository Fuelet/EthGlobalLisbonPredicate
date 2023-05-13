import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet/domain/balances/entities/balance.dart';
import 'package:wallet/gen/assets.gen.dart';
import 'package:wallet/presentation/core/constants/typography.dart';
import 'package:wallet/presentation/core/extensions/balance_x.dart';
import 'package:wallet/presentation/core/widgets/list_tile.dart';

class CurrencyBalanceTile extends StatelessWidget {
  final TokenBalance tokenBalance;
  final VoidCallback? onTap;

  const CurrencyBalanceTile({
    super.key,
    required this.tokenBalance,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return FLTListTile(
      onTap: onTap,
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: SvgPicture.asset(
          Assets.icons.ethereumDark,
          width: 40,
          height: 40,
        ),
      ),
      title: Text(
        "Ethereum",
        style: FLTTypography.body1SemiBold.copyWith(
          color: const Color(0xfff5f5f5),
        ),
      ),
      subtitle: Text(
        '${tokenBalance.displayAmount} ${tokenBalance.symbol}',
        style: FLTTypography.body3SemiBold.copyWith(
          color: const Color(0xff6d6d6d),
        ),
      ),
      // detailTitle: BlocBuilder<CoinsPricesBloc, CoinsPricesState>(
      //   builder: (context, state) {
      //     return Text(
      //       totalInFiat == null
      //           ? "-"
      //           : '$fiatSymbol${NumberFormatter.formatCurrency(totalInFiat)}',
      //       style: NFTTypography.body1SemiBold.copyWith(color: Colors.white),
      //     );
      //   },
      // ),
      // detailSubtitle: totalInFiat != null
      //     ? ChangedValueText(
      //         change: diff,
      //         prefixWithDollar: true,
      //       )
      //     : Text(
      //         "-",
      //         style: NFTTypography.body3Medium.copyWith(
      //           color: FLTColors.grey6D,
      //         ),
      //       ),
    );
  }
}
