import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:repository/repository.dart';

class TestFoodRepository extends Mock implements FoodRepository {}

void main() {
  var repository = TestFoodRepository();
  when(repository.getFoods()).thenAnswer((_) async => [Food()]);
  when(repository.getFoodsNow()).thenReturn([Food()]);

  test('foods list test', () async {
    TestWidgetsFlutterBinding.ensureInitialized();
    var foods = await repository.getFoods();
    expect(foods.isNotEmpty, true);
  });

  test('foods list now test', () async {
    TestWidgetsFlutterBinding.ensureInitialized();
    var foods = await repository.getFoodsNow();
    expect(foods.isNotEmpty, true);
  });
}
