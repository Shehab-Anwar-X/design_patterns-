import 'concrete.dart';
import '../../global/models/wrapped.dart';
import 'builder.dart';

class Product {
  const Product({
    // Required parameters.
    required this.id,
    required this.title,
    required this.price,
    // Optional parameters.
    this.description,
    this.discountPercentage,
    this.rating,
    this.stock,
    this.brand,
    this.category,
    this.thumbnail,
    this.images,
  });

  /// Required Parameters.
  final int id;
  final String title;
  final double price;

  /// Optional Parameters.
  final String? description;
  final double? discountPercentage;
  final double? rating;
  final int? stock;
  final String? brand;
  final String? category;
  final String? thumbnail;
  final List<String>? images;

  Product copyWith({
    int? id,
    String? title,
    double? price,
    Wrapped<String>? description,
    Wrapped<double>? discountPercentage,
    Wrapped<double>? rating,
    Wrapped<int>? stock,
    Wrapped<String>? brand,
    Wrapped<String>? category,
    Wrapped<String>? thumbnail,
    Wrapped<List<String>>? images,
  }) {
    return Product(
      id: id ?? this.id,
      title: title ?? this.title,
      price: price ?? this.price,
      description: description != null ? description.value : this.description,
      discountPercentage: discountPercentage != null
          ? discountPercentage.value
          : this.discountPercentage,
      rating: rating != null ? rating.value : this.rating,
      stock: stock != null ? stock.value : this.stock,
      brand: brand != null ? brand.value : this.brand,
      category: category != null ? category.value : this.category,
      thumbnail: thumbnail != null ? thumbnail.value : this.thumbnail,
      images: images != null ? images.value : this.images,
    );
  }

  factory Product.fromMap(Map<String, dynamic> json) {
    return Product(
      id: json["id"] as int,
      title: json["title"] as String,
      price: json["price"] as double,
      description: json["description"] as String?,
      discountPercentage: json["discountPercentage"] as double?,
      rating: json["rating"] as double?,
      stock: json["stock"] as int?,
      brand: json["brand"] as String?,
      category: json["category"] as String?,
      thumbnail: json["thumbnail"] as String?,
      images: json["images"] == null ? null : List<String>.from(json["images"]),
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      "id": id,
      "title": title,
      "description": description,
      "price": price,
      "discountPercentage": discountPercentage,
      "rating": rating,
      "stock": stock,
      "brand": brand,
      "category": category,
      "thumbnail": thumbnail,
      "images": images,
    };
  }

  static ProductBuilder builder({
    required int id,
    required String title,
    required double price,
  }) {
    return ProductConcrete(id: id, title: title, price: price);
  }

  @override
  String toString() {
    return 'id: $id, title: $title, price: $price';
  }
}
