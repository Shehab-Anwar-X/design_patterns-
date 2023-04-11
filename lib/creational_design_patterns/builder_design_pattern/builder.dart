import 'product.dart';

/// Interface class.
abstract class ProductBuilder {
  /// Private constructor to prevent getting an object from this class.
  const ProductBuilder._();

  /// Used to reset all data of [Product] object in builder.
  void reset();

  /// Use to build and return the [Product] object.
  Product build();

  /// Ued to set [Product.description] value.
  ProductBuilder setDescription(String value);

  /// Ued to set [Product.discountPercentage] value.
  ProductBuilder setDiscountPercentage(double value);

  /// Ued to set [Product.rating] value.
  ProductBuilder setRating(double value);

  /// Ued to set [Product.stock] value.
  ProductBuilder setStock(int value);

  /// Ued to set [Product.brand] value.
  ProductBuilder setBrand(String value);

  /// Ued to set [Product.category] value.
  ProductBuilder setCategory(String value);

  /// Ued to set [Product.thumbnail] value.
  ProductBuilder setThumbnail(String value);

  /// Ued to set [Product.images] value.
  ProductBuilder setImages(List<String> value);
}
