import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/font_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';

class ProgressInfoItem extends StatelessWidget {
  const ProgressInfoItem({super.key, required this.title, required this.value});

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title.toUpperCase(),
          style: StylesManager.hintLine().copyWith(fontSize: FontSize.s12),
        ),
        HeightSpace(6),
        Text(
          value,
          style: StylesManager.headerSelecteLine().copyWith(
            color: ColorManager.babyBlue,
          ),
        ),
      ],
    );
  }
}
