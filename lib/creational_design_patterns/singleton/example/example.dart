import '../smart.dart';
import '../traditional.dart';
import '../awesome.dart';

void main(List<String> arguments) {
  /// Awesome Example.
  final awesomeCounter1 = AwesomeSingletonCounter();
  final awesomeCounter2 = AwesomeSingletonCounter();

  print('Counter1: ${awesomeCounter1.increaseCounter()}');
  print('Counter2: ${awesomeCounter2.increaseCounter()}');
  print('Counter2: ${awesomeCounter2.increaseCounter()}');
  print('Counter1: ${awesomeCounter1.increaseCounter()}');



  /// Smart Example.
  final smartCounter1 = SmartSingletonCounter.instance;
  final smartCounter2 = SmartSingletonCounter.instance;

  print('Counter1: ${smartCounter1.increaseCounter()}');
  print('Counter2: ${smartCounter2.increaseCounter()}');
  print('Counter2: ${smartCounter2.increaseCounter()}');
  print('Counter1: ${smartCounter1.increaseCounter()}');



  /// Traditional Example.
  final traditionalCounter1 = TraditionalSingletonCounter.getInstance();
  final traditionalCounter2 = TraditionalSingletonCounter.getInstance();

  print('Counter1: ${traditionalCounter1.increaseCounter()}');
  print('Counter2: ${traditionalCounter2.increaseCounter()}');
  print('Counter2: ${traditionalCounter2.increaseCounter()}');
  print('Counter1: ${traditionalCounter1.increaseCounter()}');
}
