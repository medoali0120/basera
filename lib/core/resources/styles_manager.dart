import 'package:basera/core/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

// import 'font_manager.dart';

// TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color) {
//   return TextStyle(
//     fontSize: fontSize,
//     fontFamily: FontConstants.fontFamily,
//     color: color,
//     fontWeight: fontWeight,
//   );
// }

// regular style

// TextStyle getLightStyle({
//   double fontSize = FontSize.s12,
//   required Color color,
// }) {
//   return _getTextStyle(fontSize, FontWeightManager.light, color);
// }
class StylesManager {
  static TextStyle hintLine() {
    return GoogleFonts.inter(
      fontSize: 15.sp,
      fontWeight: FontWeight.w400,
      color: ColorManager.grey,
    );
  }

  static TextStyle lableLine() {
    return GoogleFonts.inter(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      color: ColorManager.grey,
    );
  }

  static TextStyle litlleHintLine() {
    return GoogleFonts.inter(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      color: ColorManager.grey,
    );
  }

  static TextStyle descriptionLine() {
    return GoogleFonts.inter(
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
      color: ColorManager.grey,
    );
  }

  // google 18
  //descripOnboardingLine 16
  static TextStyle mediumLine() {
    return GoogleFonts.inter(
      fontSize: 18.sp,
      fontWeight: FontWeight.w500,
      color: ColorManager.white,
    );
  }

  static TextStyle onboardingTitleLine() {
    return GoogleFonts.inter(
      fontSize: 24.sp,
      fontWeight: FontWeight.w600,
      color: ColorManager.white,
    );
  }

  static TextStyle noteLine() {
    return GoogleFonts.inter(
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
      color: ColorManager.white,
    );
  }

  static TextStyle parentNameLine() {
    return GoogleFonts.inter(
      fontSize: 14.sp,
      fontWeight: FontWeight.w600,
      color: ColorManager.white,
    );
  }

  static TextStyle headerSignLine() {
    return GoogleFonts.inter(
      fontSize: 28.sp,
      fontWeight: FontWeight.w600,
      color: ColorManager.white,
    );
  }

  static TextStyle headerSelecteLine() {
    return GoogleFonts.inter(
      fontSize: 24.sp,
      fontWeight: FontWeight.w800,
      color: ColorManager.white,
    );
  }
}

// regular style

// TextStyle getRegularStyle({
//   double fontSize = FontSize.s12,
//   required Color color,
// }) {
//   return _getTextStyle(fontSize, FontWeightManager.regular, color);
// }

// // medium style

// TextStyle getMediumStyle({
//   double fontSize = FontSize.s12,
//   required Color color,
// }) {
//   return _getTextStyle(fontSize, FontWeightManager.medium, color);
// }

// // bold style

// TextStyle getBoldStyle({double fontSize = FontSize.s12, required Color color}) {
//   return _getTextStyle(fontSize, FontWeightManager.bold, color);
// }

// // semibold style

// TextStyle getSemiBoldStyle({
//   double fontSize = FontSize.s12,
//   required Color color,
// }) {
//   return _getTextStyle(fontSize, FontWeightManager.semiBold, color);
// }

// TextStyle getTextWithLine() {
//   return TextStyle(
//     color: ColorManager.primary,
//     fontSize: 12,
//     fontWeight: FontWeight.w400,
//     decoration: TextDecoration.lineThrough,
//     decorationColor: ColorManager.primary,
//   );
// }
