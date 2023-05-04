# Command Design Pattern

The Command design pattern is a behavioral pattern that encapsulates a request as an object, allowing it to be stored, passed as a parameter, and executed at a later time or in a different context. The pattern separates the requester of a command from the object that performs the command, enabling loose coupling between the two and providing flexibility in terms of adding new commands or modifying existing ones.

## Intent

The Command design pattern is intended to:

- Encapsulate a request as an object, allowing it to be manipulated, queued, logged, or otherwise treated as a first-class citizen.
- Decouple the requester of a command from the object that performs the command, enabling flexibility and reusability.
- Enable the implementation of composite commands, which are composed of one or more sub-commands.

## Structure

The Command design pattern consists of the following components:

- **Command:** An interface or abstract class that declares a method for executing a command.
- **Concrete Command:** A class that implements the Command interface and encapsulates a receiver object.
- **Receiver:** An object that knows how to perform the operations associated with a command.
- **Invoker:** An object that holds a reference to a command and can execute the command by invoking its execute() method.
- **Client:** An object that creates commands and sets their receiver objects.

![Command Design Pattern UML Diagram](https://upload.wikimedia.org/wikipedia/commons/8/8e/Command_Design_Pattern_Class_Diagram.png)

## Example

Let's consider an example of using the Command design pattern in a hypothetical text editor application. We want to allow users to undo and redo their actions in the editor, so we need to implement a command history mechanism.

First, we define the `Command` interface, which declares a single `execute()` method:

```dart
abstract class Command {
  void execute();
}
```

Next, we create a concrete `Command` class for each operation that the user can perform in the text editor. Each `Command` class takes a reference to the editor object as a constructor parameter:

```dart
class AddTextCommand implements Command {
  final Editor _editor;
  final String _text;

  AddTextCommand(this._editor, this._text);

  @override
  void execute() {
    _editor.addText(_text);
  }
}

class DeleteSelectionCommand implements Command {
  final Editor _editor;

  DeleteSelectionCommand(this._editor);

  @override
  void execute() {
    _editor.deleteSelection();
  }
}

// ... other concrete command classes ...
```

We also define the `Editor` class, which represents the text editor and defines the methods that each `Command` class will call:

```dart
class Editor {
  final List<String> _lines = [];
  int _cursorPosition = 0;
  bool _selectionMode = false;
  int _selectionStart = 0;

  void addText(String text) {
    // ... add the given text to the document ...
  }

  void deleteSelection() {
    // ... delete the currently selected text ...
  }

  // ... other methods ...
}
```

Next, we create the `Invoker` class, which maintains a list of executed commands and can execute them sequentially:

```dart
class Invoker {
  final List<Command> _commandHistory = [];
  int _currentCommandIndex = -1;

  void executeCommand(Command command) {
    // Discard all undone commands
    _commandHistory.removeRange(_currentCommandIndex + 1, _commandHistory.length);

    // Add the new command to the history and execute it
    _commandHistory.add(command);
    command.execute();
    _currentCommandIndex++;
  }

  void undo() {
    if (_currentCommandIndex >= 0) {
      final Command command = _commandHistory[_currentCommandIndex];
      command.undo();
      _currentCommandIndex--;
    }
  }

  void redo() {
    if (_currentCommandIndex < _commandHistory.length - 1) {
      _currentCommandIndex++;
      final Command command = _commandHistory[_currentCommandIndex];
      command.execute();
    }
  }
}
```

Finally, we create a `Client` object that creates commands and executes them using the `Invoker` object:

```dart
class Client {
  final Editor _editor;
  final Invoker _invoker;

  Client(this._editor, this._invoker);

  void addText(String text) {
    final command = AddTextCommand(_editor, text);
    _invoker.executeCommand(command);
  }

  void deleteSelection() {
    final command = DeleteSelectionCommand(_editor);
    _invoker.executeCommand(command);
  }

  // ... other methods ...
}
```

With this design, we can easily add new commands by creating new concrete command classes that implement the `Command` interface and define their own operations on the `Editor` object. We can also implement composite commands by creating new concrete command classes that hold a list of sub-commands and execute them in sequence.

## Advantages

The Command design pattern offers several advantages, including:

- Decoupling the requester of a command from the object that performs the command, making it easier to add new commands or modify existing ones.
- Enabling the implementation of composite commands, which are composed of one or more sub-commands.
- Enabling the implementation of undo and redo operations, by maintaining a history of executed commands.

## Disadvantages

The Command design pattern has some potential drawbacks, including:

- Increasing code complexity, especially when implementing composite commands or undo/redo functionality.
- Requiring additional classes and interfaces, which can add to the size and complexity of the codebase.
- Reducing performance, due to the overhead of creating and managing command objects.

## Conclusion

The Command design pattern is a useful way to encapsulate requests as objects, enabling loose coupling between the requester and the performer of a command. It can be particularly useful for implementing undo and redo functionality, as well as composite commands. However, it can also add complexity and overhead to a codebase, so it should be used judiciously and only when appropriate.