import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/main_botton.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/parent_side/taps/parent_profile/presentation/widgets/plan_card_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlanCard extends StatelessWidget {
  const PlanCard({
    super.key,
    required this.title,
    required this.price,
    required this.features,
    required this.buttonText,
    required this.iconPath,
    required this.buttonColor,
    required this.badgeText,
    required this.badgeColor,
    this.isGradientButton = true,
    required this.onTap,
    this.badgeTextColor,
  });

  final String title;
  final String price;
  final List<String> features;
  final String iconPath;
  final String buttonText;
  final Color buttonColor;
  final String badgeText;
  final Color badgeColor;
  final bool isGradientButton;
  final VoidCallback onTap;
  final Color? badgeTextColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: ColorManager.darkBlue,
            borderRadius: BorderRadius.circular(20.r),
            border: Border.all(color: badgeColor.withValues(alpha: .5)),
            boxShadow: [
              BoxShadow(
                color: badgeColor.withValues(alpha: .15),
                blurRadius: 25,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Padding(
            padding: REdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: StylesManager.noteLine()),

                HeightSpace(8),

                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "\$$price",
                        style: StylesManager.headerSelecteLine(),
                      ),
                      TextSpan(text: "/mo", style: StylesManager.hintLine()),
                    ],
                  ),
                ),

                HeightSpace(24),

                ...features.map(
                  (e) => Padding(
                    padding: EdgeInsets.only(bottom: 14.h),
                    child: Row(
                      children: [
                        SvgPicture.asset(iconPath, width: 18.w),
                        WidthSpace(12),
                        Expanded(
                          child: Text(
                            e,
                            style: StylesManager.descriptionLine(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                HeightSpace(16),

                SizedBox(
                  width: double.infinity,
                  child: MainAppButton(
                    text: buttonText,
                    backgroundColor: buttonColor,
                    borderRadius: 8.r,
                    onTap: onTap,
                    isGradent: isGradientButton,
                  ),
                ),
              ],
            ),
          ),
        ),

        if (badgeText.isNotEmpty)
          Positioned(
            top: -12.h,
            right: 18.w,
            child: PlanCardContainer(
              badgeColor: badgeColor,
              badgeText: badgeText,
              badgeTextColor: badgeTextColor,
            ),
          ),
      ],
    );
  }
}
