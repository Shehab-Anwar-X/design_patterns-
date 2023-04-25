import 'i_sms_quota.dart';
import 'mobile_phone_sms.dart';
import 'i_sms.dart';

/// Helper class that is supposed to handle the database queries.
class SmsQuota implements ISmsQuota {
  SmsQuota();

  static const _mobilePhoneQuota = 10;
  final Map<int, int> _sentCount = <int, int>{};

  @override
  bool canSendANewMessage({required int customerId, required ISms type}) {
    switch (type.runtimeType) {
      case MobilePhoneSms:
        return messagesSentNumber(customerId: customerId, type: type) <
            _mobilePhoneQuota;
      default:
        throw Exception('Not supported yet!');
    }
  }

  @override
  int messagesSentNumber({required int customerId, required ISms type}) {
    switch (type.runtimeType) {
      case MobilePhoneSms:
        if (_sentCount[customerId] == null) {
          _sentCount[customerId] = 0;
        }
        return _sentCount[customerId]!;
      default:
        throw Exception('Not supported yet!');
    }
  }

  @override
  void increasedMessagesSent({required int customerId, required ISms type}) {
    switch (type.runtimeType) {
      case MobilePhoneSms:
        if (_sentCount[customerId] == null) {
          _sentCount[customerId] = 0;
        }
        _sentCount[customerId] = _sentCount[customerId]! + 1;
        break;
      default:
        throw Exception('Not supported yet!');
    }
  }
}
