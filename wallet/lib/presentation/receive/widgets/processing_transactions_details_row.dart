import 'package:flutter/material.dart';
import 'package:wallet/presentation/core/constants/colors.dart';
import 'package:wallet/presentation/core/constants/typography.dart';

class ProcessingTransactionDetailsRow extends StatelessWidget {
  final String title;
  final Widget? trailing;
  final String? trailingText;
  final Color? trailingTextColor;
  final TextStyle? trailingTextStyle;

  const ProcessingTransactionDetailsRow({
    super.key,
    required this.title,
    this.trailing,
    this.trailingText,
    this.trailingTextColor,
    this.trailingTextStyle,
  });

  TextStyle get _trailingTextStyle =>
      (trailingTextStyle ?? FLTTypography.body2Medium).copyWith(
        color: trailingTextColor ?? FLTColors.grey9D,
      );
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: FLTTypography.body1w500.copyWith(
            color: FLTColors.grey6D,
            height: 32 / 17,
          ),
        ),
        const Spacer(),
        if (trailing != null)
          trailing!
        else
          Text(
            trailingText!,
            style: _trailingTextStyle,
          ),
      ],
    );
  }
}
