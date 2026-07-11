import 'package:basera/core/resources/assets_manager.dart';
import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/parent_side/taps/parent_profile/presentation/widgets/current_plan_card.dart';
import 'package:basera/feature/parent_side/taps/parent_profile/presentation/widgets/plan_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auto_size_text/flutter_auto_size_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChoosePlanScreen extends StatelessWidget {
  const ChoosePlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new, color: ColorManager.white),
        ),
        backgroundColor: ColorManager.darkBlue,
        title: Text(
          "Choose Your Plan",
          style: StylesManager.headerSelecteLine(),
        ),
      ),
      body: Padding(
        padding: REdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(ImageAssets.tagLogo),
              HeightSpace(8),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: StylesManager.headerSelecteLine(),

                  children: [
                    TextSpan(text: "Choose the Right Plan for\n "),
                    TextSpan(
                      text: "Your Family",
                      style: StylesManager.headerSelecteLine().copyWith(
                        color: ColorManager.purpel,
                      ),
                    ),
                  ],
                ),
              ),
              HeightSpace(4),
              AutoSizeText(
                "Unlock premium protection, connect more children and receive advanced AI-powered digital safety.",
                style: StylesManager.hintLine(),
                textAlign: TextAlign.center,
              ),
              HeightSpace(24),
              CurrentPlanCard(),
              HeightSpace(24),
              PlanWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
