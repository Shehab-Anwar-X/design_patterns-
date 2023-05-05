import 'products/air_pods.dart';
import 'products/laptop.dart';
import 'products/mobile_phone.dart';
import 'visitors/value_added_tax.dart';
import 'interfaces/electronic_product.dart';

void main() {
  final electronics = <ElectronicProduct>[
    AirPods(id: 1, name: 'Airpods', price: 30),
    Laptop(id: 2, name: 'Laptop', price: 130),
    MobilePhone(id: 3, name: 'Samsung', price: 100),
  ];

  final visitor = ValueAddedTaxVisitor();
  for (final electronicProduct in electronics) {
    visitor.visitElectronicProduct(electronicProduct: electronicProduct);
  }
}
