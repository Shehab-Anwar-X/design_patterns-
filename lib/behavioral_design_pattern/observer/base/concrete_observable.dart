import 'observable.dart';
import 'observer.dart';

class ConcreteObservable extends Observable {
  ConcreteObservable({
    super.state,
  });

  @override
  void notifyListeners({required String newState}) {
    for (var observer in observers) {
      observer.listener(newState: newState);
    }
  }

  @override
  void updateState({required String state}) {
    this.state = state;
    notifyListeners(newState: state);
  }

  @override
  void attach({required Observer observer}) {
    observers.add(observer);
  }

  @override
  void detach({required Observer observer}) {
    observers.remove(observer);
  }
}
