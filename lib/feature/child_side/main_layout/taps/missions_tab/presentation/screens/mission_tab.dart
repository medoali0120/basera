import 'package:basera/core/resources/font_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/child_side/main_layout/taps/child_home_tab/presentation/widgets/mission_widget.dart';
import 'package:basera/feature/child_side/main_layout/taps/missions_tab/presentation/widgets/motivation_carrd.dart';
import 'package:basera/feature/child_side/main_layout/taps/missions_tab/presentation/widgets/today_progress_card.dart';
import 'package:basera/feature/child_side/main_layout/taps/missions_tab/presentation/widgets/weekly_goal_weak_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MissionTab extends StatelessWidget {
  const MissionTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: REdgeInsets.all(24),
        child: Column(
          children: [
            Text(
              "Complete missions to earn points and unlockamazing rewards.",
              style: StylesManager.hintLine().copyWith(fontSize: FontSize.s18),
            ),
            HeightSpace(24),
            TodayProgressCard(
              completedMissions: 3,
              totalMissions: 5,
              rewardPoints: 150,
              streak: 7,
            ),
            HeightSpace(24),
            MissionWidget(isDaily: false),
            HeightSpace(24),
            WeeklyGoalCard(
              completed: 19,
              goal: 25,
              rewardPoints: 500,
              progress: .75,
            ),
            HeightSpace(24),
            MotivationCard(
              message:
                  "Keep Going! Every completed mission helps you become safer online.",
            ),
          ],
        ),
      ),
    );
  }
}
