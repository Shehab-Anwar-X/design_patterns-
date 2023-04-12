class AwesomeSingletonCounter {
  /// Private constructor to prevent getting an object from this class.
  AwesomeSingletonCounter._();

  static AwesomeSingletonCounter? _instance;

  factory AwesomeSingletonCounter() {
    return _instance ??= AwesomeSingletonCounter._();
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
