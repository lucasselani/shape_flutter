import 'package:repository/src/base/repository.dart';
import 'package:repository/src/core/json_loader.dart';
import 'package:repository/src/models/category.dart';

abstract class CategoryRepository implements Repository {
  List<Category> categories;

  Future<List<Category>> getCategories();
  List<Category> getCategoriesNow();
}

class CategoryRepositoryImpl extends JsonLoader implements CategoryRepository {
  @override
  List<Category> categories;

  CategoryRepositoryImpl(String json) : super(json);

  @override
  Future<List<Category>> getCategories() async {
    if (categories == null) {
      var data = await loadJson() as List<dynamic>;
      categories = data?.map((food) => Category.fromJson(food))?.toList();
      return categories;
    } else {
      return categories;
    }
  }

  @override
  List<Category> getCategoriesNow() {
    return categories;
  }
}
