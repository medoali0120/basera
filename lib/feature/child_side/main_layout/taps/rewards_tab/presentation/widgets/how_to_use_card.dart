import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/custom_elevation_card.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/child_side/main_layout/taps/rewards_tab/presentation/widgets/how_to_use_item.dart';
import 'package:flutter/material.dart';

class HowToUseCard extends StatelessWidget {
  const HowToUseCard({super.key, required this.steps});

  final List<String> steps;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("HOW TO USE", style: StylesManager.descriptionLine()),

        HeightSpace(16),

        CustomElevationCard(
          widget: Column(
            children: List.generate(
              steps.length,
              (index) => Padding(
                padding: EdgeInsets.only(
                  bottom: index == steps.length - 1 ? 0 : 24,
                ),
                child: HowToUseItem(index: index + 1, text: steps[index]),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
