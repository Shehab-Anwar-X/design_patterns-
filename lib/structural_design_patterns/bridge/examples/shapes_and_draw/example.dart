import 'circle.dart';
import 'draw_api_1.dart';
import 'draw_api_2.dart';

void main() {
  Circle redCircle = Circle(100, 100, 10, DrawAPI1());
  Circle greenCircle = Circle(200, 200, 20, DrawAPI2());

  redCircle.draw();
  greenCircle.draw();
}
