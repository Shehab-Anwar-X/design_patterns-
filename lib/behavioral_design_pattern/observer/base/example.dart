import 'concrete_observer.dart';

import 'concrete_observable.dart';

void main() {
  final observable = ConcreteObservable();
  final observer1 = ConcreteObserver(
    observable: observable,
    observerName: 'observer 1',
  );
  final observer2 = ConcreteObserver(
    observable: observable,
    observerName: 'observer 2',
  );
  final observer3 = ConcreteObserver(
    observable: observable,
    observerName: 'observer 3',
  );
  final observer4 = ConcreteObserver(
    observable: observable,
    observerName: 'observer 4',
  );
  observable.attach(observer: observer1);
  observable.attach(observer: observer2);
  observable.updateState(state: 'New State');
  observable.attach(observer: observer3);
  observable.attach(observer: observer4);
  observable.updateState(state: 'New State with 3 and 4');
  observable.detach(observer: observer4);
  observable.updateState(state: 'New State without 4');
}
