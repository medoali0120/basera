import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/custom_elevation_card.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/child_side/main_layout/taps/rewards_tab/presentation/widgets/impact_item.dart';

import 'package:flutter/material.dart';

class ImpactCard extends StatelessWidget {
  const ImpactCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomElevationCard(
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.favorite, color: ColorManager.darkPink, size: 20),

              WidthSpace(8),

              Text("YOUR IMPACT", style: StylesManager.parentNameLine()),
            ],
          ),

          HeightSpace(20),

          const ImpactItem(
            title: "Educational books",
            color: Color(0xff38BDF8),
          ),

          HeightSpace(16),

          const ImpactItem(title: "School supplies", color: Color(0xffC4B5FD)),

          HeightSpace(16),

          const ImpactItem(
            title: "Better learning opportunities",
            color: Color(0xffEC4899),
          ),
        ],
      ),
    );
  }
}
