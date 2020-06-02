import 'package:flutter/material.dart';
import 'package:shape/resources/strings.dart';
import 'package:shape/ui/widget/food/foods_observer.dart';
import 'package:shape/ui/widget/general/app_scaffold.dart';

class SelectFoodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      AppScaffold(Strings.selectFoodTitle, child: FoodsObserver());
}
