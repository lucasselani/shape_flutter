import 'package:repository/base/local_json_repository.dart';
import 'package:repository/models/category.dart';
import 'package:repository/utils/constants.dart';

class CategoryRepository extends JsonRepository {
  List<Category> categories;

  CategoryRepository() : super(CATEGORY_PATH);

  Future<List<Category>> getCategories() async {
    if (categories == null) {
      var json = await loadJson();
      var data = json != null ? json["categories"] as List<dynamic> : null;
      categories = data?.map((c) => Category.fromJson(c))?.toList();
      return categories;
    } else {
      return categories;
    }
  }
}
