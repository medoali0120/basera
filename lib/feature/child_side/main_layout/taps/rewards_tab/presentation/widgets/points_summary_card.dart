import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/widgets/custom_elevation_card.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/child_side/main_layout/taps/rewards_tab/presentation/widgets/points_summary_header.dart';
import 'package:basera/feature/child_side/main_layout/taps/rewards_tab/presentation/widgets/points_summary_item.dart';
import 'package:flutter/material.dart';

class PointsSummaryCard extends StatelessWidget {
  const PointsSummaryCard({
    super.key,
    required this.icon,
    required this.requiredPoints,
    required this.currentBalance,
  });

  final String icon;
  final int requiredPoints;
  final int currentBalance;

  @override
  Widget build(BuildContext context) {
    final remaining = currentBalance - requiredPoints;

    return CustomElevationCard(
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PointsSummaryHeader(icon: icon, title: "Points Summary"),

          HeightSpace(28),

          PointsSummaryItem(
            title: "Required Points",
            value: "$requiredPoints pts",
            valueColor: ColorManager.pink,
          ),

          PointsSummaryItem(
            title: "Your Balance",
            value: "$currentBalance pts",
            valueColor: ColorManager.lightblue,
          ),

          PointsSummaryItem(
            title: "AFTER REDEMPTION",
            value: "$remaining pts",
            subtitle: "Remaining",
            valueColor: ColorManager.lightblue,
            titleColor: ColorManager.babyBlue,
            showDivider: false,
          ),
        ],
      ),
    );
  }
}
