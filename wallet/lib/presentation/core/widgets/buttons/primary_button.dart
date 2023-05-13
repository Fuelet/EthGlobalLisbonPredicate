import 'package:flutter/material.dart';
import 'package:wallet/presentation/core/constants/colors.dart';
import 'package:wallet/presentation/core/widgets/buttons/button_size.dart';
import 'package:wallet/presentation/core/widgets/buttons/button_text_style.dart';
import 'package:wallet/presentation/core/widgets/buttons/button_type.dart';
import 'package:wallet/presentation/core/widgets/buttons/monocolored_button.dart';

class FLTMonocoloredPrimaryButton extends StatelessWidget {
  final String? text;
  final Widget? child;
  final Widget? prefixIcon;
  final bool enabled;
  final VoidCallback onPressed;
  final ButtonSize size;
  final bool loading;

  const FLTMonocoloredPrimaryButton({
    super.key,
    this.text,
    this.child,
    this.prefixIcon,
    this.enabled = true,
    required this.onPressed,
    this.size = ButtonSize.medium,
    this.loading = false,
  });

  TextStyle get _textStyle {
    return getButtonTextStyle(ButtonType.primary, size).copyWith(
      color: FLTColors.darkBackground,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.heightInPixels,
      child: FLTMonocoloredButton(
        onPressed: onPressed,
        text: text,
        textStyle: _textStyle,
        prefixIcon: prefixIcon,
        enabled: enabled,
        size: size,
        loading: loading,
        borderRadius: 4,
        child: child,
      ),
    );
  }
}
