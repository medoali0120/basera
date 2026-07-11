import 'package:basera/core/resources/assets_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/parent_side/taps/parent_profile/presentation/widgets/why_ugrade_card.dart';
import 'package:flutter/material.dart';

class UpgradeSmallIconsWidget extends StatelessWidget {
  const UpgradeSmallIconsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Why Upgrade?",
          style: StylesManager.noteLine(),
          textAlign: TextAlign.start,
        ),
        HeightSpace(24),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: WhyUgradeCard(
                imagePath: ImageAssets.groupIcon,
                title: "Connect More\n Children",
              ),
            ),
            Expanded(
              child: WhyUgradeCard(
                imagePath: ImageAssets.aiLogo,
                title: "Advanced AI\n Protection",
                description: "Get deeper AI analysis and smart insights.",
              ),
            ),
            Expanded(
              child: WhyUgradeCard(
                imagePath: ImageAssets.webLogo,
                title: "VPN for\n All Devices",
                description: "Secure all your children's devices with VPN.",
              ),
            ),
            Expanded(
              child: WhyUgradeCard(
                imagePath: ImageAssets.reportsLogo,
                title: "Detailed\n Reports",
                description:
                    "Receive detailed reports and weekly AI summaries.",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
