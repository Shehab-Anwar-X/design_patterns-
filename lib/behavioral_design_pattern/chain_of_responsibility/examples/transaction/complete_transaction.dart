import 'dart:math';

import 'transaction_handler.dart';
import 'visa_card.dart';

class CompleteTransaction extends TransactionHandler {
  CompleteTransaction({required super.nextHandler});

  @override
  void execute({required VisaCard card}) {
    if (Random.secure().nextBool()) {
      print('Completed Transaction');
      nextHandler?.execute(card: card);
    } else {
      throw Exception('Transaction Not Completed');
    }
  }
}
