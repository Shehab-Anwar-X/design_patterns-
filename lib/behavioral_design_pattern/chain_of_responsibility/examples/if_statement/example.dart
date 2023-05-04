import 'if_statement_handler.dart';

void main() {
  // int x = 10;
  // if (x > 10) {
  //   print('X > 10');
  // } else if (x < 10) {
  //   print('x < 10');
  // } else {
  //   print('x == 10');
  // }

  int x = 11;

  final xIsEqualTen = IfStatementHandler(
    nextHandler: null,
    condition: x == 10,
    name: 'x == 10',
  );
  final xLessThanTen = IfStatementHandler(
    nextHandler: xIsEqualTen,
    condition: x < 10,
    name: 'x < 10',
  );
  final xGreaterThanTen = IfStatementHandler(
    nextHandler: xLessThanTen,
    condition: x > 10,
    name: 'x > 10',
  );

  xGreaterThanTen.handle();
}
