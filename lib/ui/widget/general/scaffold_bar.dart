import 'package:flutter/material.dart';
import 'package:shape/resources/colors.dart';

class ScaffoldBar extends AppBar {
  ScaffoldBar(BuildContext context, {@required Widget title, Widget trailing})
      : super(
          title: title,
          actions: trailing != null ? <Widget>[trailing] : null,
          backgroundColor: AppColors.primaryColor,
          elevation: 0,
          leading: Center(
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.chevron_left,
                color: AppColors.white,
              ),
              iconSize: 32,
            ),
          ),
        );
}
