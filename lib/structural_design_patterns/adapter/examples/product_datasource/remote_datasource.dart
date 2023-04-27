import 'datasource.dart';

class ProductRemoteDatasource implements ProductDataSource {
  const ProductRemoteDatasource();

  @override
  Future<Map<String, dynamic>> fetchData({required int id}) async {
    // calling request ...
    await Future<void>.delayed(Duration(seconds: 1));

    return <String, dynamic>{
      'id': 1,
      'name': 'Product',
      'description': 'bla bla bla',
    };
  }
}
