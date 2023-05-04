# Iterator Design Pattern

The Iterator pattern is a behavioral design pattern that provides a way to access the elements of a collection in a sequential manner without exposing the underlying data structure of the collection. It allows you to iterate over the elements of a collection without having to know the internal implementation details of the collection.

The Iterator pattern is useful in situations where you want to provide a way to access the elements of a collection without exposing the underlying data structure. It can also be used to implement lazy evaluation, where elements are only computed as they are needed.

## Participants

The Iterator pattern has two main participants:

1. **Iterable**: This is the interface that defines the methods for accessing the elements of a collection. It includes a method called `iterator()` that returns an instance of the Iterator interface.

2. **Iterator**: This is the interface that defines the methods for accessing the elements of a collection one at a time. It includes methods such as `current()`, which returns the current element; `moveNext()`, which moves to the next element; and `reset()`, which resets the iterator to the beginning of the collection.

## Example

Here's an example of how you might use the Iterator pattern to iterate over a list of integers in Dart:

```dart
class NumberCollection implements Iterable<int> {
  List<int> _numbers = [];

  NumberCollection(this._numbers);

  @override
  Iterator<int> get iterator => _numbers.iterator;
}

void main() {
  final numbers = NumberCollection([1, 2, 3, 4, 5]);

  final iterator = numbers.iterator;
  while (iterator.moveNext()) {
    final number = iterator.current;
    print(number);
  }
}
```

In this example, the `NumberCollection` class implements the `Iterable` interface, which requires the implementation of the `iterator()` method. This method returns an instance of the `ListIterator` class, which provides the implementation of the `Iterator` interface.

In the `main()` function, we create an instance of the `NumberCollection` class with a list of integers. We then create an iterator from the collection by calling the `iterator()` method. We then use a `while` loop to iterate over the elements of the collection, using the `moveNext()` method to move to the next element and the `current()` method to retrieve the current element.

## Advantages

The Iterator pattern has several advantages:

1. It allows you to iterate over the elements of a collection without having to know the internal implementation details of the collection.

2. It can be used to implement lazy evaluation, where elements are only computed as they are needed.

3. It can be used to iterate over collections of any type, including custom collections.

## Disadvantages

The Iterator pattern has a few potential disadvantages:

1. It can add complexity to your code, especially if you are implementing a custom collection.

2. It can be less efficient than iterating over a collection directly, especially if you are dealing with large collections.

## When to Use It

You should consider using the Iterator pattern in the following situations:

1. When you want to provide a way to access the elements of a collection without exposing the underlying data structure.

2. When you want to implement lazy evaluation, where elements are only computed as they are needed.

3. When you need to iterate over collections of any type, including custom collections.

## Conclusion

The Iterator pattern is a useful pattern for providing a way to access the elements of a collection in a sequential manner without exposing the underlying data structure. It can be used to implement lazy evaluation and can be used to iterate over collections of any type, including custom collections. While it can add complexity to your code, it can be a powerful tool in the right situations