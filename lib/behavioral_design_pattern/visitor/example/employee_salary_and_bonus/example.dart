import 'concrete/visitor/bonus_visitor.dart';
import 'concrete/visitor/salary_calculator_visitor.dart';
import 'concrete/employee/manager_employee.dart';
import 'concrete/employee/team_lead_employee.dart';
import 'interface/junior_employee.dart';
import 'interface/team_lead_employee.dart';
import 'concrete/employee/junior_employee.dart';
import 'interface/manager_employee.dart';

void main() {
  final managerEmployees = <ManagerEmployee>[
    ManagerEmployee1(id: 1, name: 'Shehab Emp1', salary: 20000),
    ManagerEmployee2(id: 2, name: 'Shehab Emp2', salary: 30000),
    ManagerEmployee3(id: 3, name: 'Shehab Emp3', salary: 40000),
  ];

  final teamLeadEmployee = <TeamLeadEmployee>[
    TeamLeadEmployee1(id: 1, name: 'Shehab TeamLead1', salary: 15000),
    TeamLeadEmployee1(id: 2, name: 'Shehab TeamLead2', salary: 20000),
    TeamLeadEmployee1(id: 3, name: 'Shehab TeamLead3', salary: 25000),
  ];

  final juniorEmployees = <JuniorEmployee>[
    JuniorEmployee1(id: 1, name: 'Shehab JuniorEmployee1', salary: 10000),
    JuniorEmployee2(id: 2, name: 'Shehab JuniorEmployee2', salary: 15000),
    JuniorEmployee3(id: 3, name: 'Shehab JuniorEmployee3', salary: 20000),
  ];

  final managerSalaryCalculator = SalaryCalculatorVisitor();
  for (final manager in managerEmployees) {
    managerSalaryCalculator.visitManagerEmployee(employee: manager);
  }
  print('Total managers salary: ${managerSalaryCalculator.totalSalary}');

  final teamLeadSalaryCalculator = SalaryCalculatorVisitor();
  for (final teamLead in teamLeadEmployee) {
    teamLeadSalaryCalculator.visitTeamLeadEmployee(employee: teamLead);
  }
  print('Total team leads salary: ${teamLeadSalaryCalculator.totalSalary}');

  final juniorSalaryCalculator = SalaryCalculatorVisitor();
  for (final junior in juniorEmployees) {
    juniorSalaryCalculator.visitJuniorEmployee(employee: junior);
  }
  print('Total junior salary: ${juniorSalaryCalculator.totalSalary}');

  print('//////////// Calculate Bonus ////////////');

  final managerBonusCalculator = BonusVisitor();
  for (final manager in managerEmployees) {
    managerBonusCalculator.visitManagerEmployee(employee: manager);
  }
  print('Total managers bonus: ${managerBonusCalculator.totalBonus}');

  final teamLeadBonusCalculator = BonusVisitor();
  for (final teamLead in teamLeadEmployee) {
    teamLeadBonusCalculator.visitTeamLeadEmployee(employee: teamLead);
  }
  print('Total team leads bonus: ${teamLeadBonusCalculator.totalBonus}');

  final juniorBonusCalculator = BonusVisitor();
  for (final junior in juniorEmployees) {
    juniorBonusCalculator.visitJuniorEmployee(employee: junior);
  }
  print('Total junior bonus: ${juniorBonusCalculator.totalBonus}');
}
