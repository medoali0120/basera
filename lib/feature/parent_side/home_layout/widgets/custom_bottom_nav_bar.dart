import 'package:basera/core/resources/assets_manager.dart';
import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/feature/parent_side/home_layout/widgets/selected_icon_shape.dart';
import 'package:basera/feature/parent_side/taps/activities/presentation/pages/parent_activities_screen.dart';
import 'package:basera/feature/parent_side/taps/alerts/presentation/pages/parent_alerts_screen.dart';
import 'package:basera/feature/parent_side/taps/home/presentation/pages/parent_home.dart';
import 'package:basera/feature/parent_side/taps/parent_profile/presentation/pages/parent_profile.dart';
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

  List<Widget> taps = [
    ParentHomeTap(),
    ParentActivitiesTap(),
    ParentAlertsTap(),
    ParentProfileTap(),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
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
                  icon: SvgAssets.activities,

                  onTap: onTap,
                  index: 1,
                ),
                SelectedIconShape(
                  isSelected: currentIndex == 2,
                  icon: SvgAssets.alerts,

                  onTap: onTap,
                  index: 2,
                ),
                SelectedIconShape(
                  isSelected: currentIndex == 3,
                  icon: SvgAssets.profile,

                  onTap: onTap,
                  index: 3,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
