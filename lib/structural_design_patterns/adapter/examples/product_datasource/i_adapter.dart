import 'datasource.dart';
import 'model/product.dart';

abstract class IProductAdapter {
  final ProductDataSource dataSource;

  const IProductAdapter({required this.dataSource});

  Future<Product> fetchData({required int id});
}
