import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import '../resources/values_manager.dart';

class MainAppButton extends StatelessWidget {
  const MainAppButton({
    super.key,
    required this.text,
    this.textStyle,
    this.backgroundColor,
    required this.onTap,
    this.borderRadius,
    this.borderColor,
    this.isGradient = true,
  });

  final String text;
  final TextStyle? textStyle;
  final void Function() onTap;
  final Color? backgroundColor;
  final Color? borderColor;
  final double? borderRadius;
  final bool isGradient;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius ?? AppSize.s24),
        color: backgroundColor,
        gradient: isGradient ? ColorManager.buttonColor : null,
        border: Border.all(
          color: borderColor ?? Colors.transparent,
          width: AppSize.s1,
        ),
      ),
      child: TextButton(
        onPressed: onTap,
        child: Center(
          child: FittedBox(
            child: Text(
              text,
              style: StylesManager.mediumLine(),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ),
    );
  }
}
