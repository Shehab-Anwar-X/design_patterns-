import 'builder.dart';
import 'product.dart';
import '../../global/models/wrapped.dart';

class ProductConcrete implements ProductBuilder {
  late Product _product;
  late final Product _nativeProduct;

  ProductConcrete({
    required int id,
    required String title,
    required double price,
  }) {
    _product = Product(id: id, title: title, price: price);
    _nativeProduct = _product.copyWith();
  }

  @override
  Product build() {
    return _product;
  }

  @override
  void reset() {
    _product = _nativeProduct.copyWith();
  }

  @override
  ProductBuilder setBrand(String value) {
    _product = _product.copyWith(brand: Wrapped<String>.value(value));
    return this;
  }

  @override
  ProductBuilder setCategory(String value) {
    _product = _product.copyWith(category: Wrapped<String>.value(value));
    return this;
  }

  @override
  ProductBuilder setDescription(String value) {
    _product = _product.copyWith(description: Wrapped<String>.value(value));
    return this;
  }

  @override
  ProductBuilder setDiscountPercentage(double value) {
    _product = _product.copyWith(
      discountPercentage: Wrapped<double>.value(value),
    );
    return this;
  }

  @override
  ProductBuilder setImages(List<String> value) {
    _product = _product.copyWith(images: Wrapped<List<String>>.value(value));
    return this;
  }

  @override
  ProductBuilder setRating(double value) {
    _product = _product.copyWith(rating: Wrapped<double>.value(value));
    return this;
  }

  @override
  ProductBuilder setStock(int value) {
    _product = _product.copyWith(stock: Wrapped<int>.value(value));
    return this;
  }

  @override
  ProductBuilder setThumbnail(String value) {
    _product = _product.copyWith(thumbnail: Wrapped<String>.value(value));
    return this;
  }
}
