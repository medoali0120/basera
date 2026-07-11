import 'package:basera/core/resources/assets_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/parent_side/taps/home/presentation/widgets/status_child_card.dart';
import 'package:flutter/material.dart';

class StatusChildWidget extends StatelessWidget {
  const StatusChildWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: StatusChildCard(
                title: "VPN Status",
                number: "Connected",
                imagePath: SvgAssets.key,
              ),
            ),
            WidthSpace(16),
            Expanded(
              child: StatusChildCard(
                title: "Screen Time",
                number: "2h 45m",
                imagePath: SvgAssets.timerIcon,
              ),
            ),
          ],
        ),
        HeightSpace(32),
        Row(
          children: [
            Expanded(
              child: StatusChildCard(
                title: "Critical Alerts",
                number: "7 Today",
                imagePath: SvgAssets.homeBlockIcon,
              ),
            ),
            WidthSpace(16),
            Expanded(
              child: StatusChildCard(
                title: "Blocked Domains",
                number: "2 Issues",
                imagePath: SvgAssets.homeAlertIcon,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
