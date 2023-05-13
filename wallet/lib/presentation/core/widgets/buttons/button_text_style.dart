import 'package:flutter/material.dart';
import 'package:wallet/presentation/core/constants/typography.dart';
import 'package:wallet/presentation/core/widgets/buttons/button_size.dart';
import 'package:wallet/presentation/core/widgets/buttons/button_type.dart';

TextStyle getButtonTextStyle(ButtonType type, ButtonSize size) {
  if (type == ButtonType.primary || type == ButtonType.secondary) {
    switch (size) {
      case ButtonSize.large:
        return FLTTypography.body1SemiBold;
      case ButtonSize.medium:
        return FLTTypography.body1SemiBold;
      case ButtonSize.small:
        return FLTTypography.body2SemiBold;
      case ButtonSize.xsmall:
        return FLTTypography.body2SemiBold;
      case ButtonSize.xxxsmall:
        return FLTTypography.body2SemiBold;
    }
  }

  if (type == ButtonType.red) {
    switch (size) {
      case ButtonSize.large:
        return FLTTypography.body1SemiBold;
      case ButtonSize.medium:
        return FLTTypography.body1SemiBold;
      case ButtonSize.small:
        return FLTTypography.body2SemiBold;
      case ButtonSize.xsmall:
        return FLTTypography.body3SemiBold;
      case ButtonSize.xxxsmall:
        return FLTTypography.body2SemiBold;
    }
  }

  return FLTTypography.body1SemiBold;
}
