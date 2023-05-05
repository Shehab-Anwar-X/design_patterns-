import 'game.dart';
import 'check_point.dart';

class Caretaker {
  final _savedCheckPoints = <CheckPoint>[];

  Caretaker();

  bool get _hasSavedCheckPoints => _savedCheckPoints.isNotEmpty;

  void revert(Game game) {
    if (!_hasSavedCheckPoints) {
      throw Exception('No checkpoints have been saved');
    }

    final lastCheckPoint = _savedCheckPoints.last;
    _savedCheckPoints.removeLast();
    game.revert(lastCheckPoint);
  }

  void save(Game game) {
    final checkPoint = game.currentState();
    _savedCheckPoints.add(checkPoint);
  }
}
