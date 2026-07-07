import 'package:basera/core/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SelectedIconShape extends StatelessWidget {
  const SelectedIconShape({
    super.key,
    required this.icon,
    required this.isSelected,
    required this.onTap,
    required this.index,
  });
  final String icon;

  final bool isSelected;
  final Function(int)? onTap;
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap?.call(index),

      child: isSelected
          ? Container(
              height: 50.h,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: ColorManager.blue20,
              ),
              child: Padding(
                padding: REdgeInsets.all(8.0),
                child: SvgPicture.asset(icon),
              ),
            )
          : SvgPicture.asset(icon),
    );
  }
}
