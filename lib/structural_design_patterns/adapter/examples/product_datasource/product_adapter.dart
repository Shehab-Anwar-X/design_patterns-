import 'model/product.dart';
import 'i_adapter.dart';

class ProductAdapter extends IProductAdapter {
  const ProductAdapter({required super.dataSource});

  @override
  Future<Product> fetchData({required int id}) async {
    final data = await dataSource.fetchData(id: id);
    return Product.fromMap(data);
  }
}
