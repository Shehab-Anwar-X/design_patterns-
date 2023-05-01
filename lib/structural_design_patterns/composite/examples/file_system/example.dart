import 'file.dart';

import 'folder.dart';

void main() {
  final compositeDPFolder = Folder(name: 'composite');
  final examplesFolder = Folder(name: 'examples');
  final fileSystemFolder = Folder(name: 'file_system');

  final dirComponentFile = FileComponent(name: 'directory_component.dart');
  final exampleFile = FileComponent(name: 'example.dart');
  final fileFile = FileComponent(name: 'file.dart');
  final folderFile = FileComponent(name: 'folder.dart');

  final readmeFile = FileComponent(name: 'README.md');

  compositeDPFolder
      .addComponent(
        component: examplesFolder
            .addComponent(component: fileSystemFolder)
            .addComponent(component: dirComponentFile)
            .addComponent(component: exampleFile)
            .addComponent(component: fileFile)
            .addComponent(component: folderFile),
      )
      .addComponent(component: readmeFile);

  compositeDPFolder.showDirectory(space: 0);

  print('--------------------------------');

  final structuralDPFolder = Folder(name: 'structural_design_patterns');
  final adapterFolder = Folder(name: 'adapter');
  final decoratorFolder = Folder(name: 'decorator');
  final facadeFolder = Folder(name: 'facade');
  final proxyFolder = Folder(name: 'proxy');

  structuralDPFolder
      .addComponent(component: adapterFolder)
      .addComponent(component: compositeDPFolder)
      .addComponent(component: decoratorFolder)
      .addComponent(component: facadeFolder)
      .addComponent(component: proxyFolder);

  structuralDPFolder.showDirectory(space: 0);
}
