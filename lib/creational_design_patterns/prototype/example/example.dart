import '../reg_employee.dart';
import '../address.dart';

void main() {
  print('//////////////// Start ////////////////');
  final employee = RegEmployee(
    id: 1,
    name: 'Shehab',
    address: Address(
      building: '6',
      streetName: 'Al-nasr street',
      city: 'Cairo',
    ),
  );
  print('Employee: $employee');

  print('//////////////// Start Deep Copying ////////////////');
  final deepCopying = employee.deepCopy();
  deepCopying.id = 3;
  deepCopying.name = 'test name3';
  deepCopying.address.building = 'test building';
  deepCopying.address.streetName = 'test street name';
  deepCopying.address.city = 'test city';
  print('Finish');

  print('//////////////// After Shallow Copying ////////////////');
  print('Regular Employee: $employee');
  print('Deep Copy       : $deepCopying');

  print('//////////////// Start Shallow Copying ////////////////');
  final shallowCopying = employee.shallowCopy();
  shallowCopying.id = 2;
  shallowCopying.name = 'test name';
  shallowCopying.address.building = 'test building';
  shallowCopying.address.streetName = 'test street name';
  shallowCopying.address.city = 'test city';

  print('//////////////// After Deep Copying ////////////////');
  print('Regular Employee: $employee');
  print('Shallow Copy    : $shallowCopying');
}
