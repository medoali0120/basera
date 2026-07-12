import 'package:basera/core/resources/assets_manager.dart';
import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/font_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class QrWidget extends StatelessWidget {
  const QrWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorManager.primary,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: ColorManager.babyBlue),
      ),
      child: Column(
        children: [
          Center(
            child: Padding(
              padding: REdgeInsets.symmetric(vertical: 16),
              child: Image.asset(ImageAssets.qrImg),
            ),
          ),
          Divider(color: ColorManager.grey, height: 2.h),

          Padding(
            padding: REdgeInsets.all(8.0),
            child: Row(
              children: [
                SvgPicture.asset(SvgAssets.solarLinkIcon),
                WidthSpace(8),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Pairing Code",
                      style: StylesManager.descriptionLine(),
                    ),
                    HeightSpace(8),
                    Text(
                      "BSR-2026-X8K4",
                      style: StylesManager.parentNameLine().copyWith(
                        color: ColorManager.grey,
                        fontSize: FontSize.s16,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                SvgPicture.asset(SvgAssets.copyIcon),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
