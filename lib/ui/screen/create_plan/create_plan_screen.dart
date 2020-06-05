import 'package:database/database.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shape/config/route/router.dart';
import 'package:shape/resources/strings.dart';
import 'package:shape/ui/screen/create_plan/plan_food_item.dart';
import 'package:shape/ui/widget/general/add_fab.dart';
import 'package:shape/ui/widget/general/app_scaffold.dart';
import 'package:shape/ui/widget/general/rounded_button.dart';
import 'package:store/store.dart';

class CreatePlanScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CreatePlanState();
}

class _CreatePlanState extends State<CreatePlanScreen> {
  List<PlanFoods> foods = List();

  void _navigateAndWait(BuildContext context) async {
    var result = await Navigator.pushNamed(context, Routes.selectFoodScreen);
    if (result != null) {
      setState(() {
        foods.add(result as PlanFoods);
      });
    }
  }

  @override
  Widget build(BuildContext context) => AppScaffold(Strings.craetePlanTitle,
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            _PlanOverview(),
            SizedBox(height: 24.0),
            _PlanFoods(foods),
            Expanded(child: Container()),
            _CreateButton(foods: foods, name: 'Teste'),
          ],
        ),
      ),
      fab: AddFAB(onPressed: () => _navigateAndWait(context)));
}

class _PlanOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("Grafico, dados, etc");
  }
}

class _PlanFoods extends StatelessWidget {
  final FoodStore store = GetIt.I<FoodStore>();
  final List<PlanFoods> planFoods;

  _PlanFoods(this.planFoods);

  @override
  Widget build(BuildContext context) => Expanded(
        child: ListView.builder(
            itemCount: planFoods.length,
            itemBuilder: (_, index) {
              var planFood = planFoods[index];
              return PlanFoodItem(
                  planFood: planFood, food: store.getFood(planFood.foodId));
            }),
      );
}

class _CreateButton extends StatelessWidget {
  final PlanProvider provider = GetIt.I<PlanProvider>();
  final List<PlanFoods> foods;
  final String name;

  _CreateButton({@required this.foods, @required this.name});

  bool get _isValid => foods.isNotEmpty && name != null;

  void _createPlan(BuildContext context) {
    var plan = Plan(name: name, foods: foods);
    provider.add(plan);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) => RoundedButton(
      title: Strings.create,
      onClick: _isValid ? () => _createPlan(context) : null);
}
