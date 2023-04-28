class Screen {
  Future<void> down() async {
    await Future<void>.delayed(Duration(seconds: 1));
  }
}
