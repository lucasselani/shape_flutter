import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:repository/repository.dart';
import 'package:store/store.dart';

class MockRepository extends Mock implements FoodRepository {}

void main() {
  test('food store list', () async {
    TestWidgetsFlutterBinding.ensureInitialized();
    var repository = MockRepository();
    var store = FoodStore(repository);
    when(repository.getFoods()).thenAnswer((_) async => [Food()]);
    var list = await store.getFoods();
    expect(list.isNotEmpty, true);
    expect(list is List<Food>, true);
    expect(list[0] is Food, true);
  });
}
