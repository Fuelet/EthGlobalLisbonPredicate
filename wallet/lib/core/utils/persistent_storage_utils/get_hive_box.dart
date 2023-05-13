import 'package:hive_flutter/hive_flutter.dart';

/// Typedef for [getHiveBox].
typedef HiveBoxFactory = Future<Box<T>> Function<T>(String boxKey);

/// Typedef for [getHiveLazyBox].
typedef HiveLazyBoxFactory = Future<LazyBox<T>> Function<T>(String boxKey);

/// Return the box with [boxKey] if it's open, otherwise return it after opening.
Future<Box<T>> getHiveBox<T>(String boxKey) async {
  try {
    return await Hive.openBox(boxKey);
  } catch (e, st) {
    // TODO: log error
    rethrow;
  }
}

Future<LazyBox<T>> getHiveLazyBox<T>(String boxKey) async {
  try {
    return await Hive.openLazyBox(boxKey);
  } catch (e, st) {
    // TODO: log error
    rethrow;
  }
}
