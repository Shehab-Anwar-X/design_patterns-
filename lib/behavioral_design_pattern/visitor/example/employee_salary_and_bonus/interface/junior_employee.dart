import 'visitable.dart';
import 'employee.dart';

abstract class JuniorEmployee extends Employee implements Visitable {
  const JuniorEmployee({
    required super.id,
    required super.name,
    required super.salary,
  });
}
