import 'i_widget.dart';

class Widget implements IWidget {
  const Widget({required this.content});

  final String content;

  @override
  String draw() {
    return content;
  }
}
