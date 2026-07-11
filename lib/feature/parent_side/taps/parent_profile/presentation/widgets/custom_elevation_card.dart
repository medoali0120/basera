import 'package:basera/core/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevationCard extends StatelessWidget {
  const CustomElevationCard({
    super.key,
    required this.widget,
    this.height,
    this.width,
    this.borderColor,
  });
  final Widget widget;
  final double? height;
  final double? width;
  final Color? borderColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.r),
        color: const Color(0xFFFFFFFF).withValues(alpha: 0.0001),
        boxShadow: [
          BoxShadow(
            color: ColorManager.customParentCardColor,
            blurRadius: 10,
            spreadRadius: 0,
            offset: const Offset(0, 0),
          ),
        ],
        border: Border.all(
          color: borderColor ?? ColorManager.white.withValues(alpha: 0.08),
        ),
      ),
      child: Padding(
        padding: REdgeInsets.symmetric(
          vertical: height ?? 24,
          horizontal: width ?? 24,
        ),
        child: widget,
      ),
    );
  }
}
