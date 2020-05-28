import 'package:repository/src/base/json_repository.dart';
import 'package:repository/src/models/food.dart';
import 'package:repository/src/utils/constants.dart';

class TacoRepository extends JsonRepository {
  List<Food> foods;

  TacoRepository() : super(TACO_PATH);

  Future<List<Food>> getFoods() async {
    if (foods == null) {
      var data = await loadJson() as List<dynamic>;
      foods = data?.map((food) => Food.fromJson(food))?.toList();
      return foods;
    } else {
      return foods;
    }
  }
}
