import 'remote_datasource.dart';

import 'product_adapter.dart';

Future<void> main() async {
  final adapter = ProductAdapter(dataSource: ProductRemoteDatasource());
  final product = await adapter.fetchData(id: 1);
  print('Product: ${product.toMap()}');
}
