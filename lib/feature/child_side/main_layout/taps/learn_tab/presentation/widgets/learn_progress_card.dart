import 'package:basera/core/resources/assets_manager.dart';
import 'package:basera/core/widgets/custom_elevation_card.dart';
import 'package:basera/core/widgets/main_botton.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/child_side/main_layout/taps/learn_tab/presentation/widgets/progress_header.dart';
import 'package:basera/feature/child_side/main_layout/taps/learn_tab/presentation/widgets/progress_stats_row.dart';
import 'package:basera/feature/child_side/main_layout/taps/learn_tab/presentation/widgets/xp_progress_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LearningProgressCard extends StatelessWidget {
  const LearningProgressCard({
    super.key,
    required this.courses,
    required this.points,
    required this.progress,
    required this.streak,
    required this.onContinue,
  });

  final int courses;
  final int points;
  final double progress;
  final int streak;
  final VoidCallback onContinue;

  @override
  Widget build(BuildContext context) {
    return CustomElevationCard(
      widget: Column(
        children: [
          ProgressHeader(streak: streak, title: "Keep it up!"),

          HeightSpace(24),

          ProgressStatsRow(
            courseIcon: SvgAssets.learnIcon,
            pointIcon: SvgAssets.smallCupIcon,
            courses: courses,
            points: points,
          ),

          HeightSpace(24),

          XpProgressWidget(progress: progress),

          HeightSpace(24),

          SizedBox(
            width: double.infinity,
            child: MainAppButton(
              text: "Continue Learning",
              onTap: onContinue,
              borderRadius: 12.r,
            ),
          ),
        ],
      ),
    );
  }
}
