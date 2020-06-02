import 'package:flutter/material.dart';
import 'package:shape/ui/screen/create_plan/create_plan_screen.dart';
import 'package:shape/ui/screen/home/home_screen.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case Routes.createPlanScreen:
        return MaterialPageRoute(builder: (_) => CreatePlanScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}

class Routes {
  static const homeScreen = '/';
  static const createPlanScreen = '/createPlan';
}
