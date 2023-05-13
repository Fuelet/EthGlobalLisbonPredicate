import 'package:flutter/material.dart';
import 'package:wallet/presentation/core/constants/colors.dart';
import 'package:wallet/presentation/core/constants/typography.dart';
import 'package:wallet/presentation/core/widgets/buttons/button_size.dart';

class FLTMonocoloredButton extends StatelessWidget {
  final String? text;
  final TextStyle? textStyle;
  final Color? fillColor;
  final Widget? child;
  final Widget? prefixIcon;
  final bool enabled;
  final bool hasInfiniteWidth;
  final VoidCallback onPressed;
  final ButtonSize size;
  final bool loading;
  final EdgeInsets padding;
  final double borderRadius;

  const FLTMonocoloredButton({
    this.text,
    this.child,
    this.prefixIcon,
    this.textStyle,
    this.fillColor,
    this.borderRadius = 0,
    this.enabled = true,
    this.hasInfiniteWidth = true,
    required this.onPressed,
    required this.size,
    this.loading = false,
    this.padding = EdgeInsets.zero,
    super.key,
  }) : assert(text != null || child != null,
            'Either text or child must not be null');

  static const _loader = SizedBox(
    height: 24,
    width: 24,
    child: CircularProgressIndicator(
      color: FLTColors.darkBackground,
    ),
  );

  @override
  Widget build(BuildContext context) {
    Widget childWidget = child ??
        Text(
          text!,
          style: textStyle ??
              FLTTypography.body1SemiBold.copyWith(
                color: FLTColors.white,
              ),
        );

    if (prefixIcon != null) {
      childWidget = Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: size.iconSize,
            width: size.iconSize,
            child: prefixIcon!,
          ),
          const SizedBox(width: 6),
          childWidget,
        ],
      );
    }

    return Opacity(
      opacity: enabled ? 1.0 : 0.2,
      child: RawMaterialButton(
        padding: padding,
        fillColor: fillColor ?? FLTColors.blue,
        elevation: .0,
        highlightElevation: .0,
        highlightColor: Colors.transparent,
        hoverElevation: .0,
        splashColor: Colors.transparent,
        enableFeedback: false,
        constraints: BoxConstraints(
          minWidth: hasInfiniteWidth ? double.maxFinite : 0,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            borderRadius,
          ),
        ),
        onPressed: enabled && !loading ? onPressed : null,
        child: loading ? _loader : childWidget,
      ),
    );
  }
}
