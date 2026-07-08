import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/font_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/main_botton.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/parent_side/taps/parent_profile/presentation/widgets/custom_elevation_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auto_size_text/flutter_auto_size_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AlertsSuggestCard extends StatelessWidget {
  const AlertsSuggestCard({
    super.key,
    required this.description,
    required this.imagePath,
    required this.title,
    required this.approveTap,
    required this.date,
  });
  final String imagePath;
  final String title;
  final String description;
  final VoidCallback approveTap;
  final String date;

  @override
  Widget build(BuildContext context) {
    return CustomElevationCard(
      widget: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(imagePath, width: 30),
              WidthSpace(12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AutoSizeText(
                          title,
                          style: StylesManager.hintLine().copyWith(
                            fontSize: FontSize.s18,
                            color: ColorManager.white,
                          ),
                        ),
                        Text(
                          date,
                          style: StylesManager.hintLine().copyWith(
                            fontSize: FontSize.s14,
                          ),
                        ),
                      ],
                    ),
                    AutoSizeText(
                      description,
                      style: StylesManager.hintLine().copyWith(
                        fontSize: FontSize.s16,
                      ),
                      maxLines: 2,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
          HeightSpace(20),
          Row(
            children: [
              Expanded(
                child: MainAppButton(
                  text: "Approve",
                  onTap: approveTap,
                  isGradient: false,
                  backgroundColor: ColorManager.blue,
                  borderRadius: 12.r,
                ),
              ),
              WidthSpace(16),
              Expanded(
                child: MainAppButton(
                  isGradient: false,
                  backgroundColor: ColorManager.denyButtonColor,
                  text: "Deny",

                  borderRadius: 12.r,
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
