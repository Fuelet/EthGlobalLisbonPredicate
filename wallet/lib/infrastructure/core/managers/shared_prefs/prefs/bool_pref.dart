import '../raw_manager.dart';
import '../shared_pref.dart';

class BoolPref extends SharedPref<bool> {
  BoolPref(String key, SharedPrefsRawManager sharedPreferences)
      : super(
          key,
          sharedPreferences,
          sharedPreferences.getBool,
          sharedPreferences.setBool,
        );
}
