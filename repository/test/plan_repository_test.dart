import 'package:flutter_test/flutter_test.dart';
import 'package:repository/src/models/plan.dart';
import 'package:repository/src/repositories/plan_repository.dart';

void main() {
  test('plan add/remove test', () async {
    TestWidgetsFlutterBinding.ensureInitialized();
    var repository = PlanRepositoryImpl("test_plan");
    var plan = Plan();

    await repository.deleteAllDb();
    var list = await repository.list();
    expect(list.isEmpty, true);

    await repository.add(plan);
    list = await repository.list();
    expect(list.length, 1);

    await repository.delete(plan.id);
    list = await repository.list();
    expect(list.isEmpty, true);
  });
}
