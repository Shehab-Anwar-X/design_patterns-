import 'amplifier.dart';
import 'pop_corn.dart';
import 'projector.dart';
import 'screen.dart';
import 'streaming_player.dart';
import 'theater_light.dart';
import 'home_theater_facade.dart';

Future<void> main() async {
  final facade = HomeTheaterFacade(
    amplifier: Amplifier(),
    popCorn: PopCorn(),
    projector: Projector(),
    screen: Screen(),
    streamingPlayer: StreamingPlayer(),
    theaterLight: TheaterLight(),
  );

  await facade.watchMovie(movieName: 'movie');
}
