import 'decorator_widget.dart';

class Container extends DecoratorWidget {
  const Container({required super.widget});

  @override
  String draw() {
    return '${widget.draw()}, Wrapped with container';
  }
}
