import 'package:basera/core/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DonationProgressWidget extends StatelessWidget {
  const DonationProgressWidget({super.key, required this.value});

  final double value;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.r),
      child: LinearProgressIndicator(
        minHeight: 6.h,
        value: value,
        backgroundColor: ColorManager.grey.withValues(alpha: .25),
        valueColor: AlwaysStoppedAnimation(ColorManager.darkPink),
      ),
    );
  }
}
