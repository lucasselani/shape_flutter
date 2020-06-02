import 'package:flutter/material.dart';
import 'package:shape/resources/colors.dart';
import 'package:shape/resources/heroes.dart';

class AddFAB extends StatelessWidget {
  final Function onPressed;

  AddFAB({@required this.onPressed});

  @override
  Widget build(BuildContext context) => FloatingActionButton(
        onPressed: onPressed,
        backgroundColor: AppColors.primaryColor,
        heroTag: Heroes.fabAdd,
        child: Icon(
          Icons.add,
          color: AppColors.white,
        ),
      );
}
