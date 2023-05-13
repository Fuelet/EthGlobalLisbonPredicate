import '../raw_manager.dart';
import '../shared_pref.dart';

class StringListPref extends SharedPref<List<String>> {
  StringListPref(String key, SharedPrefsRawManager sharedPreferences)
      : super(
          key,
          sharedPreferences,
          sharedPreferences.getStringList,
          sharedPreferences.setStringList,
        );
}
