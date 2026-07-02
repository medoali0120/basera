import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/font_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/onboarding/model/onboarding_model.dart';
import 'package:basera/feature/onboarding/widgets/colored_title.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key, required this.onboardingModel});
  final OnboardingModel onboardingModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(onboardingModel.imagePath),

        ColoredTitle(
          title: onboardingModel.title,
          style: StylesManager.onboardingTitleLine().copyWith(
            color: Colors.white,
          ),
          lastWordColor: ColorManager.babyBlue,
        ),

        HeightSpace(24),

        Text(
          onboardingModel.description!,
          textAlign: TextAlign.center,
          style: StylesManager.mediumLine().copyWith(fontSize: FontSize.s16),
        ),
      ],
    );
  }
}
