import 'package:flutter_test/flutter_test.dart';
import 'package:repository/src/repositories/category_repository.dart';

void main() {
  test('categories list test', () async {
    TestWidgetsFlutterBinding.ensureInitialized();
    var repository = CategoryRepository();
    var categories = await repository.getData();
    expect(categories.isNotEmpty, true);
  });

  test('categories list now test', () async {
    TestWidgetsFlutterBinding.ensureInitialized();
    var repository = CategoryRepository();
    var categories = await repository.getDataNow();
    expect(categories, null);
  });

  test('categories list now after async test', () async {
    TestWidgetsFlutterBinding.ensureInitialized();
    var repository = CategoryRepository();
    await repository.getData();
    var categories = await repository.getDataNow();
    expect(categories.isNotEmpty, true);
  });
}
