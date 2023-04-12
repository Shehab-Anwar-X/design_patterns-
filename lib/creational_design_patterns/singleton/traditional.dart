class TraditionalSingletonCounter {
  /// Private constructor to prevent getting an object from this class.
  TraditionalSingletonCounter._();

  static TraditionalSingletonCounter? _instance;

  static TraditionalSingletonCounter getInstance() {
    _instance ??= TraditionalSingletonCounter._();
    return _instance!;
  }

  int _counter = 0;

  int get counter => _counter;

  int increaseCounter() {
    return ++_counter;
  }

  int decreaseCounter() {
    return --_counter;
  }
}
