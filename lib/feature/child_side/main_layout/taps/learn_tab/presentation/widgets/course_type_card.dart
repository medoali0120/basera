import 'package:basera/core/widgets/custom_elevation_card.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/child_side/main_layout/taps/learn_tab/presentation/widgets/course_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CourseTypeCard extends StatelessWidget {
  const CourseTypeCard({
    super.key,
    required this.image,
    required this.title,
    required this.author,
    required this.points,
    required this.duration,
    required this.onTap,
  });

  final String image;
  final String title;
  final String author;
  final int points;
  final int duration;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CustomElevationCard(
        height: 16,
        width: 16,
        widget: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: Image.asset(
                image,
                width: 72.w,
                height: 72.h,
                fit: BoxFit.cover,
              ),
            ),

            WidthSpace(16),

            Expanded(
              child: CourseInfo(
                title: title,
                author: author,
                points: points,
                duration: duration,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
