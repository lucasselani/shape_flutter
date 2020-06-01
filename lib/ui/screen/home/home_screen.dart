import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shape/ui/screen/foods/foods_screen.dart';
import 'package:shape/ui/screen/home/bottom_navigation_scaffold.dart';
import 'package:shape/ui/screen/plans/plans_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  void _onPageChanged(int index) => setState(() => _currentIndex = index);

  Widget _createBody() {
    switch (_currentIndex) {
      case 0:
        return FoodsScreen();
      case 1:
        return PlansScreen();
      default:
        return Center();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavScaffold(
      body: _createBody(),
      currentIndex: _currentIndex,
      onPageChanged: _onPageChanged,
    );
  }
}
