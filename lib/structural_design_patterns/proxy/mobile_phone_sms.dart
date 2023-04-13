import 'i_sms.dart';

class MobilePhoneSms implements ISms {
  @override
  void sendMessage({
    required int customerId,
    required String phone,
    required String message,
  }) {
    print(
      'The "$message" Sms message has sent to the "$phone" phone by id "$customerId"',
    );
  }
}
