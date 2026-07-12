import 'package:basera/core/resources/assets_manager.dart';
import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/font_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CourseInfo extends StatelessWidget {
  const CourseInfo({
    super.key,
    required this.title,
    required this.author,
    required this.points,
    required this.duration,
  });

  final String title;
  final String author;
  final int points;
  final int duration;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: StylesManager.mediumLine().copyWith(fontSize: FontSize.s18),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),

        HeightSpace(4),

        Text("By $author", style: StylesManager.descriptionLine()),

        HeightSpace(10),

        Row(
          children: [
            Text(
              "+$points",
              style: StylesManager.parentNameLine().copyWith(
                color: ColorManager.babyBlue,
              ),
            ),

            WidthSpace(4),

            SvgPicture.asset(SvgAssets.pointsIcon, width: 14.w),

            WidthSpace(12),

            Icon(
              Icons.access_time_rounded,
              size: 15.sp,
              color: ColorManager.grey,
            ),

            WidthSpace(4),

            Text("${duration}m", style: StylesManager.litlleHintLine()),
          ],
        ),
      ],
    );
  }
}
