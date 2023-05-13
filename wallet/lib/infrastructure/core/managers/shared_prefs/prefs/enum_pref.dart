import '../raw_manager.dart';
import '../shared_pref.dart';

class EnumPref<T> extends SharedPref<T> {
  EnumPref(
    String key,
    SharedPrefsRawManager sharedPreferences,
    Iterable<T> values,
  ) : super(
          key,
          sharedPreferences,
          (key) => sharedPreferences.getEnum(values, key),
          sharedPreferences.setEnum,
        );
}
