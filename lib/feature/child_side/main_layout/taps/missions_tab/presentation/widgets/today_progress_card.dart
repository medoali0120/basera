import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/custom_elevation_card.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/child_side/main_layout/taps/missions_tab/presentation/widgets/progress_info_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TodayProgressCard extends StatelessWidget {
  const TodayProgressCard({
    super.key,
    required this.completedMissions,
    required this.totalMissions,
    required this.rewardPoints,
    required this.streak,
  });

  final int completedMissions;
  final int totalMissions;
  final int rewardPoints;
  final int streak;

  @override
  Widget build(BuildContext context) {
    final progress = completedMissions / totalMissions;

    return CustomElevationCard(
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  "Today's Progress",
                  style: StylesManager.mediumLine(),
                ),
              ),

              Container(
                padding: REdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: ColorManager.white.withValues(alpha: .08),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text("🔥"),
                    WidthSpace(4),
                    Text("$streak Days", style: StylesManager.parentNameLine()),
                  ],
                ),
              ),
            ],
          ),

          HeightSpace(8),

          Text(
            "$completedMissions / $totalMissions Missions Completed",
            style: StylesManager.descriptionLine(),
          ),

          HeightSpace(18),

          ClipRRect(
            borderRadius: BorderRadius.circular(20.r),
            child: LinearProgressIndicator(
              value: progress,
              minHeight: 10.h,
              backgroundColor: ColorManager.grey.withValues(alpha: .25),
              valueColor: AlwaysStoppedAnimation(ColorManager.babyBlue),
            ),
          ),

          HeightSpace(24),

          Row(
            children: [
              Expanded(
                child: ProgressInfoItem(
                  title: "Today's Reward",
                  value: "+$rewardPoints\nPoints",
                ),
              ),

              Container(
                width: 1,
                height: 55.h,
                color: ColorManager.white.withValues(alpha: .1),
              ),

              WidthSpace(20),

              Expanded(
                child: ProgressInfoItem(
                  title: "Daily Streak",
                  value: "$streak Days",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
