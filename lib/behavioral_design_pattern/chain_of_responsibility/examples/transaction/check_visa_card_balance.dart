import 'transaction_handler.dart';
import 'visa_card.dart';

class CheckVisaCardBalance extends TransactionHandler {
  CheckVisaCardBalance({required super.nextHandler});

  @override
  void execute({required VisaCard card}) {
    if (card.amount >= 1000) {
      print('Balance is valid');
      nextHandler?.execute(card: card);
    } else {
      throw Exception('Visa card balance not valid');
    }
  }
}
