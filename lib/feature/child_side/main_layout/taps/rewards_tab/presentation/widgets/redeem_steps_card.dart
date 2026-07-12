import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/custom_elevation_card.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/child_side/main_layout/taps/rewards_tab/presentation/widgets/redeem_step_item.dart';
import 'package:flutter/material.dart';

class RedeemStepsCard extends StatelessWidget {
  const RedeemStepsCard({super.key, required this.steps});

  final List<RedeemStepModel> steps;

  @override
  Widget build(BuildContext context) {
    return CustomElevationCard(
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("How to Redeem", style: StylesManager.headerSelecteLine()),

          HeightSpace(24),

          ...List.generate(
            steps.length,
            (index) => RedeemStepItem(
              step: index + 1,
              title: steps[index].title,
              description: steps[index].description,
              isLast: index == steps.length - 1,
            ),
          ),
        ],
      ),
    );
  }
}

class RedeemStepModel {
  final String title;
  final String description;

  const RedeemStepModel({required this.title, required this.description});
}
