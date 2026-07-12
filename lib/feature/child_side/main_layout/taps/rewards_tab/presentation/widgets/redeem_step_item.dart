import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/child_side/main_layout/taps/rewards_tab/presentation/widgets/vertical_step_indicator.dart';
import 'package:flutter/material.dart';

class RedeemStepItem extends StatelessWidget {
  const RedeemStepItem({
    super.key,
    required this.step,
    required this.title,
    required this.description,
    required this.isLast,
  });

  final int step;
  final String title;
  final String description;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          VerticalStepIndicator(step: step, isLast: isLast),

          WidthSpace(18),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: StylesManager.parentNameLine()),

                  HeightSpace(6),

                  Text(description, style: StylesManager.descriptionLine()),

                  if (!isLast) HeightSpace(30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
