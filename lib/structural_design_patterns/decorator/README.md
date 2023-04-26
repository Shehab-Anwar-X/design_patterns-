# Decorator Design Pattern

The Decorator Design Pattern is a structural pattern that allows adding new behaviors to an existing object dynamically without changing its structure. It is one of the Gang of Four design patterns and provides a flexible alternative to subclassing for extending functionality.

## When to Use the Decorator Pattern

The Decorator pattern is useful when:

- We want to add new behavior to an object dynamically without changing its structure or class.
- We want to add behavior to an object at runtime, rather than compile-time.
- We want to avoid subclassing to add behavior to an object, which can lead to a large number of subclasses and code complexity.
- We want to apply different combinations of behaviors to an object without creating a large number of classes.

## How it Works

The Decorator pattern involves the following components:

- Component: This is the interface or abstract class that defines the operations that can be performed on the object.
- Concrete Component: This is the class that implements the Component interface or abstract class and provides the basic functionality.
- Decorator: This is the abstract class that implements the Component interface or abstract class and adds new behavior to the object. It has a reference to the Component object that it decorates.
- Concrete Decorator: This is the class that extends the Decorator class and adds new behavior to the object.

The Decorator pattern works by creating a chain of decorators that wrap a component object. Each decorator in the chain adds new behavior to the object, and the final object that is created has all the behaviors of the decorators in the chain.

## Example

Suppose we have an interface `Shape` that defines a `draw()` method. We have a concrete implementation of this interface, `Circle`. We want to add new behavior to the Circle class, such as filling it with a color, without modifying the Circle class.

We can use the Decorator pattern to achieve this. First, we create an abstract class `ShapeDecorator` that implements the `Shape` interface and has a reference to a `Shape` object. We create a concrete decorator class `ColorShapeDecorator` that extends the `ShapeDecorator` class and adds a new `fillColor()` method to fill the shape with a color. We can create multiple concrete decorator classes to add different behaviors to the `Shape`.

Here is an example code snippet that demonstrates the Decorator pattern:

```dart
abstract class Shape {
  void draw();
}

class Circle implements Shape {
  @override
  void draw() {
    print("Drawing Circle...");
  }
}

abstract class ShapeDecorator implements Shape {
  Shape _shape;

  ShapeDecorator(Shape shape) {
    _shape = shape;
  }

  @override
  void draw() {
    _shape.draw();
  }
}

class ColorShapeDecorator extends ShapeDecorator {
  String _color;

  ColorShapeDecorator(Shape shape, String color) : super(shape) {
    _color = color;
  }

  void fillColor() {
    print("Filling Shape with $_color color...");
  }

  @override
  void draw() {
    super.draw();
    fillColor();
  }
}

void main() {
  Shape circle = Circle();
  circle.draw();

  Shape coloredCircle = ColorShapeDecorator(Circle(), "Red");
  coloredCircle.draw();
}
```

In this example, we create a Circle object and call its `draw()` method. Then, we create a `ColorShapeDecorator` object that wraps a Circle object and adds the behavior of filling the shape with a color. Finally, we call the `draw()` method on the `ColorShapeDecorator` object, which calls the `draw()` method on the Circle object and then fills it with the specified color.

## Conclusion

The Decorator Design Pattern is a powerful pattern that provides a flexible way to add new behavior to an object dynamically without changing its structure. It allows for a more modular approach to adding new features to an existing system and can help to avoid creating a large number of subclasses.

The Decorator pattern can also help to make code more maintainable and extensible, as it allows for new behaviors to be added without having to modify existing code. It can also make code more readable by separating the core functionality of an object from the additional behaviors that can be added to it.

Overall, the Decorator Design Pattern is a valuable tool for developers to have in their toolkit, and it can be applied in a wide variety of contexts to improve the functionality and flexibility of their applications.