import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet/gen/assets.gen.dart';
import 'package:wallet/presentation/core/constants/colors.dart';
import 'package:wallet/presentation/core/constants/typography.dart';
import 'package:wallet/presentation/core/widgets/app_bar.dart';
import 'package:wallet/presentation/core/widgets/icon_button.dart';
import 'package:wallet/presentation/core/widgets/scaffold.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanQrScreen extends StatefulWidget {
  final bool isForAddress;
  const ScanQrScreen({
    this.isForAddress = false,
    super.key,
  });

  @override
  State<ScanQrScreen> createState() => _ScanQrScreenState();
}

class _ScanQrScreenState extends State<ScanQrScreen> {
  bool detected = false;

  Color get frameColor => detected ? FLTColors.blueSecondary : Colors.white;

  Color get iconColor => frameColor.withOpacity(.7);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    const horizontalPadding = 40;
    final frameSize = screenWidth - 2 * horizontalPadding;

    return FLTScaffold(
      extendBodyBehindAppBar: true,
      appBar: FLTAppBar(
        title: const Text(
          'Scan',
        ),
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: FLTIconButton(
            onTap: () => context.router.pop(null),
            icon: SvgPicture.asset(
              Assets.icons.arrows.iosArrowBack,
            ),
          ),
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          MobileScanner(
            onDetect: (barcode, args) {
              setState(() {
                detected = true;
              });
              Future.delayed(
                const Duration(seconds: 1),
                    () => context.router.pop(barcode.rawValue),
              );
            },
          ),
          Positioned(
            top: screenHeight * 0.25,
            child: Container(
              width: frameSize,
              height: frameSize,
              constraints: BoxConstraints(
                maxHeight: frameSize,
                maxWidth: frameSize,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 2.5,
                  color: iconColor,
                ),
              ),
            ),
          ),
          if (widget.isForAddress)
            Positioned(
              bottom: 60,
              child: Column(
                children: [
                  SvgPicture.asset(
                    Assets.icons.fuelDark,
                    color: iconColor,
                    height: 44,
                  ),
                  const SizedBox(height: 17),
                  Text(
                    'Scan secret QR code',
                    style: FLTTypography.header6SemiBold.copyWith(
                      color: Colors.white.withOpacity(.7),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
