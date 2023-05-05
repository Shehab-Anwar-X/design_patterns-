import 'editor_memento.dart';

// Caretaker class
class History {
  final List<EditorMemento> _states = [];

  void add(EditorMemento memento) {
    _states.add(memento);
  }

  EditorMemento get(int index) {
    return _states[index];
  }
}
