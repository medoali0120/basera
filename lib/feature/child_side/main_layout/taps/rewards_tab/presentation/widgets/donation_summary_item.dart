import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/font_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DonationSummaryItem extends StatelessWidget {
  const DonationSummaryItem({
    super.key,
    required this.title,
    required this.points,
    this.highlight = false,
    this.showDivider = true,
  });

  final String title;
  final int points;
  final bool highlight;
  final bool showDivider;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(title, style: StylesManager.descriptionLine()),
            ),

            Icon(Icons.star, color: ColorManager.starRateColor, size: 18.sp),

            WidthSpace(4),

            Text(
              points.toString(),
              style: highlight
                  ? StylesManager.headerSelecteLine()
                  : StylesManager.mediumLine(),
            ),

            if (highlight) Text(" Points", style: StylesManager.mediumLine()),
          ],
        ),

        if (showDivider) ...[
          HeightSpace(16),
          Divider(color: ColorManager.white.withValues(alpha: .08)),
          HeightSpace(16),
        ],
      ],
    );
  }
}
