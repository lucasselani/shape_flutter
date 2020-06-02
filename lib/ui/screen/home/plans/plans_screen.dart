import 'package:database/database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shape/config/route/router.dart';
import 'package:shape/resources/strings.dart';
import 'package:shape/resources/styles.dart';
import 'package:shape/ui/widget/general/add_fab.dart';

import 'plans_item.dart';

class PlansScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: _PlansBody(),
        floatingActionButton: AddFAB(
            onPressed: () =>
                Navigator.pushNamed(context, Routes.createPlanScreen)),
      );
}

class _PlansBody extends StatelessWidget {
  final provider = GetIt.I<PlanProvider>();

  @override
  Widget build(BuildContext context) {
    var list = provider.list();
    if (list.isEmpty) {
      return Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Text(
          Strings.plansEmpty,
          style: Styles.title(biggerFont: true),
          textAlign: TextAlign.center,
        ),
      ));
    } else {
      return ListView.builder(
          itemCount: list.length,
          itemBuilder: (_, index) => PlansItem(plan: list[index]));
    }
  }
}
