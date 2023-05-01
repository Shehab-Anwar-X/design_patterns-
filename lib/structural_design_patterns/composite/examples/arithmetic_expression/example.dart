import 'composite_operand.dart';
import 'numeric_operand.dart';

void main() {
  final comp = CompositeOperand(
    firstArithOp: CompositeOperand(
      firstArithOp: NumericOperand(value: 3),
      sign: '*',
      secondArithOp: NumericOperand(value: 4),
    ),
    sign: '+',
    secondArithOp: NumericOperand(value: 8),
  );
  print(comp.getValue());
}
