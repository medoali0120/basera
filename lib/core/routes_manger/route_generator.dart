import 'package:basera/core/routes_manger/routes.dart';
import 'package:basera/feature/auth/presentation/pages/child_login_screen.dart';
import 'package:basera/feature/auth/presentation/pages/parent_login_screen.dart';
import 'package:basera/feature/auth/presentation/pages/register_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.signUpRoute:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case Routes.signInRoute:
        return MaterialPageRoute(builder: (_) => const ParentLoginScreen());
      case Routes.signInChild:
        return MaterialPageRoute(builder: (_) => const ChildLoginScreen());
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
