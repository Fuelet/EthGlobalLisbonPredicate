import 'package:flutter/material.dart';
import 'package:wallet/presentation/core/constants/colors.dart';
import 'package:wallet/presentation/core/constants/typography.dart';
import 'package:wallet/presentation/core/widgets/buttons/button_size.dart';
import 'package:wallet/presentation/core/widgets/buttons/secondary_button.dart';

class CoinBalanceWidget extends StatelessWidget {
  final double balance;
  final String currencyShortName;
  final VoidCallback onMaxTap;

  const CoinBalanceWidget({
    super.key,
    required this.balance,
    required this.currencyShortName,
    required this.onMaxTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Balance:',
              style: FLTTypography.body1w500.copyWith(color: FLTColors.grey60),
            ),
            Text(
              '${balance.toStringAsFixed(3)} $currencyShortName',
              style: FLTTypography.body1Normal.copyWith(color: Colors.white),
            ),
          ],
        ),
        const Spacer(),
        FLTMonocoloredSecondaryButton(
          onPressed: onMaxTap,
          hasInfiniteWidth: false,
          size: ButtonSize.small,
          padding: const EdgeInsets.symmetric(horizontal: 27),
          text: "MAX",
        ),
      ],
    );
  }
}
