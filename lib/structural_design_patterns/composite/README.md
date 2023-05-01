# Composite Design Pattern

The Composite Design Pattern is a structural pattern in object-oriented programming that allows you to compose objects into a tree-like structure and treat both individual objects and groups of objects uniformly.

## Problem Statement

Imagine you have a system that needs to represent a hierarchical structure of objects, where each object can either be a single object or a group of objects. You want to be able to treat individual objects and groups of objects uniformly, without having to know whether you are dealing with a single object or a group of objects. Furthermore, you want to be able to easily add or remove objects from the hierarchy without affecting the rest of the structure.

## Solution

The solution to this problem is to use the Composite Design Pattern. This pattern allows you to represent a hierarchy of objects using a tree-like structure, where each node in the tree can either be a single object or a group of objects. The pattern consists of three main components:

1. **Component**: This is an abstract class or interface that defines the common behavior and/or interface that all the components in the composite will share. It specifies the methods that the composite object and individual components should implement.

2. **Composite**: This is a class that represents a group of components. It implements the Component interface and also contains an array or collection of child components.

3. **Leaf**: This is a class that represents an individual component in the composite. It also implements the Component interface, but it has no child components.

By using the composite design pattern, you can create hierarchical structures that can be easily manipulated and traversed. This pattern is commonly used in graphical user interfaces, where a user interface element can contain other user interface elements. It is also used in file systems, where a directory can contain other directories and files.

## Example

Here's an example of how the composite design pattern can be implemented in Dart to represent a hierarchy of file directories and files:

```dart
abstract class FileSystemItem {
  String get name;
  void printName();
}

class FileItem implements FileSystemItem {
  final String name;

  FileItem(this.name);

  @override
  void printName() {
    print('File: $name');
  }
}

class DirectoryItem implements FileSystemItem {
  final String name;
  final List<FileSystemItem> items = [];

  DirectoryItem(this.name);

  void add(FileSystemItem item) {
    items.add(item);
  }

  @override
  void printName() {
    print('Directory: $name');
    items.forEach((item) => item.printName());
  }
}

void main() {
  final root = DirectoryItem('root');
  final dir1 = DirectoryItem('dir1');
  final dir2 = DirectoryItem('dir2');
  final file1 = FileItem('file1.txt');
  final file2 = FileItem('file2.txt');
  
  dir1.add(file1);
  dir2.add(file2);
  root.add(dir1);
  root.add(dir2);
  
  root.printName();
}
```

In this example, the `FileSystemItem` abstract class defines the common interface for both files and directories. The `FileItem` and `DirectoryItem` classes implement this interface, with `DirectoryItem` having the additional capability to store a list of child items.

The `printName()` method is used to print out the name of each file or directory in the hierarchy, as well as all of its child items if it is a directory.

In the `main()` function, we create a hierarchy of directories and files and add them to the root directory. Finally, we call `printName()` on the root directory to print out the entire hierarchy.

## Conclusion

The Composite Design Pattern is a powerful pattern that allows you to represent hierarchical structures of objects in a