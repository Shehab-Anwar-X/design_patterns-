# Strategy Design Pattern

The Strategy Design Pattern is a behavioral design pattern that enables an object, called the context, to dynamically change its behavior by selecting an appropriate algorithm from a set of interchangeable algorithms, called strategies, at runtime.

The pattern is useful when there are multiple algorithms that can be used to solve a problem, and the choice of algorithm depends on the specific requirements of the situation. Rather than hardcoding the algorithm into the context object, the Strategy pattern encapsulates each algorithm in a separate object and allows the context to select the appropriate strategy dynamically.

## Participants

- **Context**: The object that uses a Strategy. It maintains a reference to a Strategy object and delegates to it the task of performing a certain behavior. The Context object can also define an interface for accessing and managing strategies.
- **Strategy**: The interface or abstract class that defines the behavior of the algorithm that can be used by the Context object. Each concrete strategy implements the interface and provides a specific behavior.
- **Concrete Strategy**: The class that implements a specific behavior defined in the Strategy interface.

## Example

Consider a sorting application that can sort a list of integers using different algorithms. The application can be implemented using the Strategy pattern as follows:

```dart
abstract class SortStrategy {
  void sort(List<int> list);
}

class BubbleSortStrategy implements SortStrategy {
  @override
  void sort(List<int> list) {
    print('BubbleSortStrategy');
    // bubble sort implementation
  }
}

class QuickSortStrategy implements SortStrategy {
  @override
  void sort(List<int> list) {
    print('QuickSortStrategy');
    // quick sort implementation
  }
}

class Sorter {
  final SortStrategy strategy;

  Sorter(this.strategy);

  void sort(List<int> list) {
    strategy.sort(list);
  }
}

void main() {
  final list = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5];

  final sorter1 = Sorter(BubbleSortStrategy());
  sorter1.sort(list); // output: BubbleSortStrategy

  final sorter2 = Sorter(QuickSortStrategy());
  sorter2.sort(list); // output: QuickSortStrategy
}
```

In this example, the `SortStrategy` interface defines the behavior of the sorting algorithms. The `BubbleSortStrategy` and `QuickSortStrategy` classes implement the `SortStrategy` interface and provide their own implementation of the `sort` method.

The `Sorter` class is the context object that uses a strategy to sort a list of integers. The `Sorter` class maintains a reference to a `SortStrategy` object and delegates the task of sorting to it.

The `main` function creates two instances of the `Sorter` class, one with a `BubbleSortStrategy` object and another with a `QuickSortStrategy` object. When the `sort` method is called on each of these instances, the appropriate strategy is selected dynamically based on the `SortStrategy` object passed to the constructor of the `Sorter` object.

## Advantages

- Provides a flexible way to switch between different algorithms or behaviors at runtime.
- Encapsulates each algorithm or behavior in a separate object, making it easier to modify, test, and reuse.
- Promotes the use of composition over inheritance, allowing behaviors to be added or removed dynamically.

## Disadvantages

- Can result in a large number of classes and objects, especially if there are many algorithms or behaviors to implement.
- Can add complexity to the code if the context object needs to manage multiple strategies.

## When to use it

The Strategy pattern is useful in the following scenarios:

- When there are multiple algorithms or behaviors that can be used to solve a problem, and the choice of algorithm or behavior depends on the specific requirements of the situation.
- When it is necessary to switch between different algorithms or behaviors at runtime, without affecting the behavior of the context object.
- When there is a need to encapsulate each algorithm or behavior in a separate object, making it easier to modify, test, and reuse.

## Conclusion

The Strategy Design Pattern is a useful pattern that allows the behavior of an object to be changed dynamically by selecting an appropriate algorithm or behavior at runtime. By encapsulating each algorithm or behavior in a separate object, the pattern promotes the use of composition over inheritance and makes it easier to modify, test, and reuse the code. While the pattern can add complexity to the code, it is useful in situations where there are multiple algorithms or behaviors to implement and the choice of algorithm or behavior depends on the specific requirements of the situation.