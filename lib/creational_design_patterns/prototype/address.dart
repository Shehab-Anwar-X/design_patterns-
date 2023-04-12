class Address {
  Address({
    required this.building,
    required this.streetName,
    required this.city,
  });

  String building;
  String streetName;
  String city;

  Address copyWith({
    String? building,
    String? streetName,
    String? city,
  }) {
    return Address(
      building: building ?? this.building,
      streetName: streetName ?? this.streetName,
      city: city ?? this.city,
    );
  }

  factory Address.fromMap(Map<String, dynamic> json) {
    return Address(
      building: json["building"] as String,
      streetName: json["street_name"] as String,
      city: json["city"] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      "building": building,
      "street_name": streetName,
      "city": city,
    };
  }

  @override
  String toString() {
    return toMap().toString();
  }
}
