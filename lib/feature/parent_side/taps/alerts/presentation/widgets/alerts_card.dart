import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/parent_side/taps/parent_profile/presentation/widgets/custom_elevation_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AlertsCard extends StatelessWidget {
  const AlertsCard({
    super.key,
    required this.imagePath,
    required this.number,
    required this.textColor,
    required this.title,
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
          Row(
            children: [
              SvgPicture.asset(imagePath),
              WidthSpace(100),
              Text(
                number,
                style: StylesManager.headerSelecteLine().copyWith(
                  color: textColor,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          HeightSpace(20),
          Text(
            title,
            style: StylesManager.noteLine().copyWith(color: ColorManager.grey),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
