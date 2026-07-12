import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';

class PointsSummaryItem extends StatelessWidget {
  const PointsSummaryItem({
    super.key,
    required this.title,
    required this.value,
    required this.valueColor,
    this.subtitle,
    this.showDivider = true,
    this.titleColor,
  });

  final String title;
  final String value;
  final Color valueColor;
  final String? subtitle;
  final bool showDivider;
  final Color? titleColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Text(
                title,
                style: StylesManager.descriptionLine().copyWith(
                  color: titleColor ?? ColorManager.grey,
                ),
              ),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  value,
                  style: StylesManager.headerSelecteLine().copyWith(
                    color: valueColor,
                  ),
                ),
                if (subtitle != null)
                  Text(subtitle!, style: StylesManager.parentNameLine()),
              ],
            ),
          ],
        ),

        if (showDivider) ...[
          HeightSpace(20),
          Divider(color: ColorManager.white.withValues(alpha: .08)),
          HeightSpace(20),
        ],
      ],
    );
  }
}
