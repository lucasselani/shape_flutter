import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:repository/repository.dart';

class TestTacoRepository extends Mock implements TacoRepository {}

void main() {
  var repository = TestTacoRepository();
  when(repository.getData()).thenAnswer((_) async => [Food()]);
  when(repository.getDataNow()).thenReturn([Food()]);

  test('categories list test', () async {
    TestWidgetsFlutterBinding.ensureInitialized();
    var foods = await repository.getData();
    expect(foods.isNotEmpty, true);
  });

  test('categories list now test', () async {
    TestWidgetsFlutterBinding.ensureInitialized();
    var foods = await repository.getDataNow();
    expect(foods.isNotEmpty, true);
  });
}
