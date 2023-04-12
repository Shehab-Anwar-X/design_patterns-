class SmartSingletonCounter {
  /// Private constructor to prevent getting an object from this class.
  SmartSingletonCounter._();

  /// Private constructor to prevent getting an object from this class but this
  /// constructor need parameters to initial.
  // SmartSingletonCounter._withParams(List<Object> params);

  /// FirebaseFireStore Follow this style of code.
  ///
  /// And if you need to get instance from this object you just call
  /// final instance = SmartSingletonCounter.instance;
  static final SmartSingletonCounter instance = SmartSingletonCounter._();

  /// If you have a parameters in your constructor.
  // factory SmartSingletonCounter.getInstance(List<Object> params) {
  //   instance ??= SmartSingletonCounter._withParams(params);
  //   return instance;
  // }

  int _counter = 0;

  int get counter => _counter;

  int increaseCounter() {
    return ++_counter;
  }

  int decreaseCounter() {
    return --_counter;
  }
}
