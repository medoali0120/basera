import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PointsSummaryHeader extends StatelessWidget {
  const PointsSummaryHeader({
    super.key,
    required this.icon,
    required this.title,
  });

  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          icon,
          width: 22,
          height: 22,
          colorFilter: ColorFilter.mode(ColorManager.babyBlue, BlendMode.srcIn),
        ),
        WidthSpace(8),
        Text(title, style: StylesManager.headerSelecteLine()),
      ],
    );
  }
}
