import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet/application/create_wallet/seed_phrase/seed_phrase_bloc.dart';
import 'package:wallet/di/locator.dart';
import 'package:wallet/gen/assets.gen.dart';
import 'package:wallet/presentation/core/constants/colors.dart';
import 'package:wallet/presentation/core/constants/typography.dart';
import 'package:wallet/presentation/core/routes/router.gr.dart';
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
          BlocProvider.value(
            value: locator.seedPhraseBloc,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: BlocConsumer<SeedPhraseBloc, SeedPhraseState>(
                builder: (context, state) {
                  return FLTMonocoloredPrimaryButton(
                    onPressed: () {
                      BlocProvider.of<SeedPhraseBloc>(
                        context,
                      ).add(const SeedPhraseEvent.generateSeedPhrase());
                    },
                    enabled: state.maybeMap(
                      orElse: () => false,
                      initial: (_) => true,
                    ),
                    size: ButtonSize.large,
                    text: "Create a new wallet",
                    prefixIcon: SvgPicture.asset(Assets.icons.add),
                  );
                },
                listener: (BuildContext context, SeedPhraseState state) {
                  state.whenOrNull(
                    generated: (phrase) {
                      // context.router.pop();
                      context.router.push(
                        SeedPhraseRoute(
                          blocContext: context,
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: FLTMonocoloredSecondaryButton(
              onPressed: () {},
              size: ButtonSize.large,
              text: "Import existing wallet",
              prefixIcon: SvgPicture.asset(Assets.icons.import),
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
