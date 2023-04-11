import '../i_bank.dart';

class BankB implements IBank {
  const BankB();

  @override
  void withdraw() {
    print('your request is handling by bankB');
  }
}
