import 'package:basera/core/resources/assets_manager.dart';
import 'package:basera/core/resources/font_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class QrWorksWidgets extends StatelessWidget {
  const QrWorksWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "How It Works?",
          style: StylesManager.parentNameLine().copyWith(
            fontSize: FontSize.s16,
          ),
        ),
        HeightSpace(16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SvgPicture.asset(SvgAssets.one),
                HeightSpace(8),
                Text(
                  "Open Baseera on\n your  child's device",
                  style: StylesManager.hintLine(),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(SvgAssets.two),
                HeightSpace(8),
                Text(
                  "'Scan QR'\ncode",
                  style: StylesManager.hintLine(),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(SvgAssets.three),
                HeightSpace(8),
                Text(
                  "Start protection\n instantly",
                  style: StylesManager.hintLine(),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
