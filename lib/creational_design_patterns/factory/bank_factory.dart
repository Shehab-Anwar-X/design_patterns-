import 'banks/bank_a.dart';
import 'banks/bank_b.dart';
import 'banks/bank_c.dart';
import 'banks/bank_d.dart';
import 'i_bank.dart';
import 'i_bank_factory.dart';

/// Concrete class that implements the [IBankFactory].
class BankFactory implements IBankFactory {
  const BankFactory();

  @override
  IBank getBank({required String bankCode}) {
    switch (bankCode) {
      case '111111':
        return BankA();
      case '222222':
        return BankB();
      case '333333':
        return BankC();
      case '444444':
        return BankD();
      default:
        throw Exception('Unsupported Bank!');
    }
  }
}
