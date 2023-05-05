import '../../interface/visitor.dart';
import '../../interface/team_lead_employee.dart';

class TeamLeadEmployee1 extends TeamLeadEmployee {
  const TeamLeadEmployee1({
    required super.id,
    required super.name,
    required super.salary,
  });

  @override
  void accept({required Visitor visitor}) {
    visitor.visitTeamLeadEmployee(employee: this);
  }
}

class TeamLeadEmployee2 extends TeamLeadEmployee {
  const TeamLeadEmployee2({
    required super.id,
    required super.name,
    required super.salary,
  });

  @override
  void accept({required Visitor visitor}) {
    visitor.visitTeamLeadEmployee(employee: this);
  }
}

class TeamLeadEmployee3 extends TeamLeadEmployee {
  const TeamLeadEmployee3({
    required super.id,
    required super.name,
    required super.salary,
  });

  @override
  void accept({required Visitor visitor}) {
    visitor.visitTeamLeadEmployee(employee: this);
  }
}
