import 'package:flutter/material.dart';
import 'package:wallet/presentation/core/constants/colors.dart';

class FLTDivider extends StatelessWidget {
  final double thickness;
  final Color color;

  const FLTDivider({
    this.thickness = 1.5,
    this.color = FLTColors.charlestonGreen29,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: thickness,
      color: color,
    );
  }
}
