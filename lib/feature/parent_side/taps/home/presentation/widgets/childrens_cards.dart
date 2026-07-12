import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/font_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/parent_side/taps/parent_profile/presentation/widgets/custom_elevation_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChildrensCards extends StatelessWidget {
  ChildrensCards({
    super.key,
    required this.imagePath,
    required this.name,
    required this.number,
    required this.onTap,
    required this.isSelected,
  });
  final String imagePath;
  final String name;
  final String number;
  final VoidCallback onTap;
  bool isSelected;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CustomElevationCard(
        width: 38.w,
        borderColor: isSelected ? ColorManager.green : null,
        widget: Column(
          children: [
            Image.asset(imagePath),
            HeightSpace(12),
            Text(name, style: StylesManager.noteLine()),
            HeightSpace(4),
            Text(
              '$number%Risk',
              style: StylesManager.noteLine().copyWith(fontSize: FontSize.s12),
            ),
          ],
        ),
      ),
    );
  }
}
