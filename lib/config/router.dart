import 'package:flutter/material.dart';
import 'package:shape/ui/screen/foods/foods_screen.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.foodsScreen:
        return MaterialPageRoute(builder: (_) => FoodsScreen());
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
  static const foodsScreen = '/';
}
