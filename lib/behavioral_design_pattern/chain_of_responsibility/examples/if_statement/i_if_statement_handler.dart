abstract class IIfStatementHandler {
  final IIfStatementHandler? nextHandler;
  final bool condition;

  const IIfStatementHandler({
    required this.nextHandler,
    required this.condition,
  });

  void handle();
}
