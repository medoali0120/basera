import 'package:basera/core/resources/assets_manager.dart';
import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/font_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/custom_elevation_card.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PointsCard extends StatelessWidget {
  const PointsCard({
    super.key,
    required this.points,
    required this.currentPoints,
    required this.targetPoints,
    required this.levelName,
    required this.progress,
    required this.onRewardsTap,
    required this.giftImage,
  });

  final int points;
  final int currentPoints;
  final int targetPoints;
  final String levelName;
  final double progress;
  final VoidCallback onRewardsTap;
  final String giftImage;

  @override
  Widget build(BuildContext context) {
    return CustomElevationCard(
      widget: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(SvgAssets.pointsIcon),
                        WidthSpace(6),
                        Text(
                          "$points Points",
                          style: StylesManager.headerSelecteLine().copyWith(
                            fontSize: FontSize.s18,
                          ),
                        ),
                      ],
                    ),

                    HeightSpace(8),

                    Text(
                      levelName,
                      style: StylesManager.descriptionLine().copyWith(
                        color: ColorManager.babyBlue,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.all(12.r),
                decoration: BoxDecoration(
                  color: const Color(0xff32104A),
                  borderRadius: BorderRadius.circular(18.r),
                  border: Border.all(
                    color: ColorManager.pink.withValues(alpha: .25),
                  ),
                ),
                child: Image.asset(giftImage, width: 48.w, height: 48.h),
              ),
            ],
          ),

          HeightSpace(24),

          ClipRRect(
            borderRadius: BorderRadius.circular(20.r),
            child: LinearProgressIndicator(
              value: progress,
              minHeight: 8.h,
              backgroundColor: ColorManager.grey.withValues(alpha: .2),
              valueColor: AlwaysStoppedAnimation(ColorManager.babyBlue),
            ),
          ),

          HeightSpace(12),

          Row(
            children: [
              Text(
                "$currentPoints / $targetPoints",
                style: StylesManager.descriptionLine(),
              ),

              const Spacer(),

              GestureDetector(
                onTap: onRewardsTap,
                child: Text(
                  "View Rewards",
                  style: StylesManager.descriptionLine().copyWith(
                    color: ColorManager.babyBlue,
                  ),
                ),
              ),

              WidthSpace(4),

              Icon(
                Icons.arrow_forward_ios_rounded,
                color: ColorManager.babyBlue,
                size: 14.sp,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
