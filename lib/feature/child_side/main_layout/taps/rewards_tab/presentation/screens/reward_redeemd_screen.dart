import 'package:basera/core/resources/assets_manager.dart';
import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/font_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/resources/values_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/child_side/main_layout/taps/rewards_tab/presentation/widgets/how_to_use_card.dart';
import 'package:basera/feature/child_side/main_layout/taps/rewards_tab/presentation/widgets/qr_widget.dart';
import 'package:basera/feature/child_side/main_layout/taps/rewards_tab/presentation/widgets/vocher_detail_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RewardRedeemdScreen extends StatelessWidget {
  const RewardRedeemdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.primary,
        title: Text(
          "Reward Redeemed",
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
                "Success!",
                style: StylesManager.onboardingTitleLine().copyWith(
                  fontWeight: FontWeightManager.regular,
                ),
              ),
              HeightSpace(4),
              Text(
                "Congratulations! Your reward has been redeemed successfully. Your secure voucher is now ready to use.",
                style: StylesManager.hintLine().copyWith(
                  fontSize: FontSize.s16,
                ),
                textAlign: TextAlign.center,
              ),
              HeightSpace(24),
              QrWidget(),
              HeightSpace(24),
              VoucherDetailsCard(
                partner: "Roblox",
                voucherType: "Digital Gift Card",
                delivery: "Instant",
                expires: "30 Days",
                redeemMethod: "QR or Manual",
              ),
              HeightSpace(24),
              HowToUseCard(
                steps: const [
                  "Visit the Roblox.com/redeem website or open the app.",
                  "Log in to your account and select 'Gift Cards' from the menu.",
                  "Enter the code manually or scan the QR code to apply credit instantly.",
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
