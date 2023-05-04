import 'hotel_city_name_handler.dart';
import 'hotel_images_handler.dart';
import 'hotel_restaurants_handler.dart';
import 'hotel_location_handler.dart';
import 'hotel.dart';

void main() {
  final hotel = Hotel();

  final locationHandler = HotelLocationHandler(
    nextHandler: null,
  );
  final cityNameHandler = HotelCityNameHandler(
    nextHandler: locationHandler,
  );
  final restaurantHandler = HotelRestaurantHandler(
    nextHandler: cityNameHandler,
  );
  final imagesHandler = HotelImagesHandler(
    nextHandler: restaurantHandler,
  );

  imagesHandler.handle(hotel: hotel);
  print(hotel.toMap());
}
