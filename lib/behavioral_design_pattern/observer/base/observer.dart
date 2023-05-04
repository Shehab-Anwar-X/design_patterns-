import 'observable.dart';

abstract class Observer {
  final Observable observable;

  const Observer({
    required this.observable,
  });

  void listener({required String newState});
}
