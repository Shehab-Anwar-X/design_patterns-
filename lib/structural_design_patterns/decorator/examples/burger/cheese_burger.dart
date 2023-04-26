import 'burger_decorator.dart';

class CheeseBurger extends BurgerDecorator {
  const CheeseBurger({required super.burger});

  @override
  List<String> getComponents() {
    return burger.getComponents()..add('Cheese');
  }

  @override
  double getCost() {
    return burger.getCost() + 5.0;
  }
}
