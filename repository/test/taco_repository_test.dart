import 'package:flutter_test/flutter_test.dart';
import 'package:repository/src/repositories/taco_repository.dart';

void main() {
  test('foods list test', () async {
    TestWidgetsFlutterBinding.ensureInitialized();
    var repository = TacoRepository();
    var foods = await repository.getData();
    expect(foods.isNotEmpty, true);
  });

  test('foods list now test', () async {
    TestWidgetsFlutterBinding.ensureInitialized();
    var repository = TacoRepository();
    var foods = await repository.getDataNow();
    expect(foods, null);
  });

  test('foods list now after async test', () async {
    TestWidgetsFlutterBinding.ensureInitialized();
    var repository = TacoRepository();
    await repository.getData();
    var foods = await repository.getDataNow();
    expect(foods.isNotEmpty, true);
  });
}
