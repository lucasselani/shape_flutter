import 'package:mobx/mobx.dart';
import 'package:repository/repository.dart';
import 'package:store/src/base/base_store.dart';
import 'package:store/src/extension/observable_list.dart';
import 'package:store/src/extension/string.dart';

part 'food_store.g.dart';

class FoodStore = _FoodBase with _$FoodStore;

abstract class _FoodBase extends BaseStore<FoodRepository> with Store {
  _FoodBase(repository) : super(repository);

  @observable
  ObservableFuture<ObservableList<Food>> foods;

  @action
  Future getFoods() => foods = repository.getFoods().toObservable();

  @action
  Future getFilteredFoods(String text) => foods = repository
      .getFoodsNow()
      .where((food) => food.description.has(text))
      .toObservable();

  Food getFood(int id) =>
      repository.getFoodsNow().where((food) => food.id == id).first;
}
