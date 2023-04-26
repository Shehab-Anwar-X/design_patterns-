import 'cheese_burger.dart';
import 'extra_beef_burger.dart';
import 'burger.dart';
import 'i_burger.dart';
import 'ketchup.dart';

void main() {
  final simpleBurger = Burger();
  printBurgerDetails(simpleBurger);

  final cheeseBurger = CheeseBurger(burger: simpleBurger);
  printBurgerDetails(cheeseBurger);

  final extraBeefBurgerWithCheese = ExtraBeefBurger(burger: cheeseBurger);
  printBurgerDetails(extraBeefBurgerWithCheese);

  final superExtraBeefBurgerWithCheese = ExtraBeefBurger(
    burger: extraBeefBurgerWithCheese,
  );
  printBurgerDetails(superExtraBeefBurgerWithCheese);

  final superExtraBeefBurgerWithCheeseAndKetchup = BurgerKetchup(
    burger: ExtraBeefBurger(burger: extraBeefBurgerWithCheese),
  );
  printBurgerDetails(superExtraBeefBurgerWithCheeseAndKetchup);
}

void printBurgerDetails(IBurger burger) {
  print('Cost: ${burger.getCost()}, Components: ${burger.getComponents()}');
}
