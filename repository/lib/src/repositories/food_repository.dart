import 'package:repository/src/base/repository.dart';
import 'package:repository/src/core/json_loader.dart';
import 'package:repository/src/models/food.dart';

abstract class FoodRepository implements Repository {
  List<Food> foods;

  Future<List<Food>> getFoods();
  List<Food> getFoodsNow();
}

class FoodRepositoryImpl extends JsonLoader implements FoodRepository {
  @override
  List<Food> foods;

  FoodRepositoryImpl(String json) : super(json);

  @override
  Future<List<Food>> getFoods() async {
    if (foods == null) {
      var data = await loadJson() as List<dynamic>;
      foods = data?.map((food) => Food.fromJson(food))?.toList();
      return foods;
    } else {
      return foods;
    }
  }

  @override
  List<Food> getFoodsNow() {
    return foods;
  }
}
