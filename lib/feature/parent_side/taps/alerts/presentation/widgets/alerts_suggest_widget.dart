import 'package:basera/core/resources/assets_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/parent_side/taps/alerts/presentation/widgets/alerts_suggest_card.dart';
import 'package:flutter/material.dart';

class AlertsSuggestWidget extends StatelessWidget {
  const AlertsSuggestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Notification", style: StylesManager.headerSelecteLine()),
        HeightSpace(24),
        AlertsSuggestCard(
          description: "Omar requested to disable VPN protection.",
          imagePath: SvgAssets.vpn,
          title: "VPN Disable Request",
          approveTap: () {},
          date: "2M AGO",
        ),
        HeightSpace(32),
        AlertsSuggestCard(
          description: "Omar requested to sign out of Guardian AI.",
          imagePath: SvgAssets.logout,
          title: "Logout Request",
          approveTap: () {},
          date: "5M AGO",
        ),
        HeightSpace(32),
        AlertsSuggestCard(
          description: "Omar requested to disconnect iPhone 15Pro.",
          imagePath: SvgAssets.solarLinkIcon,
          title: "Disconnect Device Request",
          approveTap: () {},
          date: "12M AGO",
        ),
      ],
    );
  }
}
