import 'image.dart';

class RealImage implements Image {
  final String imageName;

  RealImage({required this.imageName}) {
    _loadFromDisk(imgName: imageName);
  }

  Future<void> _loadFromDisk({required String imgName}) async {
    print('$imageName image is loading ...');
  }

  @override
  void display() {
    print("Displaying $imageName");
  }
}
