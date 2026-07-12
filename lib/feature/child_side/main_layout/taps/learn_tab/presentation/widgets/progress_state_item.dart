import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/resources/values_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProgressStatItem extends StatelessWidget {
  const ProgressStatItem({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
    this.subtitle,
  });

  final String icon;
  final String title;
  final String value;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: REdgeInsets.all(AppPadding.p16),
        decoration: BoxDecoration(
          color: ColorManager.darkgray,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: StylesManager.litlleHintLine()),

            HeightSpace(6),

            RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: value, style: StylesManager.mediumLine()),
                  if (subtitle != null)
                    TextSpan(
                      text: " $subtitle",
                      style: StylesManager.descriptionLine(),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
