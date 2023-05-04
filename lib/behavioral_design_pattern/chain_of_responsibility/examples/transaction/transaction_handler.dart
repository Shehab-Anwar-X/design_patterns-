import 'package:design_patterns/behavioral_design_pattern/chain_of_responsibility/examples/transaction/visa_card.dart';

abstract class TransactionHandler {
  final TransactionHandler? nextHandler;

  const TransactionHandler({
    required this.nextHandler,
  });

  void execute({required VisaCard card});
}
