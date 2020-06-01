import 'package:flutter/material.dart';
import 'package:shape/config/di.dart';
import 'package:shape/resources/strings.dart';
import 'package:shape/resources/themes.dart';

import 'config/route/router.dart';

void main() {
  setupDI();
  runApp(ShapeApp());
}

class ShapeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appName,
      theme: Themes.appTheme(context),
      initialRoute: Routes.homeScreen,
      onGenerateRoute: Router.generateRoute,
    );
  }
}
