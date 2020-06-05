import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:repository/repository.dart';
import 'package:shape/resources/styles.dart';
import 'package:shape/ui/widget/food/food_detail.dart';

class FoodsItem extends StatelessWidget {
  final Food food;
  final bool isPicking;

  const FoodsItem({Key key, @required this.food, @required this.isPicking})
      : super(key: key);

  _showDetails(BuildContext context) async {
    var result = await FoodDetailDialog.showDetails(context,
        food: food, isPicking: isPicking);
    if (result != null) Navigator.of(context).pop(result);
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(food.description, style: Styles.title()),
        subtitle: Text(food.categoryId.toString(), style: Styles.label()),
        onTap: () => _showDetails(context));
  }
}
