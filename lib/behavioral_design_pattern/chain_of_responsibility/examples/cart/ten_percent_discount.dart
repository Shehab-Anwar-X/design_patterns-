import 'cart.dart';
import 'discount_handler.dart';

class TenPercentDiscount extends DiscountHandler {
  const TenPercentDiscount({required super.nexHandler});

  @override
  void handleRequest({required Cart cart}) {
    if (cart.totalPrice <= 50) {
      print('TenPercentDiscount that handle this request and Total price became: ${0.1 * cart.totalPrice} LE');
    } else {
      nexHandler?.handleRequest(cart: cart);
    }
  }
}
