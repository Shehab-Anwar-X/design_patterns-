import '../i_bank.dart';

class BankC implements IBank {
  const BankC();

  @override
  void withdraw() {
    print('your request is handling by bankC');
  }
}
