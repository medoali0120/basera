import 'package:basera/core/resources/assets_manager.dart';
import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/protection_active_card.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auto_size_text/flutter_auto_size_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
    required this.imagePath,
    required this.text,
    this.description,
    required this.isParentCard,
    this.acountName,
    required this.onTap,
  });
  final String imagePath;
  final String text;
  final String? description;
  final bool isParentCard;
  final String? acountName;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: ColorManager.darkBlue,
        ),
        child: Padding(
          padding: REdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset(imagePath),
              WidthSpace(8),
              isParentCard
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          description ?? '',
                          style: StylesManager.hintLine(),
                        ),

                        Text(text, style: StylesManager.parentNameLine()),
                        Row(
                          children: [
                            SizedBox(
                              width: 14.w,
                              height: 14.h,
                              child: Center(
                                child: SvgPicture.asset(
                                  SvgAssets.person,
                                  width: 20.w,
                                  height: 20.h,
                                ),
                              ),
                            ),
                            WidthSpace(2),
                            Text(
                              acountName ?? '',
                              style: StylesManager.hintLine().copyWith(
                                color: ColorManager.babyBlue,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  : Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(text, style: StylesManager.parentNameLine()),
                          HeightSpace(8),
                          AutoSizeText(
                            description ?? '',
                            style: StylesManager.hintLine(),
                          ),
                        ],
                      ),
                    ),
              WidthSpace(18),
              isParentCard
                  ? ProtectionStatusWidget(isActive: false)
                  : SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}
