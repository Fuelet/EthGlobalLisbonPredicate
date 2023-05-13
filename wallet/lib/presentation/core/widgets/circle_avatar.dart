import 'package:flutter/material.dart';

class FLTCircleAvatar extends StatelessWidget {
  final double radius;
  final Color backgroundColor;
  final Widget child;

  const FLTCircleAvatar({
    super.key,
    this.radius = 20,
    this.backgroundColor = Colors.transparent,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final size = radius * 2;

    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
      ),
      height: size,
      width: size,
      child: Center(child: child),
    );
  }
}
