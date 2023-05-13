import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet/application/accounts/account_select/account_select_bloc.dart';
import 'package:wallet/application/accounts/accounts_bloc.dart';
import 'package:wallet/application/create_wallet/create_account/create_account_bloc.dart';
import 'package:wallet/application/create_wallet/seed_phrase/seed_phrase_bloc.dart';
import 'package:wallet/core/managers/clipboard.dart';
import 'package:wallet/di/locator.dart';
import 'package:wallet/presentation/core/constants/colors.dart';
import 'package:wallet/presentation/core/constants/typography.dart';
import 'package:wallet/presentation/core/managers/toast_manager.dart';
import 'package:wallet/presentation/core/routes/router.gr.dart';
import 'package:wallet/presentation/core/widgets/app_bar.dart';
import 'package:wallet/presentation/core/widgets/buttons/button_size.dart';
import 'package:wallet/presentation/core/widgets/buttons/primary_button.dart';
import 'package:wallet/presentation/core/widgets/buttons/secondary_button.dart';
import 'package:wallet/presentation/core/widgets/scaffold.dart';
import 'package:wallet/presentation/setup_wallet/widgets/seed_phrase.dart';

class SeedPhraseScreen extends StatelessWidget {
  final BuildContext blocContext;

  const SeedPhraseScreen({
    super.key,
    required this.blocContext,
  });

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        blocContext.read<SeedPhraseBloc>().add(
              const SeedPhraseEvent.resetState(),
            );
        return true;
      },
      child: BlocProvider(
        create: (context) => locator.createAccountBloc,
        child: FLTScaffold(
          backgroundColor: FLTColors.darkBackground,
          appBar: const FLTAppBar(
            title: Text("Secret Recovery Phrase"),
            centerTitle: true,
          ),
          body: BlocBuilder<SeedPhraseBloc, SeedPhraseState>(
            bloc: BlocProvider.of<SeedPhraseBloc>(blocContext),
            builder: (context, state) {
              return MultiBlocListener(
                listeners: [
                  BlocListener<CreateAccountBloc, CreateAccountState>(
                    listener: (context, state) {
                      state.whenOrNull(
                        created: (account) async {
                          BlocProvider.of<AccountsBloc>(context).add(
                            AccountsEvent.addAccount(account),
                          );
                        },
                      );
                    },
                  ),
                  BlocListener<AccountsBloc, AccountsState>(
                    listener: (context, state) {
                      // Account added, select the last one
                      context.read<AccountSelectBloc>().add(
                            AccountSelectEvent.selectAccount(
                              state.accounts.last.address,
                            ),
                          );
                    },
                  ),
                  BlocListener<AccountSelectBloc, AccountSelectState>(
                    listener: (context, state) {
                      state.mapOrNull(
                        accountSelected: (_) {
                          context.router.pushAndPopUntil(
                            const HomeRoute(),
                            predicate: (_) => false,
                          );
                        },
                      );
                    },
                  ),
                ],
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      const SizedBox(height: 8),
                      Text(
                        "This 12-word phrase allows you to recover your wallet. Never disclose your backup phrase",
                        style: FLTTypography.body1w500
                            .copyWith(color: FLTColors.grey6D),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 32),
                      state.maybeMap(
                        generated: (state) => SeedPhraseWidget(
                          phrase: state.phrase,
                        ),
                        orElse: () => const SizedBox(),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: 84,
                        child: FLTMonocoloredSecondaryButton(
                          onPressed: () {
                            final phrase = (state as Generated).phrase;

                            ClipboardManager.copyToBuffer(
                              phrase.join(' '),
                              onSuccess: () => ToastManager.showToast(
                                'Copied!',
                              ),
                            );
                          },
                          hasInfiniteWidth: false,
                          size: ButtonSize.small,
                          text: "Copy",
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Builder(
            builder: (context) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: FLTMonocoloredPrimaryButton(
                  onPressed: () async {
                    final mnemonic =
                        (blocContext.read<SeedPhraseBloc>().state as Generated)
                            .phrase;

                    final createAccountBloc = context.read<CreateAccountBloc>();

                    // Account is not still created, lets create
                    createAccountBloc.add(
                      CreateAccountEvent.createAccount(
                        mnemonic.join(' '),
                        creatingAfterSettingPasscode: false,
                        existingAccounts:
                            context.read<AccountsBloc>().state.accounts,
                      ),
                    );
                  },
                  size: ButtonSize.large,
                  text: "Continue",
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
