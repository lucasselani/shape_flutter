import 'package:database/database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shape/resources/styles.dart';

class PlansItem extends StatelessWidget {
  final Plan plan;

  const PlansItem({Key key, @required this.plan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text(plan.name, style: Styles.title()));
  }
}
