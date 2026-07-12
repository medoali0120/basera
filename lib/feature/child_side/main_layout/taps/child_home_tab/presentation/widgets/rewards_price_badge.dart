import 'package:basera/core/resources/assets_manager.dart';
import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/font_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class RewardPriceBadge extends StatelessWidget {
  const RewardPriceBadge({super.key, required this.points});

  final int points;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: ColorManager.darkBlue.withValues(alpha: .85),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(SvgAssets.pointsIcon),
          WidthSpace(4),
          Text(
            "$points",
            style: StylesManager.parentNameLine().copyWith(
              fontSize: FontSize.s12,
            ),
          ),
        ],
      ),
    );
  }
}
