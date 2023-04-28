// Facade class
import 'authentication.dart';
import 'payments.dart';
import 'profile.dart';

class MySystemFacade {
  final Authentication _auth;
  final Profile _profile;
  final Payments _payments;

  const MySystemFacade({
    required Authentication auth,
    required Profile profile,
    required Payments payments,
  })  : _auth = auth,
        _profile = profile,
        _payments = payments;

  Future<String> doCustomOperation({
    required String email,
    required String password,
  }) async {
    final logged = await _auth.login(email, password);
    if (!logged) {
      throw Exception('Not Logged!');
    }

    // do an very important operation.
    // It's print my name haha...
    final username = await _profile.getUsername();
    print(username);

    final balance = await _payments.getBalance();
    if (balance > 5) {
      await _payments.makePayment(5);
    }
    return 'Done Successfully';
  }
}
