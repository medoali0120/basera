import 'package:basera/core/resources/assets_manager.dart';
import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/resources/values_manager.dart';
import 'package:basera/core/routes_manger/routes.dart';
import 'package:basera/core/widgets/main_botton.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/child_side/main_layout/taps/rewards_tab/presentation/widgets/points_summary_card.dart';
import 'package:basera/feature/child_side/main_layout/taps/rewards_tab/presentation/widgets/redeem_steps_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RewardDetailsScreen extends StatelessWidget {
  const RewardDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.primary,
        title: Text(
          "Confirm Redemption",
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(ImageAssets.robloxBg, width: double.infinity),
              HeightSpace(24),
              Text(
                "DIGITAL GAMING REWARD",
                style: StylesManager.descriptionLine().copyWith(
                  color: ColorManager.babyBlue,
                ),
              ),
              HeightSpace(4),
              Text(
                "Roblox Gift Card",
                style: StylesManager.headerSelecteLine().copyWith(
                  fontSize: 32.sp,
                ),
              ),
              HeightSpace(12),
              Text(
                "Unlock the ultimate gaming experience. Use this gift card to purchase Robux—the virtual currency on Roblox—or a Premium subscription. Get exclusive items and power- ups for your favorite games across the entire Roblox metaverse.",
                style: StylesManager.hintLine(),
              ),

              HeightSpace(24),
              PointsSummaryCard(
                icon: SvgAssets.grayPointsIcon,
                requiredPoints: 500,
                currentBalance: 1280,
              ),
              HeightSpace(24),
              RedeemStepsCard(
                steps: const [
                  RedeemStepModel(
                    title: "Press Redeem",
                    description: "Confirm your points to start the process.",
                  ),
                  RedeemStepModel(
                    title: "Generate Voucher",
                    description: "Our AI secures your unique digital code.",
                  ),
                  RedeemStepModel(
                    title: "Receive QR Code",
                    description: "Get a scannable code in your activity log.",
                  ),
                  RedeemStepModel(
                    title: "Visit Partner",
                    description: "Redeem online at roblox.com/redeem.",
                  ),
                ],
              ),
              HeightSpace(24),
              SizedBox(
                width: double.infinity,
                child: MainAppButton(
                  text: "Redeem Now",
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      Routes.confirmRedemptionScreen,
                    );
                  },
                  borderRadius: 8.r,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
