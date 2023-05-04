class IteratorNumber implements Iterator<int> {
  final List<int> _numbers;

  int _current = -1;

  IteratorNumber({List<int> initialData = const <int>[]})
      : _numbers = initialData;

  @override
  bool moveNext() {
    _current++;
    return _current < _numbers.length;
  }

  @override
  int get current => _numbers[_current];
}

void main() {
  final numbers = IteratorNumber(initialData: [1, 2, 3, 4, 5]);

  final iterator = numbers;
  while (iterator.moveNext()) {
    final number = iterator.current;
    print(number);
  }
}
