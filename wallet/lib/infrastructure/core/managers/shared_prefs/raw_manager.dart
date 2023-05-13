import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wallet/core/utils/extensions/iterable_x.dart';
import 'package:wallet/core/utils/extensions/kotlin_object_x.dart';

@injectable
class SharedPrefsRawManager {
  final SharedPreferences _sharedPreferences;

  SharedPrefsRawManager(this._sharedPreferences);

  int? getInt(String key) => _sharedPreferences.getInt(key);

  Future<bool> setInt(String key, int value) =>
      _sharedPreferences.setInt(key, value);

  double? getDouble(String key) => _sharedPreferences.getDouble(key);

  Future<bool> setDouble(String key, double value) =>
      _sharedPreferences.setDouble(key, value);

  String? getString(String key) => _sharedPreferences.getString(key);

  Future<bool> setString(String key, String value) =>
      _sharedPreferences.setString(key, value);

  Future<bool> setStringList(String key, List<String> value) =>
      _sharedPreferences.setStringList(key, value);

  List<String>? getStringList(String key) =>
      _sharedPreferences.getStringList(key);

  bool? getBool(String key) => _sharedPreferences.getBool(key);

  Future<bool> setBool(String key, bool value) =>
      _sharedPreferences.setBool(key, value);

  Map<String, dynamic>? getJson(String key) =>
      _sharedPreferences.getString(key)?.let((it) => jsonDecode(it));

  Future<bool> setJson(String key, Map<String, dynamic> value) =>
      _sharedPreferences.setString(key, jsonEncode(value));

  T? getEnum<T>(Iterable<T> values, String key) =>
      _sharedPreferences.getString(key)?.let((it) =>
          values.firstWhereOrNull((selector) => selector.toString() == it));

  Future<bool> setEnum<T>(String key, T value) =>
      _sharedPreferences.setString(key, value.toString());

  Set<String> getAllKeys() => _sharedPreferences.getKeys();

  Future<void> clearAll() => _sharedPreferences.clear();

  Future<void> removeKey(String key) => _sharedPreferences.remove(key);
}
