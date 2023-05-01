import 'arithmetic_expression_component.dart';

class NumericOperand extends ArithmeticExpressionComponent {
  final double value;

  NumericOperand({required this.value});

  @override
  double getValue() {
    return value;
  }
}
