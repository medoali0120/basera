import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/custom_elevation_card.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/child_side/main_layout/taps/child_home_tab/presentation/widgets/mission_points.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MissionItem extends StatelessWidget {
  const MissionItem({
    super.key,
    required this.icon,
    required this.title,
    required this.points,
    required this.isCompleted,
    required this.iconColor,
  });

  final Widget icon;
  final String title;
  final int points;
  final bool isCompleted;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return CustomElevationCard(
      height: 18,
      width: 18,
      widget: Row(
        children: [
          Container(
            width: 42.w,
            height: 42.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: iconColor.withValues(alpha: .15),
            ),
            child: Center(child: icon),
          ),

          WidthSpace(12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: StylesManager.parentNameLine()),

                HeightSpace(4),

                MissionPoints(points: points),
              ],
            ),
          ),

          AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            width: 24.w,
            height: 24.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isCompleted ? ColorManager.babyBlue : Colors.transparent,
              border: Border.all(
                color: isCompleted ? ColorManager.babyBlue : ColorManager.grey,
              ),
            ),
            child: isCompleted
                ? Icon(Icons.check, color: ColorManager.white, size: 16.sp)
                : null,
          ),
        ],
      ),
    );
  }
}
