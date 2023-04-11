import 'package:design_patterns/creational_design_patterns/factory/i_bank.dart';

/// Interface class.
abstract class IBankFactory {
  /// Private constructor to prevent getting an object from this class.
  const IBankFactory._();

  IBank getBank({required String bankCode});
}
