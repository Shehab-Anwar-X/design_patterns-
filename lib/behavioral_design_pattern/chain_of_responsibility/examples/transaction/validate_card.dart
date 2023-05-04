import 'transaction_handler.dart';
import 'visa_card.dart';

class ValidateVisaCard extends TransactionHandler {
  ValidateVisaCard({required super.nextHandler});

  @override
  void execute({required VisaCard card}) {
    if (card.cardNumber.length == 6 &&
        card.cvc.toString().length == 3 &&
        card.amount >= 0) {
      print('Visa card is valid');
      nextHandler?.execute(card: card);
    } else {
      throw Exception('Visa card not valid');
    }
  }
}
