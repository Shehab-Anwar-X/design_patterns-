import 'package:design_patterns/behavioral_design_pattern/chain_of_responsibility/examples/cart/cart.dart';

import 'discount_handler.dart';

class FiftyDiscountHandler extends DiscountHandler {
  const FiftyDiscountHandler({required super.nexHandler});

  @override
  void handleRequest({required Cart cart}) {
    if(cart.totalPrice>100){
      print('FiftyDiscountHandler that handle this request and Total price became: ${cart.totalPrice - 50}LE');
    }else{
      nexHandler?.handleRequest(cart: cart);
    }
  }
}
