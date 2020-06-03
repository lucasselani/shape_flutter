import 'package:mobx/mobx.dart';

extension FromFutureList<T> on Future<Iterable<T>> {
  ObservableFuture<ObservableList<T>> toObservable() =>
      ObservableFuture(this.then((value) => ObservableList.of(value)));
}

extension FromList<T> on Iterable<T> {
  ObservableFuture<ObservableList<T>> toObservable() =>
      ObservableFuture(Future.value(ObservableList.of(this)));
}
