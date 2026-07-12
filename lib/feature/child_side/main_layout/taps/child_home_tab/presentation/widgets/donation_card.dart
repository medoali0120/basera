import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/font_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/custom_elevation_card.dart';
import 'package:basera/core/widgets/main_botton.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/child_side/main_layout/taps/child_home_tab/presentation/widgets/donation_progress_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DonationCard extends StatelessWidget {
  const DonationCard({
    super.key,
    required this.currentPoints,
    required this.goalPoints,
    required this.organization,
    required this.onDonate,
  });

  final int currentPoints;
  final int goalPoints;
  final String organization;
  final VoidCallback onDonate;

  @override
  Widget build(BuildContext context) {
    final progress = currentPoints / goalPoints;

    return CustomElevationCard(
      widget: Column(
        children: [
          Row(
            children: [
              Container(
                width: 42.w,
                height: 42.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorManager.darkPink.withValues(alpha: .15),
                ),
                child: Icon(Icons.favorite, color: ColorManager.darkPink),
              ),

              WidthSpace(12),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: StylesManager.parentNameLine(),
                        children: [
                          const TextSpan(text: "You donated "),
                          TextSpan(
                            text: "$currentPoints points",
                            style: StylesManager.parentNameLine().copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    HeightSpace(2),

                    Text(
                      "Supporting: $organization",
                      style: StylesManager.hintLine().copyWith(
                        fontSize: FontSize.s12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          HeightSpace(18),

          DonationProgressWidget(value: progress),

          HeightSpace(16),

          Row(
            children: [
              Text(
                "Goal: $goalPoints Points",
                style: StylesManager.hintLine().copyWith(
                  fontSize: FontSize.s12,
                ),
              ),

              const Spacer(),

              SizedBox(
                height: 35.h,
                width: 120.w,
                child: MainAppButton(
                  text: "Donate More",
                  isGradient: false,
                  backgroundColor: ColorManager.darkPink,
                  borderRadius: 20.r,
                  onTap: onDonate,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
