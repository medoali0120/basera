import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/constants_manager.dart';
import 'package:basera/core/resources/font_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/resources/values_manager.dart';
import 'package:basera/core/routes_manger/routes.dart';
import 'package:basera/core/widgets/main_botton.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/onboarding/model/onboarding_model.dart';
import 'package:basera/feature/onboarding/widgets/dotindicator.dart';
import 'package:basera/feature/onboarding/widgets/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: Padding(
        padding: REdgeInsets.symmetric(horizontal: AppPadding.p16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 690.h,
              child: PageView.builder(
                controller: _pageController,
                itemCount: OnboardingModel.getOnboardingList.length,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (context, index) => OnboardingPage(
                  onboardingModel: OnboardingModel.getOnboardingList[index],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                OnboardingModel.getOnboardingList.length,
                (index) => Dotindicator(isActive: index == currentIndex),
              ),
            ),
            HeightSpace(24),
            SizedBox(
              width: double.infinity,
              child: MainAppButton(
                textStyle: StylesManager.noteLine().copyWith(
                  fontSize: FontSize.s18,
                ),
                text: currentIndex == 2 ? "Get Started" : "Next",
                onTap: () {
                  setState(() {
                    currentIndex == 2 ? _seenOnboarding() : currentIndex++;
                    _pageController.animateToPage(
                      currentIndex,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _seenOnboarding() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(ApiConstants.firstTime, false);
    Navigator.pushReplacementNamed(context, Routes.signUpRoute);
  }
}
