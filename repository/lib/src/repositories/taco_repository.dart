import 'package:repository/src/base/json_repository.dart';
import 'package:repository/src/models/food.dart';
import 'package:repository/src/utils/constants.dart';

class TacoRepository extends JsonRepository<List<Food>> {
  List<Food> foods;

  TacoRepository() : super(TACO_PATH);

  @override
  Future<List<Food>> getData() async {
    if (foods == null) {
      var data = await loadJson() as List<dynamic>;
      foods = data?.map((food) => Food.fromJson(food))?.toList();
      return foods;
    } else {
      return foods;
    }
  }

  @override
  List<Food> getDataNow() {
    return foods;
  }
}
