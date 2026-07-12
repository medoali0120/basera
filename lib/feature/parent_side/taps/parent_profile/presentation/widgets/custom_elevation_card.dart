import 'package:basera/core/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevationCard extends StatelessWidget {
  const CustomElevationCard({super.key, required this.widget});
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.r),
        color: const Color(0xFF151B31),
        boxShadow: [
          BoxShadow(
            color: ColorManager.customParentCardColor,
            blurRadius: 15,
            spreadRadius: 0,
            offset: const Offset(0, 0),
          ),
        ],
        border: Border.all(color: ColorManager.white.withValues(alpha: 0.08)),
      ),
      child: Padding(padding: REdgeInsets.all(24), child: widget),
    );
  }
}
