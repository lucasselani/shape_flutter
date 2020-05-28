import 'package:mobx/mobx.dart';
import 'package:repository/repository.dart';
import 'package:use_case/src/base/base_use_case.dart';

part 'taco_use_case.g.dart';

class TacoUseCase = _TacoBase with _$TacoUseCase;

abstract class _TacoBase extends BaseUseCase<List<Category>> with Store {
  _TacoBase(repository) : super(repository);

  @override
  @observable
  List<Category> data;

  @override
  @action
  Future getData() => repository.getData();
}
