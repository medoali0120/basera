import 'package:basera/core/resources/assets_manager.dart';
import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/font_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/parent_side/taps/parent_profile/presentation/widgets/custom_elevation_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OptionsCard extends StatelessWidget {
  const OptionsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomElevationCard(
      widget: Column(
        children: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: REdgeInsets.symmetric(vertical: 16),
              child: Row(
                children: [
                  SvgPicture.asset(SvgAssets.lock, width: 25.w, height: 25.h),
                  WidthSpace(12),
                  Text(
                    "Change Password",
                    style: StylesManager.descriptionLine().copyWith(
                      fontSize: FontSize.s18,
                      color: ColorManager.optionsColor,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: ColorManager.optionsColor,
                  ),
                ],
              ),
            ),
          ),
          Divider(color: ColorManager.white.withValues(alpha: 0.08)),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: REdgeInsets.symmetric(vertical: 16),
              child: Row(
                children: [
                  SvgPicture.asset(
                    SvgAssets.disconnectedIcon,
                    width: 25.w,
                    height: 25.h,
                  ),
                  WidthSpace(12),
                  Text(
                    "Disconnect All Devices",
                    style: StylesManager.descriptionLine().copyWith(
                      fontSize: FontSize.s18,
                      color: ColorManager.optionsColor,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: ColorManager.pink,
                  ),
                ],
              ),
            ),
          ),
          Divider(color: ColorManager.white.withValues(alpha: 0.08)),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: REdgeInsets.symmetric(vertical: 16),
              child: Row(
                children: [
                  SvgPicture.asset(SvgAssets.logout, width: 25.w, height: 25.h),
                  WidthSpace(12),
                  Text(
                    "Logout",
                    style: StylesManager.descriptionLine().copyWith(
                      fontSize: FontSize.s18,
                      color: ColorManager.optionsColor,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: ColorManager.pink,
                  ),
                ],
              ),
            ),
          ),
          Divider(color: ColorManager.white.withValues(alpha: 0.08)),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: REdgeInsets.symmetric(vertical: 16),
              child: Row(
                children: [
                  SvgPicture.asset(
                    SvgAssets.trashIcon,
                    width: 25.w,
                    height: 25.h,
                  ),
                  WidthSpace(12),
                  Text(
                    "Delete Account",
                    style: StylesManager.descriptionLine().copyWith(
                      fontSize: FontSize.s18,
                      color: ColorManager.optionsColor,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: ColorManager.pink,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
