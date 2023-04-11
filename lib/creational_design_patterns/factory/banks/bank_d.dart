import '../i_bank.dart';

class BankD implements IBank {
  const BankD();

  @override
  void withdraw() {
    print('your request is handling by bankD');
  }
}
