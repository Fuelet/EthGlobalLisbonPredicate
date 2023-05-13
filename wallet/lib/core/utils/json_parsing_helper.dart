import 'dart:convert';

class JsonParsingHelper {
  static Map<String, dynamic> jsonMapFromString(String str) {
    return json.decode(str) as Map<String, dynamic>;
  }
}
