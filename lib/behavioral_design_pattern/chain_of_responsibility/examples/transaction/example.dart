import 'check_visa_card_balance.dart';
import 'complete_transaction.dart';
import 'validate_card.dart';
import 'visa_card.dart';

void main() {
  const vCard = VisaCard(
    cardNumber: '123456',
    cvc: 123,
    endDate: '1-12-2023',
    amount: 1000.0,
  );

  final complete = CompleteTransaction(nextHandler: null);
  final checkBalance = CheckVisaCardBalance(nextHandler: complete);
  final validate = ValidateVisaCard(nextHandler: checkBalance);

  validate.execute(card: vCard);
}
