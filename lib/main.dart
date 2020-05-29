import 'package:flutter/material.dart';
import 'package:shape/config/di.dart';
import 'package:shape/resources/strings.dart';

import 'config/router.dart';

void main() {
  setupDI();
  runApp(ShapeApp());
}

class ShapeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appName,
      theme: ThemeData(),
      initialRoute: Routes.foodsScreen,
      onGenerateRoute: Router.generateRoute,
    );
  }
}
