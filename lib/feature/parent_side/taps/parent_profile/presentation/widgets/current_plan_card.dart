import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CurrentPlanCard extends StatelessWidget {
  const CurrentPlanCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorManager.darkBlue,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [BoxShadow(blurRadius: 25, spreadRadius: 2)],
      ),
      child: Padding(
        padding: REdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Current Plan", style: StylesManager.hintLine()),
            HeightSpace(4),
            Text("free plan", style: StylesManager.noteLine()),
            HeightSpace(4),
            Text("1/1 Child coneccted", style: StylesManager.descriptionLine()),
          ],
        ),
      ),
    );
  }
}
