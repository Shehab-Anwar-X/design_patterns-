import 'observer.dart';

class ConcreteObserver extends Observer {
  final String observerName;

  const ConcreteObserver({
    required super.observable,
    required this.observerName,
  });

  @override
  void listener({required String newState}) {
    print('$observerName listened the notify, state is: $newState');
  }
}
