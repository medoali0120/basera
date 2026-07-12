import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/font_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/parent_side/taps/activities/presentation/widgets/child_activity_card.dart';
import 'package:basera/feature/parent_side/taps/activities/presentation/widgets/reports_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ParentActivitiesTab extends StatelessWidget {
  const ParentActivitiesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.only(left: 8, right: 8, top: 32),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Activity", style: StylesManager.headerSelecteLine()),
            HeightSpace(8),
            Text(
              "Manage your family account, protection\n preferences and application settings.",
              style: StylesManager.descriptionLine().copyWith(
                fontSize: FontSize.s18,
              ),
            ),
            HeightSpace(32),
            ChildActivityCard(isActive: true),
            HeightSpace(24),
            ReportsWidget(),
          ],
        ),
      ),
    );
  }
}
