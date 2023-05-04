import 'hotel.dart';
import 'hotel_handler.dart';

class HotelCityNameHandler extends HotelHandler {
  const HotelCityNameHandler({required super.nextHandler});

  @override
  void handle({required Hotel hotel}) {
    hotel.cityName = 'New City Name';
    nextHandler?.handle(hotel: hotel);
  }
}
