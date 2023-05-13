import '../raw_manager.dart';
import '../shared_pref.dart';

class StringPref extends SharedPref<String> {
  StringPref(String key, SharedPrefsRawManager sharedPreferences)
      : super(
          key,
          sharedPreferences,
          sharedPreferences.getString,
          sharedPreferences.setString,
        );
}
