import 'package:basera/core/resources/assets_manager.dart';
import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/routes_manger/routes.dart';
import 'package:basera/core/widgets/main_botton.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/parent_side/taps/parent_profile/presentation/widgets/add_child_container.dart';
import 'package:basera/feature/parent_side/taps/parent_profile/presentation/widgets/upgrade_small_icons_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auto_size_text/flutter_auto_size_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddChildScreen extends StatelessWidget {
  const AddChildScreen({super.key});

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
          "Permium Feauter",
          style: StylesManager.headerSelecteLine(),
        ),
      ),
      body: Padding(
        padding: REdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(ImageAssets.tagLogo),
                WidthSpace(8),
                Expanded(
                  child: Column(
                    children: [
                      RichText(
                        text: TextSpan(
                          style: StylesManager.headerSelecteLine(),
                          children: [
                            TextSpan(text: "Unlock Premium "),
                            TextSpan(
                              text: "to Protect More Children",
                              style: StylesManager.headerSelecteLine().copyWith(
                                color: ColorManager.purpel,
                              ),
                            ),
                          ],
                        ),
                      ),
                      HeightSpace(4),
                      AutoSizeText(
                        "Upgrade your plan to connect more\n children and unlock advanced AI features ",
                        style: StylesManager.hintLine(),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            HeightSpace(24),
            AddChildContainer(),
            HeightSpace(24),

            UpgradeSmallIconsWidget(),
            HeightSpace(24),
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: MainAppButton(
                text: 'View Plans & Upgrade',
                borderRadius: 8.r,
                onTap: () {
                  Navigator.pushNamed(context, Routes.choosePlanScreen);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
