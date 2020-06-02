import 'package:database/database.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  final String boxName = 'plans_test';
  Box<Plan> box;
  PlanProvider provider;

  Plan _createPlan() => Plan()
    ..name = "TestPlan"
    ..foods = List.filled(
        3,
        PlanFoods()
          ..foodId = 1
          ..quantity = 100
          ..unit = 'g');

  test('create box', () async {
    await AppHive.initialize();
    provider = PlanProvider(boxName);
    await provider.openBox();
    box = Hive.box<Plan>(boxName);
  });
  test('add plan to box', () async {
    var plan = _createPlan();
    provider.add(plan);
    expect(box.getAt(0).name, plan.name);
    await provider.deleteAll();
    expect(box.keys.isEmpty, true);
  });
  test('edit plan', () async {
    var plan = _createPlan();
    provider.add(plan);
    plan.name = 'Changed';
    await plan.save();
    expect(box.getAt(0).name, 'Changed');
    await provider.deleteAll();
    expect(box.keys.isEmpty, true);
  });

  test('list plans', () async {
    provider.add(_createPlan());
    provider.add(_createPlan());
    provider.add(_createPlan());
    expect(box.values.length, 3);
    await provider.deleteAll();
    expect(box.keys.isEmpty, true);
  });
}
