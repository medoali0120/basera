import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VoucherDetailItem extends StatelessWidget {
  const VoucherDetailItem({
    super.key,
    required this.title,
    required this.value,
    this.valueColor,
    this.showDivider = true,
  });

  final String title;
  final String value;
  final Color? valueColor;
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
            Text(
              value,
              style: StylesManager.mediumLine().copyWith(
                color: valueColor ?? ColorManager.white,
              ),
            ),
          ],
        ),

        if (showDivider) ...[
          SizedBox(height: 18.h),
          Divider(
            color: ColorManager.white.withValues(alpha: .06),
            thickness: 1,
          ),
          SizedBox(height: 18.h),
        ],
      ],
    );
  }
}
