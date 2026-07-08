import 'package:basera/core/resources/assets_manager.dart';
import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VpnCaseCard extends StatelessWidget {
  const VpnCaseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: ColorManager.black.withValues(alpha: 0.60),
        border: Border.all(
          color: ColorManager.white.withValues(alpha: 0.08),
          width: 2.w,
        ),
        boxShadow: [
          BoxShadow(
            color: ColorManager.customParentCardColor,
            blurRadius: 10,
            spreadRadius: 0,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Padding(
        padding: REdgeInsets.all(12),
        child: Row(
          children: [
            SvgPicture.asset(SvgAssets.vpn),
            WidthSpace(12),
            Text("VPN:", style: StylesManager.mediumLine()),
            WidthSpace(4),
            Text(
              "Connected",
              style: StylesManager.mediumLine().copyWith(
                color: ColorManager.lightblue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
