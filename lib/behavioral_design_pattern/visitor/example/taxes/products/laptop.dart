import '../interfaces/visitor.dart';
import '../interfaces/visitable.dart';
import '../interfaces/electronic_product.dart';

class Laptop extends ElectronicProduct  implements Visitable{
  Laptop({
    required super.id,
    required super.name,
    required super.price,
  });

  @override
  void accept({required Visitor visitor}) {
    visitor.visitElectronicProduct(electronicProduct: this);

  }
}
