import 'i_burger.dart';

class Burger implements IBurger {
  @override
  List<String> getComponents() {
    return ['bread', 'meat'];
  }

  @override
  double getCost() {
    return 10.0;
  }
}
