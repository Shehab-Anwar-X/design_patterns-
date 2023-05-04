import 'hotel.dart';

abstract class HotelHandler {
  final HotelHandler? nextHandler;

  const HotelHandler({required this.nextHandler});

  void handle({required Hotel hotel});
}
