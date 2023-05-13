import 'package:wallet/core/utils/extensions/kotlin_object_x.dart';
import '../raw_manager.dart';
import '../shared_pref.dart';

class JsonPref<T> extends SharedPref<T> {
  JsonPref(
    String key,
    SharedPrefsRawManager sharedPreferences,
    Map<String, dynamic> Function(T) toJson,
    T Function(Map<String, dynamic>) fromJson,
  ) : super(
          key,
          sharedPreferences,
          (key) => sharedPreferences.getJson(key)?.let(fromJson),
          (key, value) => sharedPreferences.setJson(key, toJson(value)),
        );
}
