import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HowToUseItem extends StatelessWidget {
  const HowToUseItem({super.key, required this.index, required this.text});

  final int index;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 32.w,
          height: 32.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: ColorManager.white.withValues(alpha: .06),
            border: Border.all(
              color: ColorManager.white.withValues(alpha: .08),
            ),
          ),
          child: Center(
            child: Text(
              index.toString(),
              style: StylesManager.parentNameLine(),
            ),
          ),
        ),

        WidthSpace(16),

        Expanded(child: Text(text, style: StylesManager.descriptionLine())),
      ],
    );
  }
}
