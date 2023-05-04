# State Design Pattern

The State Design Pattern is a behavioral design pattern that allows an object to change its behavior when its internal state changes. This pattern enables the creation of different object behaviors by encapsulating them in state objects that can be interchanged. This results in more flexible, maintainable, and modular code.

## Problem

When an object's behavior needs to change depending on its state, it can result in complex and hard-to-maintain code. For example, consider a user interface element, such as a button, that can be in different states, such as enabled or disabled. When the state of the button changes, its behavior should also change. This can result in code that is hard to read and maintain, especially when there are many states and behaviors to manage.

## Solution

The State Design Pattern solves this problem by separating the object's behavior from its state and encapsulating each behavior in a separate state object. The state object is responsible for the behavior of the object when it is in that state. The object itself simply delegates to the current state object to handle any requests.

The State Design Pattern consists of three main components:
- Context: the object that encapsulates the state and delegates to the current state object
- State: an interface that defines the behavior of the object when it is in that state
- Concrete State: an implementation of the State interface that defines the behavior of the object when it is in that state

The following diagram illustrates the State Design Pattern:

![State Design Pattern](https://github.com/bethrobson/Head-First-Design-Patterns/raw/master/images/ch10/state.jpg)

## Example

Let's consider an example where we have a document editor that can be in different modes, such as read-only or edit mode. Depending on the mode, the behavior of the editor should change. We can use the State Design Pattern to manage the editor's behavior based on its mode.

First, we define the State interface that defines the behavior of the editor for each mode:

```dart
abstract class Mode {
  void handleInput(DocumentEditor editor, String input);
}
```

We then create concrete state classes for each mode that implement the State interface:

```dart
class ReadOnlyMode implements Mode {
  @override
  void handleInput(DocumentEditor editor, String input) {
    // Handle input in read-only mode
  }
}

class EditMode implements Mode {
  @override
  void handleInput(DocumentEditor editor, String input) {
    // Handle input in edit mode
  }
}
```

Next, we create the Context object, which is the DocumentEditor class that encapsulates the state and delegates to the current state object:

```dart
class DocumentEditor {
  late Mode _mode;

  void setMode(Mode mode) {
    _mode = mode;
  }

  void handleInput(String input) {
    _mode.handleInput(this, input);
  }
}
```

Finally, we can use the State Design Pattern to manage the behavior of the DocumentEditor based on its mode:

```dart
void main() {
  final editor = DocumentEditor();
  editor.setMode(ReadOnlyMode());

  editor.handleInput('Some input'); // Handles input in read-only mode

  editor.setMode(EditMode());

  editor.handleInput('Some input'); // Handles input in edit mode
}
```

## Conclusion

The State Design Pattern provides a way to manage an object's behavior based on its internal state, making code more modular and maintainable. By encapsulating different behaviors in separate state objects, we can easily switch between different behaviors without modifying the object's code.