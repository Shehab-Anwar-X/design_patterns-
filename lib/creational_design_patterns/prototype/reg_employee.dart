import 'i_employee.dart';
import 'address.dart';

class RegEmployee implements IEmployee {
  RegEmployee({
    required this.id,
    required this.name,
    required this.address,
  });

  int id;
  String name;
  Address address;

  RegEmployee copyWith({
    int? id,
    String? name,
    Address? address,
  }) {
    return RegEmployee(
      id: id ?? this.id,
      name: name ?? this.name,
      address: address ?? this.address,
    );
  }

  factory RegEmployee.fromMap(Map<String, dynamic> json) {
    return RegEmployee(
      id: json["id"] as int,
      name: json["name"] as String,
      address: Address.fromMap(
        Map<String, dynamic>.from(json["address"] as Map),
      ),
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      "id": id,
      "name": name,
      "address": address.toMap(),
    };
  }

  @override
  RegEmployee deepCopy() {
    return RegEmployee(
      id: id,
      name: name,
      address: address.copyWith(),
    );
  }

  @override
  RegEmployee shallowCopy() {
    return RegEmployee(
      id: id,
      name: name,
      address: address,
    );
  }

  @override
  String toString() {
    return toMap().toString();
  }
}
