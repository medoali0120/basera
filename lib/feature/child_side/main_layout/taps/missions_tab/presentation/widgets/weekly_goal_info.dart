import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/font_manager.dart';

import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';

class WeeklyGoalInfo extends StatelessWidget {
  const WeeklyGoalInfo({
    super.key,
    required this.title,
    required this.value,
    this.valueColor,
  });

  final String title;
  final String value;
  final Color? valueColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: StylesManager.hintLine().copyWith(fontSize: FontSize.s20),
        ),
        HeightSpace(6),
        Row(
          children: [
            Text(
              value,
              style: StylesManager.hintLine().copyWith(
                fontSize: FontSize.s18,
                color: ColorManager.lightblue,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
