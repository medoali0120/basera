import 'package:basera/core/resources/assets_manager.dart';
import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/feature/parent_side/taps/activities/presentation/pages/parent_activities_screen.dart';
import 'package:basera/feature/parent_side/taps/alerts/presentation/pages/parent_alerts_screen.dart';
import 'package:basera/feature/parent_side/taps/home/presentation/pages/parent_home.dart';
import 'package:basera/feature/parent_side/taps/parent_profile/presentation/pages/parent_profile.dart';
import 'package:basera/feature/parent_side/home_layout/widgets/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class ParentHomeLayout extends StatefulWidget {
  const ParentHomeLayout({super.key});

  @override
  State<ParentHomeLayout> createState() => _ParentHomeLayoutState();
}

class _ParentHomeLayoutState extends State<ParentHomeLayout> {
  int currentIndex = 0;
  List<Widget> tabs = [
    ParentHomeTab(),
    ParentActivitiesTab(),
    ParentAlertsTab(),
    ParentProfileTab(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.darkBlue,
        leading: Image.asset(ImageAssets.parentImg),
        title: Text("MohamedAli", style: StylesManager.headerSelecteLine()),
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
