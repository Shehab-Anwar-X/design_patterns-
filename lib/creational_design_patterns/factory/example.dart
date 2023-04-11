import 'bank_factory.dart';
import 'i_bank.dart';

void main(List<String> arguments) {
  final bankCode = '111111';
  IBank bank = BankFactory().getBank(bankCode: bankCode);
  bank.withdraw();
}
