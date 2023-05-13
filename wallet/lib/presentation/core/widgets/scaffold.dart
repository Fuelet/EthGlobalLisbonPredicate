import 'package:flutter/material.dart';
import 'package:wallet/presentation/core/constants/colors.dart';

/// [FLTScaffold] wraps [Scaffold] with unfocusing when tapping somewhere
class FLTScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget body;
  final Widget? bottomSheet;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation floatingActionButtonLocation;
  final Color? backgroundColor;
  final VoidCallback? onTap;
  final bool addSafeArea;
  final bool extendBodyBehindAppBar;

  const FLTScaffold({
    this.appBar,
    required this.body,
    this.bottomSheet,
    this.bottomNavigationBar,
    this.floatingActionButton,
    this.floatingActionButtonLocation = FloatingActionButtonLocation.endFloat,
    this.backgroundColor = FLTColors.darkBackground,
    this.onTap,
    this.addSafeArea = false,
    this.extendBodyBehindAppBar = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
        if (onTap != null) {
          onTap!();
        }
      },
      child: Scaffold(
        appBar: appBar,
        backgroundColor: backgroundColor,
        body: addSafeArea ? SafeArea(child: body) : body,
        bottomSheet: bottomSheet,
        bottomNavigationBar: bottomNavigationBar,
        floatingActionButton: floatingActionButton,
        floatingActionButtonLocation: floatingActionButtonLocation,
        extendBodyBehindAppBar: extendBodyBehindAppBar,
      ),
    );
  }
}
