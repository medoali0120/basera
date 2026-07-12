import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';

class ProgressHeader extends StatelessWidget {
  const ProgressHeader({super.key, required this.streak, required this.title});

  final int streak;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "YOUR PROGRESS",
                style: StylesManager.parentNameLine().copyWith(
                  color: ColorManager.babyBlue,
                ),
              ),
              HeightSpace(6),
              Text(title, style: StylesManager.headerSelecteLine()),
            ],
          ),
        ),

        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          decoration: BoxDecoration(
            color: ColorManager.white.withValues(alpha: .08),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              const Text("🔥"),
              WidthSpace(6),
              Text("$streak Days", style: StylesManager.parentNameLine()),
            ],
          ),
        ),
      ],
    );
  }
}
