import 'burger_decorator.dart';

class ExtraBeefBurger extends BurgerDecorator {
  const ExtraBeefBurger({required super.burger});

  @override
  List<String> getComponents() {
    return burger.getComponents()..add('Beef');
  }

  @override
  double getCost() {
    return burger.getCost() + 7.0;
  }
}
