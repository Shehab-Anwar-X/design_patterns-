import 'burger_decorator.dart';

class BurgerKetchup extends BurgerDecorator {
  const BurgerKetchup({required super.burger});

  @override
  List<String> getComponents() {
    return burger.getComponents()..add('Ketchup');
  }

  @override
  double getCost() {
    return burger.getCost() + 1.0;
  }
}
