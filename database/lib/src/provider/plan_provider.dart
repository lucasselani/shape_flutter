import 'package:database/src/base/base_provider.dart';
import 'package:database/src/model/plan.dart';
import 'package:hive/hive.dart';

import '../model/plan.dart';

class PlanProvider extends BaseProvider<Plan> {
  PlanProvider(String boxName) : super(boxName);

  @override
  void registerAdapter() {
    Hive.registerAdapter(PlanAdapter());
    Hive.registerAdapter(PlanFoodsAdapter());
  }
}
