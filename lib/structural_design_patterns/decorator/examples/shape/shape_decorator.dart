import 'shape.dart';

abstract class ShapeDecorator implements Shape {
  final Shape decoratedShape;

  const ShapeDecorator({required this.decoratedShape});
}
