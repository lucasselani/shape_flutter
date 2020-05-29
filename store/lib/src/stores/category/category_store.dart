import 'package:mobx/mobx.dart';
import 'package:repository/repository.dart';
import 'package:store/src/base/base_store.dart';

part 'category_store.g.dart';

class CategoryStore = _CategoryBase with _$CategoryStore;

abstract class _CategoryBase extends BaseStore<List<Category>> with Store {
  _CategoryBase(repository) : super(repository);

  @override
  @observable
  ObservableFuture<List<Category>> data;

  @override
  @action
  Future getData() => data = ObservableFuture(repository.getData());

  @override
  List<Category> getDataNow() =>
      data.result != null ? data.result as List<Category> : null;
}
