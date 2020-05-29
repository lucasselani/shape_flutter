import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:repository/repository.dart';
import 'package:use_case/src/use_cases/taco_use_case.dart';

import 'base/mock_repository.dart';

void main() {
  test('category use case list', () async {
    TestWidgetsFlutterBinding.ensureInitialized();
    var repository = MockRepository();
    var useCase = TacoUseCase(repository);
    when(repository.getData()).thenAnswer((_) async => [Food()]);
    var list = await useCase.getData();
    expect(list.isNotEmpty, true);
    expect(list is List<Food>, true);
    expect(list[0] is Food, true);
  });
}
