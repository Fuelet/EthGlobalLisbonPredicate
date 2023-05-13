import 'package:overlay_support/overlay_support.dart';

class ToastManager {
  const ToastManager._();

  static void showToast(String message) {
    toast(message);
  }
}
