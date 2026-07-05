import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auto_size_text/flutter_auto_size_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectTypeCard extends StatelessWidget {
  const SelectTypeCard({
    super.key,
    required this.isSelected,
    required this.imagePath,
    required this.text,
    required this.onTap,
  });
  final bool isSelected;
  final String imagePath;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 440.h,
        width: 170.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: ColorManager.primary,
          border: Border.all(
            color: isSelected ? ColorManager.babyBlue : Colors.transparent,
            width: 2.w,
          ),
        ),
        child: Padding(
          padding: REdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(imagePath),
              HeightSpace(8),
              AutoSizeText(text, style: StylesManager.hintLine()),
            ],
          ),
        ),
      ),
    );
  }
}
