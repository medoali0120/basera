import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CourseProgressSection extends StatelessWidget {
  const CourseProgressSection({
    super.key,
    required this.points,
    required this.progress,
    required this.progressText,
  });

  final int points;
  final double progress;
  final String progressText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.star, color: ColorManager.babyBlue, size: 18.sp),
            WidthSpace(4),
            Text(
              "$points Points",
              style: StylesManager.mediumLine().copyWith(
                color: ColorManager.babyBlue,
              ),
            ),
          ],
        ),

        HeightSpace(12),

        ClipRRect(
          borderRadius: BorderRadius.circular(20.r),
          child: LinearProgressIndicator(
            value: progress,
            minHeight: 6.h,
            backgroundColor: ColorManager.grey.withValues(alpha: .2),
            valueColor: AlwaysStoppedAnimation(ColorManager.babyBlue),
          ),
        ),

        HeightSpace(8),

        Text(progressText, style: StylesManager.descriptionLine()),
      ],
    );
  }
}
