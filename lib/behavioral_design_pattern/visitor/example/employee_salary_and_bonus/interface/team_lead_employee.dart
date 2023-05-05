import 'employee.dart';
import 'visitable.dart';

abstract class TeamLeadEmployee extends Employee implements Visitable {
  const TeamLeadEmployee({
    required super.id,
    required super.name,
    required super.salary,
  });
}
