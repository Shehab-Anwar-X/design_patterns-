abstract class ProductDataSource {
  const ProductDataSource._();

  Future<Map<String, dynamic>> fetchData({required int id});
}
