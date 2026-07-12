import 'package:basera/core/resources/assets_manager.dart';
import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/font_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/parent_side/taps/activities/presentation/widgets/date_filter_button.dart';
import 'package:basera/feature/parent_side/taps/parent_profile/presentation/widgets/custom_elevation_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChildActivityCard extends StatelessWidget {
  ChildActivityCard({super.key, required this.isActive});
  bool isActive;
  @override
  Widget build(BuildContext context) {
    return CustomElevationCard(
      widget: Column(
        children: [
          Row(
            children: [
              Image.asset(ImageAssets.childImg),
              WidthSpace(16),
              Column(
                children: [
                  Text(
                    "Omar",
                    style: StylesManager.descriptionLine().copyWith(
                      fontSize: FontSize.s18,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 8.w,
                        height: 8.h,
                        decoration: BoxDecoration(
                          color: isActive
                              ? ColorManager.green
                              : ColorManager.error,
                          shape: BoxShape.circle,
                        ),
                      ),
                      WidthSpace(6),
                      Text(
                        isActive ? "Protected" : "unProtected",
                        style: StylesManager.descriptionLine().copyWith(
                          fontSize: FontSize.s16,
                          color: isActive
                              ? ColorManager.green
                              : ColorManager.error,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
              DateFilterButton(),
            ],
          ),
        ],
      ),
    );
  }
}
