import 'draw_api.dart';
import 'shape.dart';

// Implement the bridge between the two hierarchies.
class Circle extends Shape {
  double x, y, radius;

  Circle(this.x, this.y, this.radius, DrawAPI drawAPI) : super(drawAPI);

  @override
  void draw() {
    drawAPI.drawCircle(x, y, radius);
  }
}
