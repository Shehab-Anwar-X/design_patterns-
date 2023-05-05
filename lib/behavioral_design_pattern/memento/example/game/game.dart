import 'check_point.dart';

class Game {
  String playerName;
  int score;

  Game({
    this.playerName = '',
    this.score = 0,
  });

  CheckPoint currentState() {
    return CheckPoint(playerName: playerName, score: score);
  }

  void revert(CheckPoint checkPoint) {
    playerName = checkPoint.playerName;
    score = checkPoint.score;
  }

  void restart() {
    playerName = '';
    score = 0;
  }
}
