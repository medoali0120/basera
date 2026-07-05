import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/routes_manger/routes.dart';
import 'package:flutter/material.dart';

class CustomSignText extends StatelessWidget {
  const CustomSignText({super.key, required this.isSignIn});

  final bool isSignIn;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: isSignIn ? "Don't have an account?" : "Already have an account?",
        style: StylesManager.hintLine(),
        children: [
          WidgetSpan(
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(
                  context,
                  isSignIn ? Routes.signUpRoute : Routes.signInRoute,
                );
              },
              child: Text(
                isSignIn ? " Sign Up" : " Login",
                style: StylesManager.hintLine().copyWith(
                  color: ColorManager.babyBlue,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
