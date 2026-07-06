import 'package:flutter/material.dart';

abstract class ColorManager {
  static Color primary = const Color(0xFF04091B);
  static Color babyBlue = const Color(0xFF00D4FF);

  static LinearGradient buttonColor = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF00D4FF), Color(0xFF4F46E5)],
  );
  static Color grey = const Color(0xFFBDBDBD);
  static Color black = const Color(0xff000000);
  static Color transparent = Colors.transparent;
  static const Color starRateColor = Color(0XFFFDD835);
  static Color white = const Color(0xffFFFFFF);
  static Color error = const Color(0xffe61f34); // red color
  static Color lightblue = const Color(0xffBCC6E2);
  static Color pink = const Color(0xffFFB4AB);
  static Color orange = const Color(0xffF97316);
  static Color green = const Color(0xff4ADE80);
  static Color darkBlue = const Color(0xff0A1530);
}
