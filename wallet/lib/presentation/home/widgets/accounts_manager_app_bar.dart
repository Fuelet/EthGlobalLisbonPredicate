import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet/application/accounts/accounts_bloc.dart';
import 'package:wallet/core/managers/clipboard.dart';
import 'package:wallet/gen/assets.gen.dart';
import 'package:wallet/presentation/core/constants/colors.dart';
import 'package:wallet/presentation/core/constants/typography.dart';
import 'package:wallet/presentation/core/managers/toast_manager.dart';
import 'package:wallet/presentation/core/widgets/icon_button.dart';

class AccountsManagerAppBar extends StatelessWidget {
  const AccountsManagerAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountsBloc, AccountsState>(
      builder: (context, state) {
        final account = state.selectedAccount;

        return SizedBox(
          height: 56,
          child: Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Row(
                    children: [
                      Text(
                        "ETH.Lisbon",
                        style: FLTTypography.body1Normal.copyWith(
                          color: FLTColors.grey6D,
                        ),
                      ),
                      const SizedBox(width: 4),
                      SvgPicture.asset(Assets.icons.arrows.triangleArrowDown),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              FLTIconButton(
                icon: SvgPicture.asset(Assets.icons.copy),
                onTap: () {
                  ClipboardManager.copyToBuffer(
                    account!.address,
                    onSuccess: () => ToastManager.showToast('Copied!'),
                  );
                },
              ),
              const SizedBox(width: 16),
              FLTIconButton(
                onTap: () {},
                icon: SvgPicture.asset(Assets.icons.more),
              ),
            ],
          ),
        );
      },
    );
  }
}
