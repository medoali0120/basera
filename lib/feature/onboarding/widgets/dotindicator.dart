import 'package:basera/core/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dotindicator extends StatelessWidget {
  const Dotindicator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: isActive ? 40.w : 29.w,
      height: isActive ? 6.h : 4.5.h,
      margin: REdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: isActive ? ColorManager.babyBlue : ColorManager.white,
      ),
    );
  }
}
