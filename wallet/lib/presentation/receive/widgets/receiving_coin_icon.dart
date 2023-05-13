import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet/gen/assets.gen.dart';
import 'package:wallet/presentation/receive/widgets/processing_transaction_status.dart';

class ReceivingCoinIcon extends StatelessWidget {
  final bool withoutIcon;
  final TransactionStatus transactionStatus;

  const ReceivingCoinIcon({
    super.key,
    this.withoutIcon = false,
    required this.transactionStatus,
  });

  @override
  Widget build(BuildContext context) {
    const size = 64.0;

    final cryptoIcon = ClipRRect(
      borderRadius: BorderRadius.circular(size / 2),
      child: SvgPicture.asset(
        Assets.icons.ethereumDark,
        height: size,
        width: size,
      ),
    );

    if (transactionStatus == TransactionStatus.summary) {
      return cryptoIcon;
    }

    final statusWidget = ProcessingTransactionStatus(
      status: transactionStatus,
    );

    if (withoutIcon) {
      return statusWidget;
    }

    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Positioned(
            left: -24,
            child: cryptoIcon,
          ),
          Positioned(
            left: 24,
            child: statusWidget,
          ),
        ],
      ),
    );
  }
}
