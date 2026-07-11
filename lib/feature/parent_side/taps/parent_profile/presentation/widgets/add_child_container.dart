import 'package:basera/core/resources/assets_manager.dart';
import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/font_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/routes_manger/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddChildContainer extends StatelessWidget {
  const AddChildContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: REdgeInsets.only(top: 16.h),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.r),
            border: Border.all(color: ColorManager.purpel, width: 1.w),
          ),
          child: Padding(
            padding: REdgeInsets.symmetric(vertical: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.addChildScreen);
                  },
                  child: Image.asset(ImageAssets.addLogo),
                ),
                Text(
                  "Add Another Child",
                  style: StylesManager.mediumLine().copyWith(
                    fontSize: FontSize.s16,
                  ),
                ),
                Text(
                  "this is a Premium Feature. Upgrade your\n plan to connect more children",
                  style: StylesManager.hintLine(),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Center(
            child: Image.asset(ImageAssets.premuimFeature, height: 36.h),
          ),
        ),
      ],
    );
  }
}
