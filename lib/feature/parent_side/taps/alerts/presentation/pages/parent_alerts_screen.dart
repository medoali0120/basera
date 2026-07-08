import 'package:basera/core/resources/font_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/parent_side/taps/alerts/presentation/widgets/alerts_suggest_widget.dart';
import 'package:basera/feature/parent_side/taps/alerts/presentation/widgets/alerts_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ParentAlertsTab extends StatelessWidget {
  const ParentAlertsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.only(left: 8, right: 8, top: 32),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Alerts", style: StylesManager.headerSelecteLine()),
            HeightSpace(8),
            Text(
              "Monitor security alerts, AI detections and \nchild requests in real time.",
              style: StylesManager.descriptionLine().copyWith(
                fontSize: FontSize.s18,
              ),
            ),
            HeightSpace(32),
            AlertsWidget(),
            HeightSpace(32),
            AlertsSuggestWidget(),
            HeightSpace(16),
          ],
        ),
      ),
    );
  }
}
