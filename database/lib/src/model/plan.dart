import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

part 'plan.g.dart';

@HiveType(typeId: 0)
class Plan extends HiveObject {
  @HiveField(0)
  String name;

  @HiveField(1)
  List<PlanFoods> foods;

  Plan({@required this.name, @required this.foods});
}

@HiveType(typeId: 1)
class PlanFoods extends HiveObject {
  @HiveField(0)
  int foodId;

  @HiveField(1)
  int quantity;

  @HiveField(2)
  String unit;

  String name;
}
