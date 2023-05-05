# Visitor Design Pattern

The Visitor design pattern is a behavioral pattern that allows you to separate the algorithm from the objects on which it operates. This pattern is useful when you have a hierarchy of classes and want to perform operations on them without modifying the classes themselves.

## When to use the Visitor design pattern

You should consider using the Visitor design pattern when:

- You have a hierarchy of classes and want to perform operations on them without modifying the classes themselves.
- You want to perform different operations on objects depending on their type.

## How it works

The Visitor design pattern consists of three main components:

- **Element**: An interface or abstract class that defines the interface for the classes in the hierarchy.
- **Concrete Element**: A class that implements the Element interface or abstract class.
- **Visitor**: An interface or abstract class that defines the interface for the operations that can be performed on the Elements.
- **Concrete Visitor**: A class that implements the Visitor interface or abstract class and provides an implementation for each operation.

The Visitor pattern allows you to add new operations to the hierarchy of classes without modifying the classes themselves. You can create a new Concrete Visitor class that implements the Visitor interface and provides a new implementation for the new operation.

When you want to perform an operation on an Element, you call the accept method on the Element and pass in a Visitor object. The Element calls the appropriate method on the Visitor, passing in itself as an argument. The Visitor then performs the operation on the Element.

## Example

Here's an example of how you might use the Visitor design pattern in Dart:

```dart
// Define the Element interface
abstract class Element {
  void accept(Visitor visitor);
}

// Define the Concrete Element classes
class ConcreteElementA implements Element {
  @override
  void accept(Visitor visitor) {
    visitor.visitConcreteElementA(this);
  }

  String operationA() => 'ConcreteElementA';
}

class ConcreteElementB implements Element {
  @override
  void accept(Visitor visitor) {
    visitor.visitConcreteElementB(this);
  }

  String operationB() => 'ConcreteElementB';
}

// Define the Visitor interface
abstract class Visitor {
  void visitConcreteElementA(ConcreteElementA elementA);
  void visitConcreteElementB(ConcreteElementB elementB);
}

// Define the Concrete Visitor classes
class ConcreteVisitor1 implements Visitor {
  @override
  void visitConcreteElementA(ConcreteElementA elementA) {
    print('${elementA.operationA()} visited by ConcreteVisitor1');
  }

  @override
  void visitConcreteElementB(ConcreteElementB elementB) {
    print('${elementB.operationB()} visited by ConcreteVisitor1');
  }
}

class ConcreteVisitor2 implements Visitor {
  @override
  void visitConcreteElementA(ConcreteElementA elementA) {
    print('${elementA.operationA()} visited by ConcreteVisitor2');
  }

  @override
  void visitConcreteElementB(ConcreteElementB elementB) {
    print('${elementB.operationB()} visited by ConcreteVisitor2');
  }
}

// Usage
void main() {
  final elements = [ConcreteElementA(), ConcreteElementB()];
  final visitors = [ConcreteVisitor1(), ConcreteVisitor2()];

  for (final visitor in visitors) {
    for (final element in elements) {
      element.accept(visitor);
    }
  }
}
```

In this example, we define two Concrete Element classes (`ConcreteElementA` and `ConcreteElementB`) that implement the Element interface. We also define two Concrete Visitor classes (`ConcreteVisitor1` and `ConcreteVisitor2`) that implement the Visitor interface and provide an implementation for each operation.

We then define a `main()` function that creates instances of the Concrete Element and Concrete Visitor classes, and iterates over them to perform the operations.

In the `main()` function, we create two arrays: one containing instances of the Concrete Element classes, and another containing instances of the Concrete Visitor classes. We then iterate over the visitors and elements, calling the accept method on each element and passing in the current visitor. The appropriate visit method is then called on the visitor, performing the operation on the element.

When we run the `main()` function, we get the following output:

```
ConcreteElementA visited by ConcreteVisitor1
ConcreteElementB visited by ConcreteVisitor1
ConcreteElementA visited by ConcreteVisitor2
ConcreteElementB visited by ConcreteVisitor2
```

As you can see, the Concrete Visitor classes perform different operations on the Concrete Element classes depending on their type, and we can easily add new operations by creating new Concrete Visitor classes.

## Conclusion

The Visitor design pattern is a powerful tool for separating the algorithm from the objects on which it operates. It allows you to add new operations to a hierarchy of classes without modifying the classes themselves, making it easy to extend the functionality of your code. If you have a hierarchy of classes and want to perform operations on them without modifying the classes themselves, the Visitor design pattern is definitely worth considering.