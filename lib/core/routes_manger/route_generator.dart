import 'package:basera/core/routes_manger/routes.dart';
import 'package:basera/feature/child_side/main_layout/presentation/screens/child_main_layout.dart';
import 'package:basera/feature/child_side/main_layout/taps/child_home_tab/presentation/screens/child_home_tab.dart';
import 'package:basera/feature/child_side/main_layout/taps/learn_tab/presentation/screens/learn_tab.dart';
import 'package:basera/feature/child_side/main_layout/taps/missions_tab/presentation/screens/mission_tab.dart';
import 'package:basera/feature/child_side/main_layout/taps/profile_tab/presentation/screens/child_profile_tab.dart';
import 'package:basera/feature/child_side/main_layout/taps/rewards_tab/presentation/screens/rewards_tab.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.childHomeScreen:
        return MaterialPageRoute(builder: (_) => const ChildHomeLayout());
      case Routes.childHomeTab:
        return MaterialPageRoute(builder: (_) => const ChildHomeTab());
      case Routes.childHomeLayout:
        return MaterialPageRoute(builder: (_) => const ChildHomeLayout());
      case Routes.childProfileTab:
        return MaterialPageRoute(builder: (_) => const ChildProfileTab());
      case Routes.missionTab:
        return MaterialPageRoute(builder: (_) => const MissionTab());
      case Routes.learnTab:
        return MaterialPageRoute(builder: (_) => const LearnTab());
      case Routes.rewardsTab:
        return MaterialPageRoute(builder: (_) => const RewardsTab());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text('No Route Found')),
        body: const Center(child: Text('No Route Found')),
      ),
    );
  }
}
