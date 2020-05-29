import 'package:repository/repository.dart';

abstract class BaseStore<T> {
  JsonRepository repository;

  BaseStore(this.repository);

  T data;

  Future getData();
}
