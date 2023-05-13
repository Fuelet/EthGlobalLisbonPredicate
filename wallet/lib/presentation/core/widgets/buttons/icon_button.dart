import 'package:flutter/material.dart';

class FLTIconButton extends StatelessWidget {
  final VoidCallback onTap;
  final Widget icon;

  const FLTIconButton({
    super.key,
    required this.onTap,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: icon,
      ),
    );
  }
}
