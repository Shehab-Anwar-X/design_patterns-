import 'draw_api.dart';

// Implement the drawing APIs for different platforms.
class DrawAPI1 implements DrawAPI {
  @override
  void drawCircle(double x, double y, double radius) {
    print("Drawing Circle[ color: red, radius: $radius, x: $x, y: $y]");
  }
}
