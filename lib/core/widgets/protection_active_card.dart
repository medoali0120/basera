import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/font_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProtectionStatusWidget extends StatelessWidget {
  final bool isActive;
  const ProtectionStatusWidget({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(
          color: isActive ? ColorManager.green : ColorManager.error,
          width: 1.w,
        ),
        borderRadius: BorderRadius.circular(57.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 8.w,
            height: 8.h,
            decoration: BoxDecoration(
              color: isActive ? ColorManager.green : ColorManager.error,
              shape: BoxShape.circle,
            ),
          ),
          WidthSpace(6),
          Text(
            isActive ? "Protection Active" : "Protection NotActive",
            style: StylesManager.hintLine().copyWith(
              color: isActive ? ColorManager.green : ColorManager.error,
              fontSize: FontSize.s12,
            ),
          ),
        ],
      ),
    );
  }
}
