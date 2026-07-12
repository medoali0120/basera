import 'package:basera/core/resources/assets_manager.dart';
import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/parent_side/taps/alerts/presentation/widgets/alerts_card.dart';
import 'package:flutter/material.dart';

class AlertsWidget extends StatelessWidget {
  const AlertsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: AlertsCard(
                imagePath: SvgAssets.alertIcon,
                title: "Critical Alerts",
                textColor: ColorManager.pink,
                number: "2",
              ),
            ),
            WidthSpace(16),
            Expanded(
              child: AlertsCard(
                imagePath: SvgAssets.calenderIcon,
                title: "Pending Requests",
                textColor: ColorManager.starRateColor,
                number: "3",
              ),
            ),
          ],
        ),
        HeightSpace(32),
        Row(
          children: [
            Expanded(
              child: AlertsCard(
                imagePath: SvgAssets.protectionIcon,
                title: "Blocked Threats",
                textColor: ColorManager.babyBlue,
                number: "7",
              ),
            ),
            WidthSpace(16),
            Expanded(
              child: AlertsCard(
                imagePath: SvgAssets.aiIcon,
                title: "AI Decisions",
                textColor: ColorManager.purpel,
                number: "15",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
