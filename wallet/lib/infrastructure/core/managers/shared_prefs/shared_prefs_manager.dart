import 'package:wallet/infrastructure/core/managers/shared_prefs/prefs/bool_pref.dart';
import 'package:injectable/injectable.dart';

import 'prefs/pref.dart';
import 'prefs/string_pref.dart';
import 'raw_manager.dart';

class _Keys {
  static const selectedNetwork = 'selectedNetwork';
  static const selectedAccountAddress = 'selectedAccountAddress';
  static const isUsingBiometricAuth = 'isUsingBiometricAuth';
  static const lastUnlockedDateTime = 'lastUnlockedDateTime';

  _Keys._();
}

@injectable
class SharedPrefsManager {
  final Pref<String> selectedNetwork;
  final Pref<String> selectedAccountAddress;
  final Pref<bool> isUsingBiometricAuth;
  final Pref<String> lastUnlockedDateTimeString;

  SharedPrefsManager(SharedPrefsRawManager sharedPreferences)
      : selectedNetwork = StringPref(
          _Keys.selectedNetwork,
          sharedPreferences,
        ),
        selectedAccountAddress = StringPref(
          _Keys.selectedAccountAddress,
          sharedPreferences,
        ),
        isUsingBiometricAuth = BoolPref(
          _Keys.isUsingBiometricAuth,
          sharedPreferences,
        ),
        lastUnlockedDateTimeString = StringPref(
          _Keys.lastUnlockedDateTime,
          sharedPreferences,
        );
}
