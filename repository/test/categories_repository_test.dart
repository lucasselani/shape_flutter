import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:repository/repository.dart';
import 'package:repository/src/repositories/category_repository.dart';

class TestCategoryRepository extends Mock implements CategoryRepository {}

void main() {
  var repository = TestCategoryRepository();
  when(repository.getData()).thenAnswer((_) async => [Category()]);
  when(repository.getDataNow()).thenReturn([Category()]);

  test('categories list test', () async {
    TestWidgetsFlutterBinding.ensureInitialized();
    var categories = await repository.getData();
    expect(categories.isNotEmpty, true);
  });

  test('categories list now test', () async {
    TestWidgetsFlutterBinding.ensureInitialized();
    var categories = await repository.getDataNow();
    expect(categories.isNotEmpty, true);
  });
}
