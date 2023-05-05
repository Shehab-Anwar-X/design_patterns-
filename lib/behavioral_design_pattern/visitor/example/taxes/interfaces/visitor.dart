import 'electronic_product.dart';

abstract class Visitor {
  const Visitor();

  void visitElectronicProduct({
    required ElectronicProduct electronicProduct,
  });
}
