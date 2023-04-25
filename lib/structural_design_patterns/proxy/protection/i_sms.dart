/// Sms Interface.
abstract class ISms {
  const ISms._();

  void sendMessage({
    required int customerId,
    required String phone,
    required String message,
  });
}
