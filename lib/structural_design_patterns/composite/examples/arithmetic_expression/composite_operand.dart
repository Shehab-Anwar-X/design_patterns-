import 'arithmetic_expression.dart';

class CompositeOperand extends ArithmeticExpression {
  final ArithmeticExpression firstArithOp;
  final ArithmeticExpression secondArithOp;
  final String sign;

  CompositeOperand({
    required this.firstArithOp,
    required this.secondArithOp,
    required this.sign,
  }) : assert(sign.length == 1, 'Sign must have a single char');

  @override
  double getValue() {
    final double f;
    final double s;

    f = firstArithOp.getValue();
    s = secondArithOp.getValue();

    return _doOperation(first: f, second: s, sign: sign);
  }
}

double _doOperation({
  required double first,
  required double second,
  required String sign,
}) {
  switch (sign) {
    case '+':
      return first + second;
    case '-':
      return first - second;
    case '*':
      return first * second;
    case '/':
      return first / second;
    default:
      throw Exception('Unsupported Sign');
  }
}
