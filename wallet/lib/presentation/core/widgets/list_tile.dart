import 'package:flutter/material.dart';

class FLTListTile extends StatelessWidget {
  final Widget? leading;
  final Widget title;
  final Widget? subtitle;
  final Widget? detailTitle;
  final Widget? detailSubtitle;
  final EdgeInsets padding;
  final VoidCallback? onTap;

  const FLTListTile({
    super.key,
    required this.title,
    this.leading,
    this.subtitle,
    this.detailTitle,
    this.detailSubtitle,
    this.padding = const EdgeInsets.all(8),
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final hasSubtitle = subtitle != null || detailSubtitle != null;

    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: padding,
        child: Row(
          children: [
            if (leading != null)
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: leading,
              ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: title),
                      if (detailTitle != null) detailTitle!,
                    ],
                  ),
                  if (hasSubtitle)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        if (subtitle != null) subtitle!,
                        const Spacer(),
                        if (detailSubtitle != null) detailSubtitle!,
                      ],
                    )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
