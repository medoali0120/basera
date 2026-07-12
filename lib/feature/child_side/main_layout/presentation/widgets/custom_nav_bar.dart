import 'package:basera/core/resources/assets_manager.dart';
import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/feature/child_side/main_layout/presentation/widgets/selected_icon_shape.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomNavBar extends StatelessWidget {
  CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });
  final Function(int)? onTap;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
        color: ColorManager.navBarColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      height: 60.h,

      child: Padding(
        padding: REdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SelectedIconShape(
              isSelected: currentIndex == 0,
              icon: SvgAssets.home,

              onTap: onTap,
              index: 0,
            ),
            SelectedIconShape(
              isSelected: currentIndex == 1,
              icon: SvgAssets.rewardsIcon,

              onTap: onTap,
              index: 1,
            ),
            SelectedIconShape(
              isSelected: currentIndex == 2,
              icon: SvgAssets.learnIcon,

              onTap: onTap,
              index: 2,
            ),
            SelectedIconShape(
              isSelected: currentIndex == 3,
              icon: SvgAssets.missionIcon,

              onTap: onTap,
              index: 3,
            ),
            SelectedIconShape(
              isSelected: currentIndex == 4,
              icon: SvgAssets.profile,

              onTap: onTap,
              index: 4,
            ),
          ],
        ),
      ),
    );
  }
}
