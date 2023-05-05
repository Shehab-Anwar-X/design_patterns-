import 'editor.dart';
import 'history.dart';

void main() {
  // Create an editor with initial text
  final editor = Editor('Hello World');

  // Create a history object to store editor's state changes
  final history = History();

  // Save the initial state of the editor
  history.add(editor.save());

  // Change the text of the editor
  editor.write('Hello World 2');

  // Save the new state of the editor
  history.add(editor.save());

  // Change the text of the editor again
  editor.write('Hello World 3');

  // Restore the previous state of the editor
  editor.restore(history.get(0));

  print(editor.getText()); // Output: Hello World
}
