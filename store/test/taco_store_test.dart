import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:repository/repository.dart';
import 'package:store/src/stores/taco_store.dart';

import 'base/mock_repository.dart';

void main() {
  test('category use case list', () async {
    TestWidgetsFlutterBinding.ensureInitialized();
    var repository = MockRepository();
    var store = TacoStore(repository);
    when(repository.getData()).thenAnswer((_) async => [Food()]);
    var list = await store.getData();
    expect(list.isNotEmpty, true);
    expect(list is List<Food>, true);
    expect(list[0] is Food, true);
  });
}
