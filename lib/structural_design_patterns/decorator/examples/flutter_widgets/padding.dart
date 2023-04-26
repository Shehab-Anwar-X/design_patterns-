import 'decorator_widget.dart';

class Padding extends DecoratorWidget {
  final double top;
  final double right;
  final double left;
  final double bottom;

  const Padding({
    required super.widget,
    this.top = 1.0,
    this.right = 1.0,
    this.left = 1.0,
    this.bottom = 1.0,
  });

  @override
  String draw() {
    return '${widget.draw()}, Wrapped with padding top=$top, right=$right, left=$left, bottom=$bottom';
  }
}
