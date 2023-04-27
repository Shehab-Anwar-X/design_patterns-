class Product {
  final int id;
  final String name;
  final String description;

  const Product({
    required this.id,
    required this.name,
    required this.description,
  });

  factory Product.fromMap(Map<String, dynamic> json) {
    return Product(
      id: json["id"] as int,
      name: json["name"] as String? ?? '',
      description: json["description"] as String? ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      "id": id,
      "name": name,
      "description": description,
    };
  }
}
