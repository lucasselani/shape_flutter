import 'package:flutter/material.dart';
import 'package:shape/resources/colors.dart';
import 'package:shape/resources/styles.dart';

import 'scaffold_bar.dart';

class AppScaffold extends StatelessWidget {
  final Widget fab;
  final Widget child;
  final String title;

  AppScaffold(this.title, {@required this.child, this.fab});

  Text _createTitle() => Text(
        title ?? '',
        style: Styles.appBar,
      );

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: ScaffoldBar(context, title: _createTitle()),
      body: child,
      floatingActionButton: fab,
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.white);
}
