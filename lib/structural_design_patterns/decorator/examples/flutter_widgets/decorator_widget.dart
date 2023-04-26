import 'i_widget.dart';

abstract class DecoratorWidget implements IWidget {
  final IWidget widget;

  const DecoratorWidget({required this.widget});
}
