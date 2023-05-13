import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet/gen/assets.gen.dart';
import 'package:wallet/presentation/core/constants/colors.dart';
import 'package:wallet/presentation/core/constants/typography.dart';
import 'package:wallet/presentation/core/widgets/buttons/button_size.dart';
import 'package:wallet/presentation/core/widgets/buttons/primary_button.dart';
import 'package:wallet/presentation/core/widgets/buttons/secondary_button.dart';
import 'package:wallet/presentation/core/widgets/divider.dart';
import 'package:wallet/presentation/core/widgets/scaffold.dart';

class SetupWalletScreen extends StatelessWidget {
  const SetupWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FLTScaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Container(
                width: 258,
                height: 302,
                color: FLTColors.blue,
              ),
            ),
          ),
          const FLTDivider(),
          const SizedBox(height: 26),
          Text(
            "Let's setup your wallet",
            style: FLTTypography.header5SemiBold.copyWith(
              color: FLTColors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "Create a new wallet or import an\nexisting one",
            textAlign: TextAlign.center,
            style: FLTTypography.body1w500.copyWith(
              color: FLTColors.grey6D,
            ),
          ),
          const SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: FLTMonocoloredPrimaryButton(
              onPressed: () {},
              size: ButtonSize.large,
              text: "Create a new wallet",
              prefixIcon: SvgPicture.asset(Assets.icons.add),
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: FLTMonocoloredSecondaryButton(
              onPressed: () {},
              size: ButtonSize.large,
              text: "Track any wallet", // TODO: intl
              prefixIcon: SvgPicture.asset(Assets.icons.import),
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
