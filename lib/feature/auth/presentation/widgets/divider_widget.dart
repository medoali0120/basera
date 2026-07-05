import 'package:basera/core/resources/color_manager.dart';
import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: ColorManager.grey, thickness: 1)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            "or",
            style: TextStyle(color: ColorManager.grey, fontSize: 14),
          ),
        ),
        Expanded(child: Divider(color: ColorManager.grey, thickness: 1)),
      ],
    );
  }
}
