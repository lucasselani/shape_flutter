import 'package:repository/repository.dart';

abstract class BaseStore<T extends Repository> {
  T repository;

  BaseStore(this.repository);
}
