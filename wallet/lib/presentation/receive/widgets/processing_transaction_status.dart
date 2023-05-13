import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet/gen/assets.gen.dart';
import 'package:wallet/presentation/core/constants/colors.dart';
import 'package:wallet/presentation/core/widgets/animated_rotating_icon.dart';

enum TransactionStatus {
  summary,
  inProgress,
  failed,
  succeed;

  Color get color {
    switch (this) {
      case TransactionStatus.failed:
        return FLTColors.malina;
      case TransactionStatus.succeed:
        return FLTColors.green;
      default:
        return FLTColors.grey6D;
    }
  }

  String displayName(BuildContext context) {
    switch (this) {
      case TransactionStatus.failed:
        return 'Failed';
      case TransactionStatus.succeed:
        return 'Successfull';
      case TransactionStatus.inProgress:
        return 'In progress';
      case TransactionStatus.summary:
        return 'Summary';
    }
  }
}

class ProcessingTransactionStatus extends StatelessWidget {
  final TransactionStatus status;

  const ProcessingTransactionStatus({
    super.key,
    required this.status,

    /// This widget shouldn't be rendered with [notStarted] state;
  }) : assert(status != TransactionStatus.summary);

  Color get _backgroundColor {
    switch (status) {
      case TransactionStatus.failed:
        return const Color(0xff332327);
      case TransactionStatus.succeed:
        return const Color(0xff1C2E2D);
      case TransactionStatus.inProgress:
        return FLTColors.charlestonGreen2F;
      default:
        return Colors.transparent;
    }
  }

  Widget get _icon {
    switch (status) {
      case TransactionStatus.failed:
        return SvgPicture.asset(Assets.icons.info);
      case TransactionStatus.succeed:
        return SvgPicture.asset(Assets.icons.done);
      case TransactionStatus.inProgress:
        return AnimatedRotatingIcon(
          icon: SvgPicture.asset(Assets.icons.convert),
        );
      default:
        return const SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    const borderWidth = 2.0;
    const size = borderWidth + 64;

    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: _backgroundColor,
        borderRadius: BorderRadius.circular(size / 2),
        border: Border.all(
          width: borderWidth,
          color: FLTColors.darkBackground,
        ),
      ),
      child: Center(
        child: _icon,
      ),
    );
  }
}
