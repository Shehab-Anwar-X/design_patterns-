import 'hotel.dart';
import 'hotel_handler.dart';

class HotelLocationHandler extends HotelHandler {
  HotelLocationHandler({required super.nextHandler});

  @override
  void handle({required Hotel hotel}) {
    hotel.location = "New Location";
    nextHandler?.handle(hotel: hotel);
  }
}
