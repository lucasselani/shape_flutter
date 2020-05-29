import 'package:repository/src/base/json_repository.dart';
import 'package:repository/src/models/food.dart';

class TacoRepository extends JsonRepository<List<Food>> {
  List<Food> foods;

  TacoRepository(String json) : super(json);

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
