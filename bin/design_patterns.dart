import 'package:design_patterns/structural_design_patterns/proxy/virtual/awesome.dart';
import 'package:design_patterns/structural_design_patterns/proxy/virtual/traditional.dart';

void main() {
 final a = AwesomeVirtualRealDatabaseConnectionProxy(connectionString: '');
 a.fun1();
}
