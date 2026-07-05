import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProtectionStatusWidget extends StatelessWidget {
  final String text;
  final Color color;

  const ProtectionStatusWidget({
    super.key,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.symmetric(horizontal: 22, vertical: 14),
      decoration: BoxDecoration(
        border: Border.all(color: color, width: 2.w),
        borderRadius: BorderRadius.circular(40.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 14.w,
            height: 14.h,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          ),
          WidthSpace(12),
          Text(text, style: StylesManager.hintLine().copyWith(color: color)),
        ],
      ),
    );
  }
}
