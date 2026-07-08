import 'package:basera/core/resources/assets_manager.dart';
import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/parent_side/taps/activities/presentation/widgets/reports_card.dart';
import 'package:flutter/material.dart';

class ReportsWidget extends StatelessWidget {
  const ReportsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: ReportsCard(
                imagePath: SvgAssets.activities,
                title: "TOTAL EVENTS",
                textColor: ColorManager.white,
                number: "18",
              ),
            ),
            WidthSpace(16),
            Expanded(
              child: ReportsCard(
                imagePath: SvgAssets.activities,
                title: "SAFE",
                textColor: ColorManager.green,
                number: "11",
              ),
            ),
          ],
        ),
        HeightSpace(32),
        Row(
          children: [
            Expanded(
              child: ReportsCard(
                imagePath: SvgAssets.activities,
                title: "BLOCKED",
                textColor: ColorManager.pink,
                number: "7",
              ),
            ),
            WidthSpace(16),
            Expanded(
              child: ReportsCard(
                imagePath: SvgAssets.activities,
                title: "ALERTS",
                textColor: ColorManager.orange,
                number: "2",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
