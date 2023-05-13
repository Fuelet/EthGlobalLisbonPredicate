import 'package:flutter/material.dart';
import 'package:wallet/presentation/core/constants/colors.dart';
import 'package:wallet/presentation/core/widgets/buttons/button_size.dart';
import 'package:wallet/presentation/core/widgets/buttons/monocolored_button.dart';

import 'button_text_style.dart';
import 'button_type.dart';

class FLTMonocoloredSecondaryButton extends StatelessWidget {
  final String? text;
  final Widget? child;
  final Widget? prefixIcon;
  final bool enabled;
  final VoidCallback onPressed;
  final ButtonSize size;
  final bool hasInfiniteWidth;
  final bool loading;
  final EdgeInsets padding;
  final Color? fillColor;
  final Color? textColor;

  const FLTMonocoloredSecondaryButton({
    super.key,
    this.text,
    this.child,
    this.prefixIcon,
    this.enabled = true,
    required this.onPressed,
    this.size = ButtonSize.medium,
    this.hasInfiniteWidth = true,
    this.loading = false,
    this.padding = EdgeInsets.zero,
    this.fillColor,
    this.textColor,
  });

  TextStyle get _textStyle {
    return getButtonTextStyle(ButtonType.primary, size).copyWith(
      color: textColor ?? FLTColors.grey9D,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.heightInPixels,
      child: FLTMonocoloredButton(
        onPressed: onPressed,
        text: text,
        fillColor: fillColor ?? FLTColors.charlestonGreen2F,
        textStyle: _textStyle,
        prefixIcon: prefixIcon,
        enabled: enabled,
        size: size,
        hasInfiniteWidth: hasInfiniteWidth,
        loading: loading,
        padding: padding,
        borderRadius: 4,
        child: child,
      ),
    );
  }
}
