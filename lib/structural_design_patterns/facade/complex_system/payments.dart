// Payments subsystem
class Payments {
  Future<void> makePayment(double amount) async {
    // make payment logic
    await Future<void>.delayed(Duration(seconds: 1));
  }

  Future<double> getBalance() async {
    // get balance logic
    await Future<void>.delayed(Duration(seconds: 1));
    return 10.0;
  }
}
