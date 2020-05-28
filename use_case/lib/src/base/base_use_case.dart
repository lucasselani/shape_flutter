import 'package:repository/repository.dart';

abstract class BaseUseCase<T> {
  JsonRepository repository;

  BaseUseCase(this.repository);

  T data;

  Future getData();
}
