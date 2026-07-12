import 'package:basera/core/resources/assets_manager.dart';
import 'package:basera/core/resources/font_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/custom_elevation_card.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';

class MotivationCard extends StatelessWidget {
  const MotivationCard({super.key, required this.message, this.icon = "✨"});

  final String message;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return CustomElevationCard(
      widget: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(ImageAssets.starsIcon),

          WidthSpace(16),

          Expanded(
            child: Text(
              '"$message"',
              style: StylesManager.mediumLine().copyWith(
                fontSize: FontSize.s18,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
