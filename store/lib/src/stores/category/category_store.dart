import 'package:mobx/mobx.dart';
import 'package:repository/repository.dart';
import 'package:store/src/base/base_store.dart';

part 'category_store.g.dart';

class CategoryStore = _CategoryBase with _$CategoryStore;

abstract class _CategoryBase extends BaseStore<CategoryRepository> with Store {
  _CategoryBase(repository) : super(repository);

  @observable
  ObservableFuture<List<Category>> categories;

  @action
  Future getCategories() =>
      categories = ObservableFuture(repository.getCategories());

  List<Category> getCategoriesNow() => repository.getCategoriesNow();
}
