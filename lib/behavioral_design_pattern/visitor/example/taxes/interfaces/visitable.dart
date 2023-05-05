import 'visitor.dart';

abstract class Visitable {
  const Visitable();

  void accept({required Visitor visitor});
}
