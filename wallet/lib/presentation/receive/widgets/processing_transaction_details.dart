import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet/core/managers/clipboard.dart';
import 'package:wallet/core/utils/wallet_address_formatter.dart';
import 'package:wallet/gen/assets.gen.dart';
import 'package:wallet/presentation/core/constants/typography.dart';
import 'package:wallet/presentation/core/managers/toast_manager.dart';
import 'package:wallet/presentation/core/widgets/icon_button.dart';
import 'package:wallet/presentation/receive/widgets/processing_transaction_status.dart';
import 'package:wallet/presentation/receive/widgets/processing_transactions_details_row.dart';

class ProcessingTransactionDetails extends StatelessWidget {
  final String receiverAddress;
  final double coinAmount;
  final TransactionStatus status;

  const ProcessingTransactionDetails({
    super.key,
    required this.receiverAddress,
    required this.status,
    required this.coinAmount,
  });

  Future<void> _handleCopy(BuildContext context, String text) {
    return ClipboardManager.copyToBuffer(
      text,
      onSuccess: () => ToastManager.showToast('Copied!'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // TODO: hardcoded data below
      children: [
        ProcessingTransactionDetailsRow(
          title: 'From',
          trailing: GestureDetector(
            onTap: () => _handleCopy(context, receiverAddress),
            child: Row(
              children: [
                Text(
                  WalletAddressFormatter.titleFromAddress(
                    receiverAddress,
                  ),
                  style: FLTTypography.body2Medium.copyWith(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 4),
                FLTIconButton(
                  onTap: () => _handleCopy(context, receiverAddress),
                  icon: SvgPicture.asset(
                    Assets.icons.copy,
                  ),
                )
              ],
            ),
          ),
        ),
        ProcessingTransactionDetailsRow(
          title: 'Status',
          trailingText: status.displayName(context),
          trailingTextColor: status.color,
        ),
        ProcessingTransactionDetailsRow(
          title: 'Amount',
          trailingText: '$coinAmount ETH',
          trailingTextColor: status.color,
        ),
      ],
    );
  }
}
