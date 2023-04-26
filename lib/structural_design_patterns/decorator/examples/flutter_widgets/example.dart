import 'container.dart';
import 'i_widget.dart';
import 'widget.dart';
import 'padding.dart';

void main() {
  final simpleWidget = Widget(content: 'Simple Widget');
  drawWidget(simpleWidget);

  final container = Container(widget: simpleWidget);
  drawWidget(container);

  final padding = Padding(widget: simpleWidget);
  drawWidget(padding);

  final containerWithPadding = Padding(widget: container);
  drawWidget(containerWithPadding);
}

void drawWidget(IWidget widget) {
  print(widget.draw());
}
