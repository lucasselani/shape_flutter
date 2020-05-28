import 'package:flutter_test/flutter_test.dart';
import 'package:repository/src/repositories/category_repository.dart';

void main() {
  test('categories list test', () async {
    TestWidgetsFlutterBinding.ensureInitialized();
    var repository = CategoryRepository();
    var categories = await repository.getCategories();
    expect(categories.isNotEmpty, true);
  });
}
