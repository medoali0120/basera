import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddChildWidget extends StatelessWidget {
  const AddChildWidget({super.key, required this.onTap});
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.r),
          color: ColorManager.black.withValues(alpha: 0.20),
          border: Border.all(
            color: ColorManager.white.withValues(alpha: 0.08),
            width: 2.w,
          ),
        ),
        child: Padding(
          padding: REdgeInsets.symmetric(vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.add_circle_outline, color: ColorManager.grey),
              WidthSpace(12),
              Text(
                "Add New Child",
                style: StylesManager.mediumLine().copyWith(
                  color: ColorManager.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
