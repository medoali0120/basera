import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/main_botton.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/child_side/main_layout/taps/child_home_tab/presentation/widgets/course_info_ship.dart';
import 'package:basera/feature/child_side/main_layout/taps/child_home_tab/presentation/widgets/course_progress_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturedCourseCard extends StatelessWidget {
  const FeaturedCourseCard({
    super.key,
    required this.image,
    required this.title,
    required this.points,
    required this.duration,
    required this.level,
    required this.progress,
    required this.progressText,
    required this.onContinue,
  });

  final String image;
  final String title;
  final int points;
  final String duration;
  final String level;
  final double progress;
  final String progressText;
  final VoidCallback onContinue;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24.r),
      child: Stack(
        children: [
          Image.asset(
            image,
            width: double.infinity,
            height: 380.h,
            fit: BoxFit.cover,
          ),

          Container(
            width: double.infinity,
            height: 380.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withValues(alpha: .15),
                  Colors.black.withValues(alpha: .75),
                ],
              ),
            ),
          ),

          Positioned.fill(
            child: Padding(
              padding: REdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CourseInfoChip(
                        text: level,
                        backgroundColor: ColorManager.blue20,
                      ),
                      WidthSpace(8),
                      CourseInfoChip(
                        text: duration,
                        icon: Icons.access_time_rounded,
                        backgroundColor: Colors.black45,
                      ),
                    ],
                  ),

                  const Spacer(),

                  Text(title, style: StylesManager.headerSignLine()),

                  HeightSpace(20),

                  CourseProgressSection(
                    points: points,
                    progress: progress,
                    progressText: progressText,
                  ),

                  HeightSpace(24),

                  SizedBox(
                    width: double.infinity,
                    child: MainAppButton(
                      text: "Continue Course",
                      isGradient: false,
                      backgroundColor: ColorManager.white,
                      textStyle: StylesManager.mediumLine().copyWith(
                        color: ColorManager.primary,
                      ),
                      borderRadius: 16.r,
                      onTap: onContinue,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
