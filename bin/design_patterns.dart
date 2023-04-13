import 'package:design_patterns/structural_design_patterns/proxy/mobile_phone_sms.dart';
import 'package:design_patterns/structural_design_patterns/proxy/proxy.dart';
import 'package:design_patterns/structural_design_patterns/proxy/sms_quota.dart';

void main() {
  final sms = SmsQuotaProxy(
    concreteSms: MobilePhoneSms(),
    smsQuota: SmsQuota(),
  );

  for (final i in Iterable<int>.generate(11)) {
    print('I: $i');
    sms.sendMessage(customerId: 1, phone: '01068078350', message: "message");
  }
}
