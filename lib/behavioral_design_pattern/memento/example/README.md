# Memento Design Pattern

The Memento design pattern is a behavioral pattern that allows an object to capture its internal state at a given point in time and later restore that state without breaking encapsulation. This pattern provides a way to save and restore an object's state, which can be useful in situations where you need to implement undo-redo functionality, for example.

## Participants

The Memento design pattern consists of three main participants:

- **Originator**: The object whose state needs to be saved and restored.
- **Memento**: A snapshot of the originator's state.
- **Caretaker**: The object that is responsible for storing and restoring the originator's state.

## Implementation

Let's take a look at an example implementation of the Memento design pattern in Dart. In this example, we have a `TextEditor` class that allows the user to type text, undo their changes, and redo their changes. We'll use the Memento pattern to implement the undo-redo functionality.

First, we'll define the `TextEditor` class:

```dart
class TextEditor {
  String _text = '';

  void type(String text) {
    _text += text;
  }

  void undo() {
    _text = _history.pop();
  }

  void redo() {
    _text = _history.forward();
  }

  Memento save() {
    return Memento(_text);
  }

  void restore(Memento memento) {
    _text = memento.text;
  }

  final _history = Caretaker();
}
```

The `TextEditor` class has several methods: `type()` to allow the user to add text, `undo()` and `redo()` to undo and redo changes, `save()` to create a new memento with the current state of the editor, and `restore()` to restore the editor's state from a memento.

Next, we'll define the `Memento` class:

```dart
class Memento {
  final String text;

  const Memento(this.text);
}
```

The `Memento` class simply stores the state of the `TextEditor` object at a given point in time.

Finally, we'll define the `Caretaker` class:

```dart
class Caretaker {
  final _mementos = Queue<Memento>();

  void addMemento(Memento memento) {
    _mementos.addLast(memento);
  }

  Memento pop() {
    return _mementos.removeLast();
  }

  Memento forward() {
    return _mementos.isNotEmpty ? _mementos.removeFirst() : null;
  }
}
```

The `Caretaker` class is responsible for storing the mementos. We use a `Queue` to store the mementos in the order they were created. The `addMemento()` method is used to add a new memento to the history, and the `pop()` and `forward()` methods are used to retrieve the last memento (to undo changes) and the next memento (to redo changes), respectively.

## Usage

Here's an example of how to use the `TextEditor` class to implement undo-redo functionality:

```dart
void main() {
  final editor = Editor('Hello World');
  final history = History();

  // save the current state of the editor
  history.add(editor.save());

  // modify the state of the editor
  editor.write('Hello World 2');

  // save the new state of the editor
  history.add(editor.save());

  // restore the old state of the editor
  editor.restore(history.get(0));
  
  print(editor.getText()); // output: Hello World
}
```


In this example, the `Editor` class is the originator, which has a state that can be modified by the client code. The `EditorMemento` class is the memento that stores the state of the editor at a given point in time. The `History` class acts as a caretaker, which keeps track of the history of the editor's states.

In the `main` function, we create an instance of the editor and a history object. We then save the initial state of the editor into the history object. Next, we modify the state of the editor and save the new state into the history object. Finally, we restore the old state of the editor from the history object and print out its text.