class TheaterLight {
  Future<void> dim() async {
    await Future<void>.delayed(Duration(seconds: 1));
  }
}
