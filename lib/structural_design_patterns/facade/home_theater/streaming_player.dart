class StreamingPlayer {
  Future<void> on() async {
    await Future<void>.delayed(Duration(seconds: 1));
  }

  Future<void> play() async {
    await Future<void>.delayed(Duration(seconds: 1));
  }
}
