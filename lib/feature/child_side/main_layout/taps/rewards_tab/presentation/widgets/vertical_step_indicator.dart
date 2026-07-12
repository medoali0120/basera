import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerticalStepIndicator extends StatelessWidget {
  const VerticalStepIndicator({
    super.key,
    required this.step,
    required this.isLast,
  });

  final int step;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 34.w,
      child: Column(
        children: [
          Container(
            width: 34.w,
            height: 34.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ColorManager.darkBlue,
              border: Border.all(color: ColorManager.lightblue, width: 2),
            ),
            child: Center(
              child: Text(
                step.toString(),
                style: StylesManager.parentNameLine(),
              ),
            ),
          ),

          if (!isLast)
            Expanded(
              child: Container(
                width: 2,
                color: ColorManager.white.withValues(alpha: .15),
              ),
            ),
        ],
      ),
    );
  }
}
