import '../../interface/junior_employee.dart';
import '../../interface/manager_employee.dart';
import '../../interface/team_lead_employee.dart';
import '../../interface/visitor.dart';

class SalaryCalculatorVisitor extends Visitor {
  double totalSalary = 0.0;

   SalaryCalculatorVisitor();

  @override
  void visitJuniorEmployee({required JuniorEmployee employee}) {
    totalSalary += employee.salary;
  }

  @override
  void visitManagerEmployee({required ManagerEmployee employee}) {
    totalSalary += employee.salary;
  }

  @override
  void visitTeamLeadEmployee({required TeamLeadEmployee employee}) {
    totalSalary += employee.salary;
  }
}
