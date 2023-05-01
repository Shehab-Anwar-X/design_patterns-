import 'directory_component.dart';
import 'dart:io';

class Folder extends DirectoryComponent {
  Folder({required super.name});

  final _children = <DirectoryComponent>[];

  Folder addComponent({required DirectoryComponent component}) {
    _children.add(component);
    return this;
  }

  Folder removeComponent({required String name}) {
    _children.removeWhere(
      (element) => element.name.toLowerCase() == name.toLowerCase(),
    );
    return this;
  }

  @override
  void showDirectory({required int space}) {
    for (int index = 0; index < space; index++) {
      stdout.write('\t');
    }
    print(name);

    for (final child in _children) {
      child.showDirectory(space: space + 1);
    }
  }
}
