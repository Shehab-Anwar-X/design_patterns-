import 'real_image.dart';
import 'image.dart';

class VirtualRealImageProxy implements Image {
  final String imageName;

  // using 'late' keyword for Lazy initialization.
  late final RealImage _realImage = RealImage(imageName: imageName);

  VirtualRealImageProxy({required this.imageName});

  @override
  void display() {
    _realImage.display();
  } 
}
