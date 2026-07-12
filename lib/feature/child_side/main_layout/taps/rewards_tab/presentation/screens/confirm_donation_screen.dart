import 'package:basera/core/resources/assets_manager.dart';
import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/font_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/resources/values_manager.dart';
import 'package:basera/core/routes_manger/routes.dart';
import 'package:basera/core/widgets/main_botton.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/child_side/main_layout/taps/rewards_tab/presentation/widgets/donation_summary_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConfirmDonationScreen extends StatelessWidget {
  const ConfirmDonationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.primary,
        title: Text(
          "Confirm Donation",
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
              Image.asset(ImageAssets.heroSection, width: double.infinity),
              HeightSpace(24),
              // Text(
              //   "Children's Education Fund",
              //   style: StylesManager.onboardingTitleLine().copyWith(
              //     fontWeight: FontWeightManager.regular,
              //   ),
              // ),
              // HeightSpace(4),
              // Text(
              //   "Help provide books, school supplies and educational opportunities for children.",
              //   style: StylesManager.hintLine().copyWith(
              //     fontSize: FontSize.s16,
              //   ),
              // ),
              HeightSpace(24),
              DonationSummaryCard(donationAmount: 250, currentBalance: 1280),
              HeightSpace(24),
              SizedBox(
                width: double.infinity,
                child: MainAppButton(
                  text: "Donate Now",
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      Routes.donationCompletedScreen,
                    );
                  },
                  borderRadius: 8.r,
                ),
              ),
              HeightSpace(8),
              SizedBox(
                width: double.infinity,
                child: MainAppButton(
                  text: "Cancel",
                  onTap: () {},
                  isGradient: false,
                  borderRadius: 8.r,
                  borderColor: ColorManager.babyBlue,
                  backgroundColor: ColorManager.darkBlue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
