import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:repository/repository.dart';
import 'package:shape/resources/strings.dart';
import 'package:shape/resources/styles.dart';
import 'package:shape/ui/widget/food/food_detail.dart';

class FoodsItem extends StatelessWidget {
  final Food food;
  final bool isPicking;

  const FoodsItem({Key key, @required this.food, this.isPicking = false})
      : super(key: key);

  Future<void> _showDetails(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: !isPicking,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(Strings.nutritionInfoTitle, style: Styles.title()),
          content: FoodDetail(food: food, isPicking: isPicking),
          actions: <Widget>[
            FlatButton(
              child: Text(Strings.close, style: Styles.button()),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(food.description, style: Styles.title()),
        subtitle: Text(food.categoryId.toString(), style: Styles.label()),
        onTap: () => _showDetails(context));
  }
}
