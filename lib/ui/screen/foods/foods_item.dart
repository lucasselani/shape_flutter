import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:repository/repository.dart';
import 'package:shape/resources/styles.dart';

class FoodsItem extends StatelessWidget {
  final Food food;

  const FoodsItem({Key key, @required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(food.description, style: Styles.title()),
        subtitle: Text(food.categoryId.toString(), style: Styles.label()));
  }
}
