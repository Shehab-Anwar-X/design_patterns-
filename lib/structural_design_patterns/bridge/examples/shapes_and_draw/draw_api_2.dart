import 'draw_api.dart';

class DrawAPI2 implements DrawAPI {
  @override
  void drawCircle(double x, double y, double radius) {
    print("Drawing Circle[ color: green, radius: $radius, x: $x, y: $y]");
  }
}
