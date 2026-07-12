import 'package:basera/core/resources/assets_manager.dart';
import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BalanceInfoItem extends StatelessWidget {
  const BalanceInfoItem({
    super.key,
    required this.title,
    required this.value,
    this.iconColor,
    this.showDivider = true,
  });

  final String title;
  final String value;
  final Color? iconColor;
  final bool showDivider;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset(SvgAssets.pointsIcon),

            SizedBox(width: 12.w),

            Expanded(
              child: Text(
                title,
                style: StylesManager.mediumLine().copyWith(
                  color: ColorManager.optionsColor,
                ),
              ),
            ),

            Text(value, style: StylesManager.mediumLine()),
          ],
        ),

        if (showDivider) ...[
          SizedBox(height: 20.h),
          Divider(
            color: ColorManager.white.withValues(alpha: .08),
            thickness: 1,
          ),
          SizedBox(height: 20.h),
        ],
      ],
    );
  }
}
