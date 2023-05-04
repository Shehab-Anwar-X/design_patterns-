class Hotel {
  String location = '';
  String cityName = '';
  String restaurants = '';
  String images = '';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'city_name': cityName,
      'restaurants': restaurants,
      'images': images,
    };
  }
}
