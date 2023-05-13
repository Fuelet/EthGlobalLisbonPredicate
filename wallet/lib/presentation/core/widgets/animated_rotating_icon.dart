import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedRotatingIcon extends StatefulWidget {
  final Widget icon;

  const AnimatedRotatingIcon({
    super.key,
    required this.icon,
  });

  @override
  State<AnimatedRotatingIcon> createState() => _AnimatedRotatingIconState();
}

class _AnimatedRotatingIconState extends State<AnimatedRotatingIcon>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      lowerBound: 0,
      upperBound: pi,
      duration: const Duration(milliseconds: 500),
    )..repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return Transform.rotate(
          angle: _animationController.value,
          child: widget.icon,
        );
      },
    );
  }
}
