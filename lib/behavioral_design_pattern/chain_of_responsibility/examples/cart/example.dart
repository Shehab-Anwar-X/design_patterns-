import 'fifty_discount_handler.dart';
import 'ten_percent_discount.dart';

import 'cart.dart';

void main() {
  final cart = Cart(totalPrice: 150.0);
  final fiftyDiscountHandler = FiftyDiscountHandler(nexHandler: null);
  final tenPercentDiscountHandler = TenPercentDiscount(nexHandler: fiftyDiscountHandler);

  tenPercentDiscountHandler.handleRequest(cart: cart);
}
