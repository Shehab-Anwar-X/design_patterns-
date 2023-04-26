import 'shape.dart';
import 'shape_decorator.dart';

class RedShapeDecorator extends ShapeDecorator {
  RedShapeDecorator({required super.decoratedShape});

  @override
  String draw() {
    return decoratedShape.draw() + _setRedBorder(decoratedShape);
  }

  String _setRedBorder(Shape decoratedShape) {
    return "Border Color: Red";
  }
}
