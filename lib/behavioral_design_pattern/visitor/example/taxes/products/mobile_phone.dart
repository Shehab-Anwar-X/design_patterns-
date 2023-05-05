import '../interfaces/visitor.dart';
import '../interfaces/visitable.dart';
import '../interfaces/electronic_product.dart';

class MobilePhone extends ElectronicProduct implements Visitable {
  MobilePhone({
    required super.id,
    required super.name,
    required super.price,
  });

  @override
  void accept({required Visitor visitor}) {
    visitor.visitElectronicProduct(electronicProduct: this);
  }
}
