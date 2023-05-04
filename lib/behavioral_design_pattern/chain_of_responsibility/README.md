# Chain of Responsibility (CoR) Design Pattern

The Chain of Responsibility (CoR) design pattern is a behavioral pattern that allows multiple objects to handle a request without the sender needing to know which object will handle the request. The objects are chained together and the request is passed down the chain until it is handled by one of the objects. The chain can be reconfigured at runtime by adding or removing objects.

## Problem

Suppose you have a task that can be handled by multiple objects in your application. You don't want to hard-code the handling logic in the sender of the task because it would make the code brittle and difficult to maintain. You also don't want to have to know which object will handle the task at runtime because it would violate the open-closed principle of software design.

## Solution

The Chain of Responsibility pattern provides a solution to the problem by separating the handling logic from the sender and creating a chain of handlers. Each handler in the chain has a reference to the next handler in the chain. When a task is sent to the chain, it is passed down the chain until it is handled by one of the handlers.

Each handler in the chain decides whether it can handle the task or not. If it can handle the task, it handles it and returns. If it cannot handle the task, it passes the task to the next handler in the chain.

## Participants

* **Handler**: An interface that declares a method for handling requests and a reference to the next handler in the chain.
* **ConcreteHandler**: Implements the handling method and determines whether it can handle the request or passes it to the next handler in the chain.
* **Client**: Creates and sends requests to the chain of handlers.

## Benefits

The Chain of Responsibility pattern offers several benefits, including:

* Reduced coupling between sender and receiver objects.
* Improved flexibility and extensibility by allowing the chain to be reconfigured at runtime.
* Improved code reuse by allowing handlers to be reused in different chains.

## Drawbacks

The Chain of Responsibility pattern has some drawbacks, including:

* Increased complexity due to the chain structure.
* Potential performance impact due to the traversal of the chain.
* Difficulty in determining the responsibility chain at runtime.

## Dart Example

Here is an example of how to implement the Chain of Responsibility pattern in Dart using a chain of screen navigators:

```dart
abstract class DiscountHandler {
  DiscountHandler _nextHandler;

  void setNext(DiscountHandler handler) {
    _nextHandler = handler;
  }

  double applyDiscount(double price);

  double calculateDiscountedPrice(double price) {
    double discountedPrice = applyDiscount(price);

    if (discountedPrice == price && _nextHandler != null) {
      // If this handler cannot apply a discount, pass the price to the next handler
      discountedPrice = _nextHandler.calculateDiscountedPrice(price);
    }

    return discountedPrice;
  }
}

class PercentDiscountHandler extends DiscountHandler {
  double _discountPercent;

  PercentDiscountHandler(double discountPercent) {
    _discountPercent = discountPercent;
  }

  @override
  double applyDiscount(double price) {
    double discountAmount = price * (_discountPercent / 100);
    return price - discountAmount;
  }
}

class FlatDiscountHandler extends DiscountHandler {
  double _discountAmount;

  FlatDiscountHandler(double discountAmount) {
    _discountAmount = discountAmount;
  }

  @override
  double applyDiscount(double price) {
    return price - _discountAmount;
  }
}

class NoDiscountHandler extends DiscountHandler {
  @override
  double applyDiscount(double price) {
    return price;
  }
}

void main() {
  DiscountHandler discountHandler = PercentDiscountHandler(10.0);
  discountHandler.setNext(FlatDiscountHandler(5.0));
  discountHandler.setNext(NoDiscountHandler());

  double price = 100.0;
  double discountedPrice = discountHandler.calculateDiscountedPrice(price);

  print('Price: \$${price.toStringAsFixed(2)}, Discounted Price: \$${discountedPrice.toStringAsFixed(2)}');
}
```