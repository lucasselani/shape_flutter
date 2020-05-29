import 'package:mobx/mobx.dart';
import 'package:repository/repository.dart';
import 'package:store/src/base/base_store.dart';

part 'taco_store.g.dart';

class TacoStore = _TacoBase with _$TacoStore;

abstract class _TacoBase extends BaseStore<List<Food>> with Store {
  _TacoBase(repository) : super(repository);

  @override
  @observable
  ObservableFuture<List<Food>> data;

  @override
  @action
  Future getData() => data = ObservableFuture(repository.getData());

  @override
  List<Food> getDataNow() =>
      data.result != null ? data.result as List<Food> : null;
}
