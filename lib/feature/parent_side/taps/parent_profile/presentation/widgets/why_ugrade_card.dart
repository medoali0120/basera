import 'package:basera/core/resources/font_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auto_size_text/flutter_auto_size_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WhyUgradeCard extends StatelessWidget {
  const WhyUgradeCard({
    super.key,
    required this.imagePath,
    required this.title,
    this.description,
  });
  final String imagePath;
  final String title;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 175.h,
      child: Column(
        children: [
          Image.asset(imagePath),
          HeightSpace(4),
          Text(
            title,
            style: StylesManager.parentNameLine().copyWith(
              fontSize: FontSize.s12,
            ),
            textAlign: TextAlign.center,
          ),
          HeightSpace(4),
          AutoSizeText(
            description ?? '',
            style: StylesManager.hintLine().copyWith(fontSize: FontSize.s12),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
