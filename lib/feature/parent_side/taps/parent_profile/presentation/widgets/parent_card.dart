import 'package:basera/core/resources/assets_manager.dart';
import 'package:basera/core/resources/font_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/parent_side/taps/parent_profile/presentation/widgets/account_type_container.dart';
import 'package:basera/feature/parent_side/taps/parent_profile/presentation/widgets/custom_elevation_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ParentCard extends StatelessWidget {
  const ParentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomElevationCard(
      widget: Row(
        children: [
          Image.asset(ImageAssets.parentImgLarge),
          WidthSpace(24),
          Column(
            children: [
              Text("MohamedAli", style: StylesManager.headerSelecteLine()),
              HeightSpace(4),
              AccountTypeContainer(),
              HeightSpace(4),
              Row(
                children: [
                  SvgPicture.asset(SvgAssets.childrenIcon),
                  WidthSpace(6),
                  Text(
                    "3 Connected Child",
                    style: StylesManager.descriptionLine().copyWith(
                      fontSize: FontSize.s16,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
