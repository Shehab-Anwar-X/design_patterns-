import 'amplifier.dart';
import 'pop_corn.dart';
import 'screen.dart';
import 'streaming_player.dart';
import 'theater_light.dart';
import 'projector.dart';

class HomeTheaterFacade {
  const HomeTheaterFacade({
    required this.amplifier,
    required this.popCorn,
    required this.projector,
    required this.screen,
    required this.streamingPlayer,
    required this.theaterLight,
  });

  final Amplifier amplifier;
  final PopCorn popCorn;
  final Projector projector;
  final Screen screen;
  final StreamingPlayer streamingPlayer;
  final TheaterLight theaterLight;

  Future<void> watchMovie({required String movieName}) async {
    await Future.wait([
      amplifier.on(),
      amplifier.setStreamingPlayer(),
      amplifier.setSurroundSound(),
      amplifier.setVolume(),

      popCorn.on(),
      popCorn.pop(),

      projector.on(),
      projector.wideScreen(),

      screen.down(),

      streamingPlayer.on(),
      streamingPlayer.play(),

      theaterLight.dim(),
    ]);
  }
}
