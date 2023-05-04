import 'observer.dart';

abstract class Observable {
  List<Observer> observers = [];

  String state;

  Observable({
    this.state = '',
  });

  void updateState({required String state});

  void notifyListeners({required String newState});

  void attach({required Observer observer});

  void detach({required Observer observer});
}
