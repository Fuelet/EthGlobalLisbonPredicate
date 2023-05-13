import 'package:flutter/material.dart';
import 'package:wallet/presentation/core/constants/colors.dart';

class FLTAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;
  final bool? centerTitle;
  final List<Widget>? actions;
  final Widget? leading;

  const FLTAppBar({
    required this.title,
    super.key,
    this.centerTitle,
    this.actions,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: FLTColors.darkBackground,
      elevation: 0,
      leading: leading,
      title: title,
      iconTheme: const IconThemeData(color: FLTColors.grey6D),
      centerTitle: centerTitle,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
