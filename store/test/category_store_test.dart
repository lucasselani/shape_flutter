import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:repository/repository.dart';
import 'package:store/store.dart';

import 'base/mock_repository.dart';

void main() {
  test('category use case list', () async {
    TestWidgetsFlutterBinding.ensureInitialized();
    var repository = MockRepository();
    var store = CategoryStore(repository);
    when(repository.getData()).thenAnswer((_) async => [Category()]);
    var list = await store.getData();
    expect(list.isNotEmpty, true);
    expect(list is List<Category>, true);
    expect(list[0] is Category, true);
  });
}
