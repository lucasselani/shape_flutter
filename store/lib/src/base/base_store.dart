import 'package:mobx/mobx.dart';
import 'package:repository/repository.dart';

abstract class BaseStore<T> {
  JsonRepository repository;

  BaseStore(this.repository);

  ObservableFuture<T> data;

  Future getData();
  T getDataNow();
}
