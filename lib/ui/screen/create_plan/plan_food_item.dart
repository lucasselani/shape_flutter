import 'package:database/database.dart';
import 'package:flutter/material.dart';
import 'package:repository/repository.dart';
import 'package:shape/resources/styles.dart';
import 'package:shape/ui/widget/food/food_detail.dart';

class PlanFoodItem extends StatelessWidget {
  final Food food;
  final PlanFoods planFood;

  const PlanFoodItem({Key key, @required this.food, @required this.planFood})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(food.description, style: Styles.title()),
        onTap: () => FoodDetailDialog.showDetails(context,
            food: food, isPicking: false, quantity: planFood.quantity));
  }
}
