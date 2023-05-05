import '../../interface/visitor.dart';
import '../../interface/manager_employee.dart';

class ManagerEmployee1 extends ManagerEmployee {
  const ManagerEmployee1({
    required super.id,
    required super.name,
    required super.salary,
  });

  @override
  void accept({required Visitor visitor}) {
    visitor.visitManagerEmployee(employee: this);
  }
}

class ManagerEmployee2 extends ManagerEmployee {
  const ManagerEmployee2({
    required super.id,
    required super.name,
    required super.salary,
  });

  @override
  void accept({required Visitor visitor}) {
    visitor.visitManagerEmployee(employee: this);
  }
}

class ManagerEmployee3 extends ManagerEmployee {
  const ManagerEmployee3({
    required super.id,
    required super.name,
    required super.salary,
  });

  @override
  void accept({required Visitor visitor}) {
    visitor.visitManagerEmployee(employee: this);
  }
}
