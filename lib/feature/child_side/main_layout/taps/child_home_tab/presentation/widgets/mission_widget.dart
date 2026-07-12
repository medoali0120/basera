import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/custom_text_button.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/child_side/main_layout/taps/child_home_tab/presentation/widgets/mission_item.dart';
import 'package:flutter/material.dart';

class MissionWidget extends StatelessWidget {
  const MissionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Daily Missions", style: StylesManager.headerSelecteLine()),

        HeightSpace(16),

        MissionItem(
          icon: Icon(Icons.timer_outlined, color: Color(0xff2DA8FF)),
          title: "Stay under screen limit",
          points: 30,
          iconColor: Color(0xff2DA8FF),
          isCompleted: false,
        ),
        HeightSpace(8),
        MissionItem(
          icon: Icon(Icons.school_outlined, color: Color(0xff9D5BFF)),
          title: "Watch one lesson",
          points: 50,
          iconColor: Color(0xff9D5BFF),
          isCompleted: false,
        ),
        HeightSpace(8),
        MissionItem(
          icon: Icon(Icons.security, color: Color(0xff00D4FF)),
          title: "Safe browsing challenge",
          points: 20,
          iconColor: Color(0xff00D4FF),
          isCompleted: true,
        ),

        HeightSpace(8),

        Center(
          child: CustomTaxtButton(text: "View All Missions", onPressed: () {}),
        ),
      ],
    );
  }
}
