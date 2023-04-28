class PopCorn {
  Future<void> on() async {
    await Future<void>.delayed(Duration(seconds: 1));
  }

  Future<void> pop() async {
    await Future<void>.delayed(Duration(seconds: 1));
  }
}
