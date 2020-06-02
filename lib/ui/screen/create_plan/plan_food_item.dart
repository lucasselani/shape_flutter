import 'package:database/database.dart';
import 'package:flutter/material.dart';
import 'package:shape/resources/styles.dart';

class PlanFoodItem extends StatelessWidget {
  final PlanFoods food;

  const PlanFoodItem({Key key, @required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text(food.name, style: Styles.title()));
  }
}
