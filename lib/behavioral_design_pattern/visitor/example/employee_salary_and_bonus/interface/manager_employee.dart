import 'visitable.dart';
import 'employee.dart';

abstract class ManagerEmployee extends Employee implements Visitable {
  const ManagerEmployee({
    required super.id,
    required super.name,
    required super.salary,
  });
}
