import '../../interface/visitor.dart';
import '../../interface/junior_employee.dart';

class JuniorEmployee1 extends JuniorEmployee {
  const JuniorEmployee1({
    required super.id,
    required super.name,
    required super.salary,
  });

  @override
  void accept({required Visitor visitor}) {
    visitor.visitJuniorEmployee(employee: this);
  }
}

class JuniorEmployee2 extends JuniorEmployee {
  const JuniorEmployee2({
    required super.id,
    required super.name,
    required super.salary,
  });

  @override
  void accept({required Visitor visitor}) {
    visitor.visitJuniorEmployee(employee: this);
  }
}

class JuniorEmployee3 extends JuniorEmployee {
  const JuniorEmployee3({
    required super.id,
    required super.name,
    required super.salary,
  });

  @override
  void accept({required Visitor visitor}) {
    visitor.visitJuniorEmployee(employee: this);
  }
}
