import '../interfaces/electronic_product.dart';
import '../interfaces/visitor.dart';

class ValueAddedTaxVisitor extends Visitor {
  @override
  void visitElectronicProduct({
    required ElectronicProduct electronicProduct,
  }) {
    print(
      'Electronic products called: "${electronicProduct.name}" Visited by ValueAddedTaxVisitor',
    );
  }
}
