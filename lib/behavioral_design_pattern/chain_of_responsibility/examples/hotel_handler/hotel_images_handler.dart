import 'hotel.dart';
import 'hotel_handler.dart';

class HotelImagesHandler extends HotelHandler {
  const HotelImagesHandler({required super.nextHandler});

  @override
  void handle({required Hotel hotel}) {
    hotel.images = 'New Hotel Images';
    nextHandler?.handle(hotel: hotel);
  }
}
