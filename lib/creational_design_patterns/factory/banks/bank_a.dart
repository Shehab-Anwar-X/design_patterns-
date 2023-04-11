import '../i_bank.dart';

class BankA implements IBank {
  const BankA();

  @override
  void withdraw() {
    print('your request is handling by bankA');
  }
}
