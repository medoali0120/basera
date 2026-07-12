import 'package:basera/core/resources/assets_manager.dart';
import 'package:basera/core/resources/font_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/protection_active_card.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/parent_side/taps/home/presentation/widgets/risk_level_indicator.dart';
import 'package:basera/feature/parent_side/taps/parent_profile/presentation/widgets/custom_elevation_card.dart';
import 'package:flutter/material.dart';

class SelectedChildCard extends StatelessWidget {
  const SelectedChildCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomElevationCard(
      widget: Column(
        children: [
          Row(
            children: [
              Image.asset(ImageAssets.childImg),
              WidthSpace(16),
              Column(
                children: [
                  Text(
                    "Omar",
                    style: StylesManager.descriptionLine().copyWith(
                      fontSize: FontSize.s18,
                    ),
                  ),
                  HeightSpace(4),
                  ProtectionStatusWidget(isActive: true),
                ],
              ),
              Spacer(),
              RiskLevelIndicator(percentage: 18),
            ],
          ),
        ],
      ),
    );
  }
}
