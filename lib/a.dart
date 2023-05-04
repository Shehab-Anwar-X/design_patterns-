class A extends Iterable<int> {
  List<int> a = <int>[];

  fun() {
    a.forEach((element) {});
  }

  @override
  Iterator<int> get iterator => a.iterator;
}
