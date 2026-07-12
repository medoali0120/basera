import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/font_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:flutter/material.dart';

class MissionPoints extends StatelessWidget {
  const MissionPoints({super.key, required this.points});

  final int points;

  @override
  Widget build(BuildContext context) {
    return Text(
      "+$points pts",
      style: StylesManager.parentNameLine().copyWith(
        color: ColorManager.green,
        fontSize: FontSize.s12,
      ),
    );
  }
}
