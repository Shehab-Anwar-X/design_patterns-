import 'manager_employee.dart';
import 'team_lead_employee.dart';
import 'junior_employee.dart';

abstract class Visitor {
  const Visitor();

  void visitJuniorEmployee({required JuniorEmployee employee});

  void visitTeamLeadEmployee({required TeamLeadEmployee employee});

  void visitManagerEmployee({required ManagerEmployee employee});
}
