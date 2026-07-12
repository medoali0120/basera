import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/parent_side/taps/parent_profile/presentation/widgets/custom_elevation_card.dart';
import 'package:flutter/material.dart';

class ReportsCard extends StatelessWidget {
  const ReportsCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.textColor,
    required this.number,
  });
  final String imagePath;
  final String title;
  final String number;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return CustomElevationCard(
      widget: Column(
        children: [
          Text(
            title,
            style: StylesManager.noteLine().copyWith(color: ColorManager.grey),
            textAlign: TextAlign.center,
          ),
          HeightSpace(10),

          Text(
            number,
            style: StylesManager.headerSelecteLine().copyWith(color: textColor),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
