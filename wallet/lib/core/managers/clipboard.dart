import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ClipboardManager {
  const ClipboardManager._();

  static Future<void> setClipboardDataTo(
      TextEditingController controller) async {
    final clipboardText = (await Clipboard.getData(Clipboard.kTextPlain))?.text;
    final textToPaste = clipboardText ?? '';

    controller.text = textToPaste;
    controller.selection =
        TextSelection.fromPosition(TextPosition(offset: textToPaste.length));
  }

  static Future<void> copyToBuffer(String text, {VoidCallback? onSuccess}) =>
      Clipboard.setData(ClipboardData(text: text)).then(
        (value) => onSuccess?.call(),
      );
}
