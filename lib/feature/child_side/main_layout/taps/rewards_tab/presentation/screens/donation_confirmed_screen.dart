import 'package:basera/core/resources/assets_manager.dart';
import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/font_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/resources/values_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/child_side/main_layout/taps/child_home_tab/presentation/widgets/donation_card.dart';
import 'package:basera/feature/child_side/main_layout/taps/missions_tab/presentation/widgets/motivation_carrd.dart';
import 'package:basera/feature/child_side/main_layout/taps/rewards_tab/presentation/widgets/impact_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DonationConfirmedScreen extends StatelessWidget {
  const DonationConfirmedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.primary,
        title: Text(
          "Donation Completed",
          style: StylesManager.onboardingTitleLine(),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: ColorManager.white),
        ),
      ),
      backgroundColor: ColorManager.primary,
      body: SingleChildScrollView(
        child: Padding(
          padding: REdgeInsets.all(AppPadding.p16),
          child: Column(
            children: [
              Image.asset(ImageAssets.successIcon),
              HeightSpace(16),
              Text(
                " Thank You!",
                style: StylesManager.onboardingTitleLine().copyWith(
                  fontWeight: FontWeightManager.regular,
                ),
              ),
              HeightSpace(4),
              Text(
                "Your donation has been successfully sent. Thank you for making a positive impact.",
                style: StylesManager.hintLine().copyWith(
                  fontSize: FontSize.s16,
                ),
                textAlign: TextAlign.center,
              ),
              HeightSpace(24),
              ImpactCard(),
              HeightSpace(24),
              MotivationCard(
                message:
                    "Great job!\nEvery single point you donate brings a smile to a child. You're a true Baseera Guardian.",
              ),
              HeightSpace(24),
              DonationCard(
                currentPoints: 250,
                goalPoints: 500,
                organization: "Education for All",
                onDonate: () {},
              ),
              HeightSpace(24),
            ],
          ),
        ),
      ),
    );
  }
}
