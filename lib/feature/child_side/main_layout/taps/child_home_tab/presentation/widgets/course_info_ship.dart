import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/font_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CourseInfoChip extends StatelessWidget {
  const CourseInfoChip({
    super.key,
    required this.text,
    this.icon,
    this.backgroundColor,
  });

  final String text;
  final IconData? icon;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: backgroundColor ?? ColorManager.blue20,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(icon, color: ColorManager.white, size: 14.sp),
            WidthSpace(4),
          ],
          Text(
            text,
            style: StylesManager.parentNameLine().copyWith(
              fontSize: FontSize.s12,
            ),
          ),
        ],
      ),
    );
  }
}
