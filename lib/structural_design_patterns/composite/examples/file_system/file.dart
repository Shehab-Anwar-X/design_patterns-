import 'dart:io';
import 'directory_component.dart';

class FileComponent extends DirectoryComponent {
  const FileComponent({required super.name});

  @override
  void showDirectory({required int space}) {
    for (int index = 0; index < space; index++) {
      stdout.write('\t');
    }
    print(name);
  }
}
