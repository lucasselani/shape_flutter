import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:repository/repository.dart';
import 'package:store/store.dart';

class MockRepository extends Mock implements CategoryRepository {}

void main() {
  test('category store list', () async {
    TestWidgetsFlutterBinding.ensureInitialized();
    var repository = MockRepository();
    var store = CategoryStore(repository);
    when(repository.getCategories()).thenAnswer((_) async => [Category()]);
    var list = await store.getCategories();
    expect(list.isNotEmpty, true);
    expect(list is List<Category>, true);
    expect(list[0] is Category, true);
  });
}
