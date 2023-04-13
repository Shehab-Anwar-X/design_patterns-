import 'i_sms.dart';

abstract class ISmsQuota {
  const ISmsQuota._();

  bool canSendANewMessage({required int customerId, required ISms type});

  int messagesSentNumber({required int customerId, required ISms type});

  void increasedMessagesSent({required int customerId, required ISms type});
}
