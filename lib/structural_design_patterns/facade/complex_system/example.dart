import 'authentication.dart';
import 'payments.dart';
import 'profile.dart';
import 'my_system_facade.dart';

Future<void> main() async {
  final facade = MySystemFacade(
    auth: Authentication(),
    payments: Payments(),
    profile: Profile(),
  );

  final message = await facade.doCustomOperation(
    email: 'shehabanwar.x@gmail.com',
    password: '123456',
  );
  print('Message: $message');
}
