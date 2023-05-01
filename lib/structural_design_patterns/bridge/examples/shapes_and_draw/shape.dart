import 'draw_api.dart';

// Define the abstraction hierarchy for shapes.
abstract class Shape {
  final DrawAPI drawAPI;

  const Shape(this.drawAPI);

  void draw();
}
