import 'package:mobx/mobx.dart';
import 'package:repository/repository.dart';
import 'package:use_case/src/base/base_use_case.dart';

part 'category_use_case.g.dart';

class CategoryUseCase = _CategoryBase with _$CategoryUseCase;

abstract class _CategoryBase extends BaseUseCase<List<Category>> with Store {
  _CategoryBase(repository) : super(repository);

  @override
  @observable
  List<Category> data;

  @override
  @action
  Future getData() => repository.getData();
}
