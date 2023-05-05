import 'caretaker.dart';
import 'game.dart';

void main() {
  final game = Game(playerName: 'Shehab');
  final gameCaretaker = Caretaker();

  game.score = 100;
  _printGameData(game);

  gameCaretaker.save(game);
  game.restart();
  _printGameData(game);

  gameCaretaker.revert(game);
  _printGameData(game);
}

void _printGameData(Game game) {
  print('Player name: ${game.playerName}, Score: ${game.score}');
}
