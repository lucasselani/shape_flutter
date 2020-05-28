import 'package:repository/src/base/json_repository.dart';
import 'package:repository/src/models/category.dart';
import 'package:repository/src/utils/constants.dart';

class CategoryRepository extends JsonRepository<List<Category>> {
  List<Category> categories;

  CategoryRepository() : super(CATEGORY_PATH);

  @override
  Future<List<Category>> getData() async {
    if (categories == null) {
      var json = await loadJson();
      var data = json != null ? json['categories'] as List<dynamic> : null;
      categories = data?.map((c) => Category.fromJson(c))?.toList();
      return categories;
    } else {
      return categories;
    }
  }

  @override
  List<Category> getDataNow() {
    return categories;
  }
}
