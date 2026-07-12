import 'package:basera/core/resources/assets_manager.dart';
import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/feature/child_side/main_layout/presentation/widgets/custom_nav_bar.dart';
import 'package:basera/feature/child_side/main_layout/taps/child_home_tab/presentation/screens/child_home_tab.dart';
import 'package:basera/feature/child_side/main_layout/taps/learn_tab/presentation/screens/learn_tab.dart';
import 'package:basera/feature/child_side/main_layout/taps/missions_tab/presentation/screens/mission_tab.dart';
import 'package:basera/feature/child_side/main_layout/taps/profile_tab/presentation/screens/child_profile_tab.dart';
import 'package:basera/feature/child_side/main_layout/taps/rewards_tab/presentation/screens/rewards_tab.dart';
import 'package:flutter/material.dart';

class ChildHomeLayout extends StatefulWidget {
  const ChildHomeLayout({super.key});

  @override
  State<ChildHomeLayout> createState() => _ChildHomeLayoutState();
}

class _ChildHomeLayoutState extends State<ChildHomeLayout> {
  int currentIndex = 0;
  List<Widget> tabs = [
    ChildHomeTab(),
    RewardsTab(),
    LearnTab(),
    MissionTab(),
    ChildProfileTab(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.darkBlue,
        leading: Image.asset(ImageAssets.childImg),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi, Omar! 👋", style: StylesManager.headerSelecteLine()),
            Text(
              "Stay smart, stay safe, earn more points!",
              style: StylesManager.hintLine(),
            ),
          ],
        ),
      ),
      backgroundColor: ColorManager.primary,
      body: tabs[currentIndex],
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
