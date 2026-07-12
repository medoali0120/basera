import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/custom_elevation_card.dart';
import 'package:basera/core/widgets/main_botton.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/child_side/main_layout/taps/child_home_tab/presentation/widgets/rewards_price_badge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RewardCard extends StatelessWidget {
  const RewardCard({
    super.key,
    required this.image,
    required this.title,
    required this.points,
    required this.onRedeem,
  });

  final String image;
  final String title;
  final int points;
  final VoidCallback onRedeem;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 165.w,
      child: CustomElevationCard(
        height: 12,
        width: 12,
        widget: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(18.r),
                  child: Image.asset(
                    image,
                    width: double.infinity,
                    height: 105.h,
                    fit: BoxFit.cover,
                  ),
                ),

                Positioned(
                  top: 8.h,
                  right: 8.w,
                  child: RewardPriceBadge(points: points),
                ),
              ],
            ),

            HeightSpace(12),

            Center(
              child: Text(
                title,
                style: StylesManager.mediumLine(),
                textAlign: TextAlign.center,
              ),
            ),

            // HeightSpace(12),
            Spacer(),
            SizedBox(
              height: 40.h,
              width: double.infinity,
              child: MainAppButton(
                text: "Redeem",
                isGradient: false,
                backgroundColor: ColorManager.primary,
                borderColor: ColorManager.babyBlue.withValues(alpha: 0.5),

                borderRadius: 12.r,
                onTap: onRedeem,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
