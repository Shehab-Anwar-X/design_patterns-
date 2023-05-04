import 'i_if_statement_handler.dart';

class IfStatementHandler extends IIfStatementHandler {
  final String name;

  const IfStatementHandler({
    required super.nextHandler,
    required super.condition,
    required this.name,
  });

  @override
  void handle() {
    if (condition) {
      print('$name handled condition');
    } else {
      nextHandler?.handle();
    }
  }
}
