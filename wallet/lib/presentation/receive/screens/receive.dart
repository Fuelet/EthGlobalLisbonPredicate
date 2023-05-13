import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet/application/receive/bloc/receive_bloc.dart';
import 'package:wallet/di/locator.dart';
import 'package:wallet/gen/assets.gen.dart';
import 'package:wallet/presentation/core/constants/colors.dart';
import 'package:wallet/presentation/core/constants/typography.dart';
import 'package:wallet/presentation/core/widgets/buttons/primary_button.dart';
import 'package:wallet/presentation/core/widgets/icon_button.dart';
import 'package:wallet/presentation/core/widgets/scaffold.dart';
import 'package:wallet/presentation/receive/receive_state_x.dart';
import 'package:wallet/presentation/receive/widgets/processing_transaction_details.dart';
import 'package:wallet/presentation/receive/widgets/receiving_coin_icon.dart';
import 'package:wallet/presentation/receive/widgets/view_transaction_text_button.dart';

class ReceiveScreen extends StatelessWidget {
  const ReceiveScreen({super.key});

  void _handleClose(BuildContext context) {
    context.router.pop();
  }

  @override
  Widget build(BuildContext context) {
    const senderAddress = "hardcodedaddress";
    const amount = 0.5;
    const senderPrivate = 'senderPrivate';

    return BlocProvider(
      create: (context) => locator.receiveBloc,
      child: BlocBuilder<ReceiveBloc, ReceiveState>(
        builder: (context, state) {
          return FLTScaffold(
            appBar: AppBar(
              backgroundColor: FLTColors.darkBackground,
              elevation: 0,
              leading: FLTIconButton(
                onTap: () => _handleClose(context),
                icon: Center(
                  child: SvgPicture.asset(
                    Assets.icons.close,
                  ),
                ),
              ),
              title: Text(
                state.map(
                  initial: (_) => 'Receive',
                  inProcess: (_) => 'Receiving...',
                  successfullyReceived: (_) => 'Successfull',
                  failed: (_) => 'Failed',
                ),
              ),
            ),
            body: Column(
              children: [
                const SizedBox(),
                const SizedBox(
                  width: double.infinity,
                  height: 16,
                ),
                ReceivingCoinIcon(
                  transactionStatus: state.toTransactionStatus(),
                ),
                const SizedBox(height: 16),
                Text(
                  '0.5 ETH',
                  style: FLTTypography.header2SemiBold.copyWith(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 16),

                //TODO: account tile
                Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.green,
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: ProcessingTransactionDetails(
                    receiverAddress: senderAddress,
                    status: state.toTransactionStatus(),
                    coinAmount: 0.5,
                  ),
                ),
                state.maybeMap(
                  orElse: () => const SizedBox(),
                  successfullyReceived: (value) => ViewTransactionTextButton(
                    transactionUrl: value.transactionUrl,
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: state.maybeMap(
                    orElse: () => FLTMonocoloredPrimaryButton(
                      onPressed: () => _handleClose(context),
                      text: 'Close',
                    ),
                    inProcess: (_) => const SizedBox(),
                    initial: (_) => Expanded(
                      child: FLTMonocoloredPrimaryButton(
                        onPressed: () {
                          context.read<ReceiveBloc>().add(
                                const ReceiveEvent.receive(
                                  private: senderPrivate,
                                  amount: amount,
                                ),
                              );
                        },
                        text: 'Receive',
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
              ],
            ),
          );
        },
      ),
    );
  }
}
