import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StylesManager {
  static TextStyle hintLine() {
    return GoogleFonts.inter(
      fontSize: FontSize.s14,
      fontWeight: FontWeightManager.regular,
      color: ColorManger.grey,
    );
  }

  static TextStyle lableLine() {
    return GoogleFonts.inter(
      fontSize: FontSize.s16,
      fontWeight: FontWeightManager.regular,
      color: ColorManger.grey,
    );
  }

  static TextStyle litlleHintLine() {
    return GoogleFonts.inter(
      fontSize: FontSize.s12,
      fontWeight: FontWeightManager.regular,
      color: ColorManger.grey,
    );
  }

  static TextStyle descriptionLine() {
    return GoogleFonts.inter(
      fontSize: FontSize.s16,
      fontWeight: FontWeightManager.medium,
      color: ColorManger.grey,
    );
  }

  // google 18
  //descripOnboardingLine 16
  static TextStyle mediumLine() {
    return GoogleFonts.inter(
      fontSize: FontSize.s18,
      fontWeight: FontWeightManager.medium,
      color: ColorManger.white,
    );
  }

  static TextStyle onboardingTitleLine() {
    return GoogleFonts.inter(
      fontSize: FontSize.s24,
      fontWeight: FontWeightManager.semiBold,
      color: ColorManger.white,
    );
  }

  static TextStyle noteLine() {
    return GoogleFonts.inter(
      fontSize: FontSize.s16,
      fontWeight: FontWeightManager.bold,
      color: ColorManger.white,
    );
  }

  static TextStyle parentNameLine() {
    return GoogleFonts.inter(
      fontSize: FontSize.s14,
      fontWeight: FontWeightManager.semiBold,
      color: ColorManger.white,
    );
  }

  static TextStyle headerSignLine() {
    return GoogleFonts.inter(
      fontSize: FontSize.s28,
      fontWeight: FontWeightManager.semiBold,
      color: ColorManger.white,
    );
  }

  static TextStyle headerSelecteLine() {
    return GoogleFonts.inter(
      fontSize: FontSize.s24,
      fontWeight: FontWeightManager.bold,
      color: ColorManger.white,
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
