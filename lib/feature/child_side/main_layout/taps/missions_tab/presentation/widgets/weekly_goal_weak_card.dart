import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/custom_elevation_card.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/child_side/main_layout/taps/missions_tab/presentation/widgets/weekly_goal_info.dart';
import 'package:basera/feature/child_side/main_layout/taps/missions_tab/presentation/widgets/weekly_goal_info.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WeeklyGoalCard extends StatelessWidget {
  const WeeklyGoalCard({
    super.key,
    required this.completed,
    required this.goal,
    required this.rewardPoints,
    required this.progress,
  });

  final int completed;
  final int goal;
  final int rewardPoints;
  final double progress;

  @override
  Widget build(BuildContext context) {
    return CustomElevationCard(
      widget: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Weekly Goal",
                      style: StylesManager.headerSelecteLine(),
                    ),
                    HeightSpace(4),
                    Text(
                      "Complete $goal missions this week.",
                      style: StylesManager.descriptionLine(),
                    ),
                  ],
                ),
              ),

              SizedBox(
                width: 70.w,
                height: 70.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      height: 80.h,
                      width: 80.w,
                      child: CircularProgressIndicator(
                        value: progress,
                        strokeWidth: 7,
                        backgroundColor: ColorManager.white.withValues(
                          alpha: .12,
                        ),
                        valueColor: AlwaysStoppedAnimation(
                          ColorManager.babyBlue,
                        ),
                      ),
                    ),
                    Text(
                      "${(progress * 100).toInt()}%",
                      style: StylesManager.parentNameLine().copyWith(
                        color: ColorManager.babyBlue,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          HeightSpace(24),

          Row(
            children: [
              Text(
                "$completed / $goal",
                style: StylesManager.headerSelecteLine().copyWith(
                  color: ColorManager.lightblue,
                ),
              ),
              Spacer(),

              WeeklyGoalInfo(
                title: "POTENTIAL REWARD",
                value: "+$rewardPoints Points + 🏅 Badge",
                valueColor: ColorManager.babyBlue,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
