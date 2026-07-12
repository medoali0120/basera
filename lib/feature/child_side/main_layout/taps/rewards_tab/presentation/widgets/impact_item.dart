import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';

class ImpactItem extends StatelessWidget {
  const ImpactItem({super.key, required this.title, required this.color});

  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
            boxShadow: [
              BoxShadow(color: color.withValues(alpha: .7), blurRadius: 8),
            ],
          ),
        ),

        WidthSpace(12),

        Expanded(child: Text(title, style: StylesManager.descriptionLine())),
      ],
    );
  }
}
