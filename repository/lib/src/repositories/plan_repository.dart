import 'package:repository/src/base/database_repository.dart';
import 'package:repository/src/extension/iterable.dart';
import 'package:repository/src/models/plan.dart';

abstract class PlanRepository extends DatabaseRepository {
  PlanRepository(String folderName) : super(folderName);

  Future<List<Plan>> list();
  Future add(Plan plan);
  Future delete(int id);
}

class PlanRepositoryImpl extends PlanRepository {
  PlanRepositoryImpl(String folderName) : super(folderName);

  @override
  Future<List<Plan>> list() async {
    var data = await listDb();
    return data
        .mapIndexed((element, index) => Plan.fromJson(element, index))
        .toList();
  }

  @override
  Future add(Plan plan) async {
    int id = await insertDb(plan.toJson());
    plan.id = id;
    return id;
  }

  @override
  Future delete(int id) async => await deleteDb(id);
}
