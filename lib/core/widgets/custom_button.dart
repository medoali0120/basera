import 'package:basera/core/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

enum ButtonType { filled, outlined }

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  // States
  final bool isLoading;
  final ButtonType type;

  // Size
  final double? width;
  final double? height;

  // Colors
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;
  final Color shadowColor;

  //textStyle
  final TextStyle? textStyle;

  // Shape
  final double borderRadius;
  final double borderWidth;
  final double elevation;

  // Icon
  final String? svgIconPath;
  final double iconSize;
  final Color? iconColor;
  final double iconSpacing;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,

    // State
    this.isLoading = false,
    this.type = ButtonType.filled,

    // Size
    this.width,
    this.height,

    // Colors
    this.backgroundColor = AppColors.primary,
    this.textColor = Colors.white,
    this.borderColor = AppColors.primary,
    this.shadowColor = AppColors.primary,

    // Shape
    this.borderRadius = 8,
    this.borderWidth = 2,
    this.elevation = 4,

    // Icon
    this.svgIconPath,
    this.iconSize = 24,
    this.iconColor,
    this.iconSpacing = 8,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    final disabled = isLoading || onPressed == null;

    return type == ButtonType.outlined
        ? OutlinedButton(
            onPressed: disabled ? null : onPressed,
            style: OutlinedButton.styleFrom(
              minimumSize: Size(width ?? 237.w, height ?? 52.h),
              padding: EdgeInsets.zero,
              side: BorderSide(color: borderColor, width: borderWidth),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius),
              ),
            ),

            child: _buildContent(),
          )
        : ElevatedButton(
            onPressed: disabled ? null : onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor,
              elevation: elevation,
              shadowColor: shadowColor.withValues(alpha: 0.4),

              minimumSize: Size(width ?? 237.w, height ?? 52.h),
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius),
              ),
            ),
            child: _buildContent(),
          );
  }

  Widget _buildContent() {
    if (isLoading) {
      return SizedBox(
        width: 24,
        height: 24,
        child: CircularProgressIndicator(strokeWidth: 2.5, color: textColor),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (svgIconPath != null)
          SvgPicture.asset(
            svgIconPath!,
            width: iconSize.sp,
            height: iconSize.sp,
          ),
        if (svgIconPath != null) SizedBox(width: iconSpacing),
        Text(
          text,
          style:
              textStyle ??
              GoogleFonts.cairo(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                height: 1.h,
              ),
        ),
      ],
    );
  }
}
