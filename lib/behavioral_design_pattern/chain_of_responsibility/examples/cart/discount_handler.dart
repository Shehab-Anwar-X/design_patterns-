import 'cart.dart';

abstract class DiscountHandler {
  final DiscountHandler? nexHandler;

  const DiscountHandler({required this.nexHandler});

  void handleRequest({required Cart cart});
}
