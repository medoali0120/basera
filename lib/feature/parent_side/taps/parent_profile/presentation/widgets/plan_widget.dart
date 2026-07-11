import 'package:basera/core/resources/assets_manager.dart';
import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/parent_side/taps/parent_profile/presentation/widgets/plan_card.dart';
import 'package:flutter/material.dart';

class PlanWidget extends StatelessWidget {
  const PlanWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PlanCard(
          title: "FREE",

          price: "0",

          iconPath: SvgAssets.grayTrueIcon,

          badgeText: "",

          badgeColor: Colors.transparent,

          buttonText: "Current Status",

          buttonColor: Colors.transparent,

          isGradientButton: false,

          features: const [
            "1 Protected Device",
            "Basic AI Scanning",
            "Daily Summaries",
            "Location Tracking",
            "Emergency SOS",
          ],

          onTap: () {},
        ),
        HeightSpace(24),
        PlanCard(
          title: "DUO PLAN",

          price: "5.99",

          iconPath: SvgAssets.purpelTrueIcon,

          badgeText: "MOST POPULAR",

          badgeColor: ColorManager.purpel,

          buttonText: "Upgrade Now",

          buttonColor: ColorManager.babyBlue,

          isGradientButton: true,

          features: const [
            "2 Protected Children",
            "Real-time AI Alerts",
            "Smart Content Filter",
            "24/7 Priority Support",
            "Web Protection VPN",
            "App Usage Limits",
            "Safe Search Pro",
          ],

          onTap: () {},
        ),
        HeightSpace(24),
        PlanCard(
          title: "FAMILY PLAN",

          price: "7.99",

          iconPath: SvgAssets.greenTrueIcon,

          badgeText: "BEST VALUE",

          badgeColor: ColorManager.green,

          buttonText: "Choose Plan",

          buttonColor: const Color(0xff3A3A3A),

          isGradientButton: true,

          features: const [
            "5 Protected Children",
            "Advanced AI Guardian",
            "Geofencing Alerts",
            "Historical Reports",
            "Multi-Device Admin",
            "Safe Wi-Fi Shield",
          ],

          onTap: () {},
        ),
        HeightSpace(24),
        PlanCard(
          title: "UNLIMITED",

          price: "${12.99}",

          iconPath: SvgAssets.yellowTrueIcon,

          badgeText: "20% OFF",

          badgeColor: ColorManager.starRateColor,

          buttonText: "Go Premium",

          buttonColor: ColorManager.starRateColor,

          isGradientButton: false,

          features: const [
            "Unlimited Children",
            "Full AI Security Suite",
            "Identity Theft Monitor",
            "Dedicated Advisor",
            "Family VPN Network",
            "Enterprise Cloud Storage",
            "Priority Beta Access",
          ],

          onTap: () {},
        ),
        HeightSpace(24),
      ],
    );
  }
}
