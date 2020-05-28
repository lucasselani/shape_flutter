import 'package:repository/base/local_json_repository.dart';
import 'package:repository/utils/constants.dart';

import '../models/food.dart';

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
