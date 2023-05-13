import '../raw_manager.dart';
import '../shared_pref.dart';

class IntPref extends SharedPref<int> {
  IntPref(String key, SharedPrefsRawManager sharedPreferences)
      : super(
          key,
          sharedPreferences,
          sharedPreferences.getInt,
          sharedPreferences.setInt,
        );
}
