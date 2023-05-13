import '../raw_manager.dart';
import '../shared_pref.dart';

class DoublePref extends SharedPref<double> {
  DoublePref(String key, SharedPrefsRawManager sharedPreferences)
      : super(
          key,
          sharedPreferences,
          sharedPreferences.getDouble,
          sharedPreferences.setDouble,
        );
}
