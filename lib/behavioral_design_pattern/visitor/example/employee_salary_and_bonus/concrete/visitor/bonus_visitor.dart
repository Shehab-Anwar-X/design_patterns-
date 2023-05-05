import '../../interface/junior_employee.dart';
import '../../interface/manager_employee.dart';
import '../../interface/team_lead_employee.dart';
import '../../interface/visitor.dart';

class BonusVisitor extends Visitor {
  double totalBonus = 0.0;

  BonusVisitor();

  @override
  void visitJuniorEmployee({required JuniorEmployee employee}) {
    totalBonus += employee.salary * 0.1;
  }

  @override
  void visitManagerEmployee({required ManagerEmployee employee}) {
    totalBonus += employee.salary * 0.3;
  }

  @override
  void visitTeamLeadEmployee({required TeamLeadEmployee employee}) {
    totalBonus += employee.salary * 0.2;
  }
}
