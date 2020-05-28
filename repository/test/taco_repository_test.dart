import 'package:flutter_test/flutter_test.dart';
import 'package:repository/src/repositories/taco_repository.dart';

void main() {
  test('general food list test', () async {
    TestWidgetsFlutterBinding.ensureInitialized();
    var repository = TacoRepository();
    var foods = await repository.getFoods();
    expect(foods.isNotEmpty, true);
  });
}
