extension KotlinObjectX<T> on T {
  /// Вызывает функцию [func] со значением this и возвращает результат её выполнения
  R let<R>(R Function(T) func) {
    return func(this);
  }
}
