import 'i_burger.dart';

abstract class BurgerDecorator implements IBurger {
  final IBurger burger;

  const BurgerDecorator({required this.burger});
}
