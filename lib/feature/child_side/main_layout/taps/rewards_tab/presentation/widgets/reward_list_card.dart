import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/font_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/custom_elevation_card.dart';
import 'package:basera/core/widgets/main_botton.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RewardListCard extends StatelessWidget {
  const RewardListCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.points,
    required this.buttonText,
    required this.onTap,
    this.buttonColor,
    this.isGradient = true,
    required this.cardOnTap,
  });

  final String imagePath;
  final String title;
  final String description;
  final int points;
  final String buttonText;
  final VoidCallback onTap;
  final Color? buttonColor;
  final bool isGradient;
  final VoidCallback cardOnTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: cardOnTap,
      child: CustomElevationCard(
        height: 10,
        width: 16,
        widget: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: Image.asset(
                imagePath,
                width: 100.w,
                height: 100.h,
                fit: BoxFit.fill,
              ),
            ),

            WidthSpace(16),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: StylesManager.mediumLine()),

                  Text(
                    description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: StylesManager.descriptionLine().copyWith(
                      fontSize: FontSize.s14,
                    ),
                  ),
                  HeightSpace(12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "$points Pts",
                        style: StylesManager.mediumLine().copyWith(
                          color: ColorManager.babyBlue,
                        ),
                      ),

                      SizedBox(
                        width: 110.w,
                        height: 35.h,
                        child: MainAppButton(
                          text: buttonText,
                          onTap: onTap,
                          borderRadius: 8.r,
                          isGradient: isGradient,
                          backgroundColor: buttonColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            WidthSpace(12),
          ],
        ),
      ),
    );
  }
}
