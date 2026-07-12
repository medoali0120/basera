import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';

class XpProgressWidget extends StatelessWidget {
  const XpProgressWidget({super.key, required this.progress});

  final double progress;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("XP Progress", style: StylesManager.descriptionLine()),
            const Spacer(),
            Text(
              "${(progress * 100).toInt()}%",
              style: StylesManager.parentNameLine().copyWith(
                color: ColorManager.babyBlue,
              ),
            ),
          ],
        ),

        HeightSpace(10),

        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: LinearProgressIndicator(
            minHeight: 7,
            value: progress,
            backgroundColor: ColorManager.white.withValues(alpha: .1),
            valueColor: AlwaysStoppedAnimation(ColorManager.babyBlue),
          ),
        ),
      ],
    );
  }
}
