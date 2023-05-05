import 'editor_memento.dart';

// Originator class
class Editor {
  String _text;

  Editor(this._text);

  void write(String text) {
    _text = text;
  }

  String getText() {
    return _text;
  }

  // create a memento object of the current state
  EditorMemento save() {
    return EditorMemento(_text);
  }

  // restore the state from a memento object
  void restore(EditorMemento memento) {
    _text = memento.getText();
  }
}
