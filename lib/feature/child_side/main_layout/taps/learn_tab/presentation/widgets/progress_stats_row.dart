import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/child_side/main_layout/taps/learn_tab/presentation/widgets/progress_state_item.dart';
import 'package:flutter/material.dart';

class ProgressStatsRow extends StatelessWidget {
  const ProgressStatsRow({
    super.key,
    required this.courseIcon,
    required this.pointIcon,
    required this.courses,
    required this.points,
  });

  final String courseIcon;
  final String pointIcon;
  final int courses;
  final int points;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProgressStatItem(
          icon: courseIcon,
          title: "Courses",
          value: "$courses",
          subtitle: "Done",
        ),

        WidthSpace(16),

        ProgressStatItem(icon: pointIcon, title: "Points", value: "$points"),
      ],
    );
  }
}
