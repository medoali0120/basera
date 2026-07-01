import 'package:flutter/material.dart';

class PasswordVisibilityIcon extends StatelessWidget {
  final bool isPasswordHidden;
  final VoidCallback toggleVisibility;
  final Color iconColor;

  const PasswordVisibilityIcon({
    super.key,
    required this.isPasswordHidden,
    required this.toggleVisibility,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isPasswordHidden ? Icons.visibility_off : Icons.visibility,
        color: iconColor,
      ),
      onPressed: toggleVisibility,
    );
  }
}
