import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/font_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/custom_elevation_card.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DailyChallengeCard extends StatelessWidget {
  const DailyChallengeCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    required this.points,
    required this.onTap,
  });

  final String icon;
  final String title;
  final String description;
  final int points;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CustomElevationCard(
        height: 16,
        width: 16,
        widget: Row(
          children: [
            Image.asset(icon),

            WidthSpace(16),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: StylesManager.parentNameLine()),

                  HeightSpace(4),

                  Text(
                    description,
                    style: StylesManager.descriptionLine().copyWith(
                      fontSize: FontSize.s14,
                    ),
                  ),
                ],
              ),
            ),

            WidthSpace(12),

            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "+$points",
                    style: StylesManager.mediumLine().copyWith(
                      color: ColorManager.babyBlue,
                    ),
                  ),
                  TextSpan(
                    text: " ★",
                    style: StylesManager.parentNameLine().copyWith(
                      color: ColorManager.babyBlue,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
