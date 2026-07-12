import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/parent_side/taps/parent_profile/presentation/widgets/custom_elevation_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class StatusChildCard extends StatelessWidget {
  const StatusChildCard({
    super.key,
    required this.imagePath,
    required this.number,

    required this.title,
  });
  final String imagePath;
  final String title;
  final String number;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: CustomElevationCard(
        widget: Column(
          children: [
            SvgPicture.asset(imagePath),
            HeightSpace(8),
            Text(title, style: StylesManager.hintLine()),
            HeightSpace(4),
            Text(number, style: StylesManager.noteLine()),
          ],
        ),
      ),
    );
  }
}
