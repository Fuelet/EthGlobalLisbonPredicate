extension IterableX<T> on Iterable<T> {
  /// Возвращает элемент [Iterable] который выполняет условие
  /// [predicate], либо 'null'.
  T? firstWhereOrNull(bool Function(T selector) predicate) {
    for (final element in this) {
      if (predicate(element)) return element;
    }
    return null;
  }
}
