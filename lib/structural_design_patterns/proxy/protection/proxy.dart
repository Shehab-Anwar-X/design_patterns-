import 'i_sms.dart';
import 'i_sms_quota.dart';

/// Proxy design pattern.
class SmsQuotaProxy implements ISms {
  /// Constructor dependency injection.
  const SmsQuotaProxy({required this.concreteSms, required this.smsQuota});

  final ISms concreteSms;
  final ISmsQuota smsQuota;

  @override
  void sendMessage({
    required int customerId,
    required String phone,
    required String message,
  }) {
    final canSend = smsQuota.canSendANewMessage(
      customerId: customerId,
      type: concreteSms,
    );

    if (!canSend) {
      throw Exception('You have finished your free quota.');
    }

    concreteSms.sendMessage(
      customerId: customerId,
      phone: phone,
      message: message,
    );

    smsQuota.increasedMessagesSent(customerId: customerId, type: concreteSms);

    return;
  }
}
