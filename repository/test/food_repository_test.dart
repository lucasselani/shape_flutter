import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:repository/repository.dart';

class TestFoodRepository extends Mock implements FoodRepository {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  var repository = TestFoodRepository();
  when(repository.getFoods()).thenAnswer((_) async => [Food()]);
  when(repository.getFoodsNow()).thenReturn([Food()]);

  group('food list', () {
    test('test', () async {
      var foods = await repository.getFoods();
      expect(foods.isNotEmpty, true);
    });

    test('now test', () {
      var foods = repository.getFoodsNow();
      expect(foods.isNotEmpty, true);
    });
  });
}
