import 'hotel.dart';
import 'hotel_handler.dart';

class HotelRestaurantHandler extends HotelHandler {
  const HotelRestaurantHandler({required super.nextHandler});

  @override
  void handle({required Hotel hotel}) {
    hotel.restaurants = 'New Restaurants';
    nextHandler?.handle(hotel: hotel);
  }
}
