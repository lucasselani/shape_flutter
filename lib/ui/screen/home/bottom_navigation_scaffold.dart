import 'package:flutter/material.dart';
import 'package:shape/resources/strings.dart';
import 'package:shape/resources/styles.dart';

class BottomNavScaffold extends StatelessWidget {
  final Widget body;
  final Function onPageChanged;
  final int currentIndex;

  BottomNavScaffold(
      {@required this.body,
      @required this.currentIndex,
      @required this.onPageChanged});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (newIndex) => onPageChanged(newIndex),
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.assessment),
                title: Text(Strings.plans, style: Styles.appBar),
                backgroundColor: Colors.amber),
            BottomNavigationBarItem(
                icon: Icon(Icons.fastfood),
                title: Text(Strings.foods, style: Styles.appBar),
                backgroundColor: Colors.red)
          ]),
    );
  }
}
