import 'arithmetic_expression.dart';

class NumericOperand extends ArithmeticExpression {
  final double value;

  NumericOperand({required this.value});

  @override
  double getValue() {
    return value;
  }
}
