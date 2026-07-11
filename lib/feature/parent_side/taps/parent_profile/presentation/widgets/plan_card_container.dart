import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlanCardContainer extends StatelessWidget {
  const PlanCardContainer({
    super.key,
    required this.badgeColor,
    required this.badgeText,
    this.badgeTextColor,
  });
  final String badgeText;
  final Color badgeColor;
  final Color? badgeTextColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
        color: badgeColor,
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Text(
        badgeText,
        style: StylesManager.noteLine()
            .copyWith(color: badgeTextColor ?? ColorManager.white)
            .copyWith(fontSize: 10.sp),
      ),
    );
  }
}
