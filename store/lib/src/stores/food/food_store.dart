import 'package:mobx/mobx.dart';
import 'package:repository/repository.dart';
import 'package:store/src/base/base_store.dart';

part 'food_store.g.dart';

class FoodStore = _FoodBase with _$FoodStore;

abstract class _FoodBase extends BaseStore<FoodRepository> with Store {
  _FoodBase(repository) : super(repository);

  @observable
  ObservableFuture<List<Food>> foods;

  @action
  Future getFoods() => foods = ObservableFuture(repository.getFoods());

  List<Food> getFoodsNow() => repository.getFoodsNow();
}
