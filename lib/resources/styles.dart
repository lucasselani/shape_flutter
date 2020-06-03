import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class Styles {
  static TextStyle subItem({biggerFont = false}) => GoogleFonts.lato(
        fontWeight: FontWeight.w300,
        fontSize: biggerFont ? 18 : 14,
        color: Colors.black,
      );

  static TextStyle label({biggerFont = false}) => GoogleFonts.lato(
        fontWeight: FontWeight.w400,
        fontSize: biggerFont ? 18 : 14,
        color: Colors.black87,
      );

  static TextStyle title({biggerFont = false}) => GoogleFonts.lato(
        fontWeight: FontWeight.w700,
        fontSize: biggerFont ? 20 : 16,
        color: Colors.black,
      );

  static TextStyle form = GoogleFonts.lato(
    fontWeight: FontWeight.w400,
    fontSize: 18,
    color: AppColors.red400,
  );

  static TextStyle button({Color color = AppColors.primaryColor}) =>
      GoogleFonts.lato(
        fontWeight: FontWeight.bold,
        fontSize: 16,
        color: color,
      );

  static TextStyle appBar = GoogleFonts.lato(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: Colors.white,
  );
}
