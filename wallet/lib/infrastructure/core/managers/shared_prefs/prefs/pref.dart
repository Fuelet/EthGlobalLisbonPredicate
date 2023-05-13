abstract class Pref<T> {
  Stream<T?> get stream;

  T? get();

  Future<void> set(T? value);
}
