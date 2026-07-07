import 'package:basera/core/routes_manger/routes.dart';
import 'package:basera/feature/parent_side/home_layout/screens/parent_home_layout.dart';
import 'package:basera/feature/parent_side/taps/activities/presentation/pages/parent_activities_screen.dart';
import 'package:basera/feature/parent_side/taps/alerts/presentation/pages/parent_alerts_screen.dart';
import 'package:basera/feature/parent_side/taps/home/presentation/pages/parent_home.dart';
import 'package:basera/feature/parent_side/taps/parent_profile/presentation/pages/parent_profile.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.parentHome:
        return MaterialPageRoute(builder: (_) => const ParentHomeTap());
      case Routes.parentProfile:
        return MaterialPageRoute(builder: (_) => const ParentProfileTap());
      case Routes.parentActivity:
        return MaterialPageRoute(builder: (_) => const ParentActivitiesTap());
      case Routes.parentAlerts:
        return MaterialPageRoute(builder: (_) => const ParentAlertsTap());
      case Routes.parentMainLayout:
        return MaterialPageRoute(builder: (_) => const ParentHomeLayout());

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
