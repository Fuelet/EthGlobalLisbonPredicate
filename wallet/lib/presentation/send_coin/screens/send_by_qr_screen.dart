import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_fuels/flutter_fuels.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet/gen/assets.gen.dart';
import 'package:wallet/presentation/core/constants/colors.dart';
import 'package:wallet/presentation/core/constants/typography.dart';
import 'package:wallet/presentation/core/widgets/app_bar.dart';
import 'package:wallet/presentation/core/widgets/buttons/button_size.dart';
import 'package:wallet/presentation/core/widgets/buttons/primary_button.dart';
import 'package:wallet/presentation/core/widgets/buttons/secondary_button.dart';
import 'package:wallet/presentation/core/widgets/icon_button.dart';
import 'package:wallet/presentation/core/widgets/scaffold.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:wallet/presentation/receive/widgets/view_transaction_text_button.dart';

class SendByQRScreen extends StatelessWidget {
  final double amount;
  final String senderAddress;
  final FuelWallet secretWallet;
  final String txId;

  SendByQRScreen({
    required this.amount,
    required this.senderAddress,
    required this.secretWallet,
    required this.txId,
    super.key,
  });

  final GlobalKey _globalKey = GlobalKey();

  String _qrData() {
    Map<String, dynamic> data = {
      "secret": secretWallet.privateKey,
      "amount": amount,
      "sender_address": senderAddress,
    };

    return jsonEncode(data);
  }

  Future<void> _shareQR() async {
    try {
      RenderRepaintBoundary boundary = _globalKey.currentContext!
          .findRenderObject() as RenderRepaintBoundary;
      ui.Image image = await boundary.toImage();
      ByteData? byteData =
          await image.toByteData(format: ui.ImageByteFormat.png);
      Uint8List pngBytes = byteData!.buffer.asUint8List();
      final directory = await getApplicationDocumentsDirectory();
      final file = File('${directory.path}/image.png');
      await file.writeAsBytes(pngBytes);

      final XFile xfile = XFile(
        file.path,
        mimeType: 'image/png',
      );

      // TODO: fix
      Share.shareXFiles([xfile]);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FLTScaffold(
      appBar: FLTAppBar(
        title: const Text("Send by QR"),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: FLTIconButton(
            onTap: () {
              context.router.pop();
            },
            icon: SvgPicture.asset(
              Assets.icons.close,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              "Only share this QR and secret with the person you're sending assets to.",
              textAlign: TextAlign.center,
              style: FLTTypography.body1w500.copyWith(color: FLTColors.grey6D),
            ),
          ),
          const SizedBox(height: 8),
          RepaintBoundary(
            key: _globalKey,
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: QrImage(
                  data: _qrData(),
                  padding: const EdgeInsets.all(10),
                  backgroundColor: Colors.white,
                  version: QrVersions.auto,
                  // embeddedImage: AssetImage(
                  //   Assets.images.ethQr.path,
                  // ),
                  // embeddedImageStyle: QrEmbeddedImageStyle(
                  //   size: Size.square(
                  //     MediaQuery.of(context).size.height / 10,
                  //   ),
                  // ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              children: [
                Expanded(
                  child: FLTMonocoloredPrimaryButton(
                    size: ButtonSize.small,
                    text: "Share",
                    prefixIcon: SvgPicture.asset(
                      Assets.icons.share,
                      color: FLTColors.charlestonGreen2F,
                    ),
                    onPressed: () async {
                      await _shareQR();
                    },
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: FLTMonocoloredSecondaryButton(
                    size: ButtonSize.small,
                    onPressed: () {},
                    text: "Download",
                    prefixIcon: SvgPicture.asset(Assets.icons.arrows.arrowDown),
                  ),
                ),
              ],
            ),
          ),
          ViewTransactionTextButton(
            transactionUrl: '0x$txId',
          )
        ],
      ),
    );
  }
}
