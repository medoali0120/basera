import 'package:basera/core/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTaxtButton extends StatelessWidget {
  const CustomTaxtButton({
    super.key,
    required this.text,
    required this.onPressed,
  });
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: ColorManager.white,
        textStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 16.sp),
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
