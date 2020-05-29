import 'package:mobx/mobx.dart';
import 'package:repository/repository.dart';
import 'package:store/src/base/base_store.dart';

part 'taco_store.g.dart';

class TacoStore = _TacoBase with _$TacoStore;

abstract class _TacoBase extends BaseStore<List<Category>> with Store {
  _TacoBase(repository) : super(repository);

  @override
  @observable
  List<Category> data;

  @override
  @action
  Future getData() => repository.getData();
}
