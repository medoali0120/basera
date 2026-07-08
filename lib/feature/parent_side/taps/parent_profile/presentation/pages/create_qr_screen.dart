import 'package:basera/core/resources/assets_manager.dart';
import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/main_card.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/parent_side/taps/parent_profile/presentation/widgets/qr_widget.dart';
import 'package:basera/feature/parent_side/taps/parent_profile/presentation/widgets/qr_works_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auto_size_text/flutter_auto_size_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateQRScreen extends StatelessWidget {
  const CreateQRScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.primary,
        leading: Icon(Icons.arrow_back_ios, color: ColorManager.babyBlue),
      ),
      backgroundColor: ColorManager.primary,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: REdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Text(
                  "Connect Your Child's \n Device",

                  style: StylesManager.headerSelecteLine().copyWith(
                    color: ColorManager.babyBlue,
                  ),
                  textAlign: TextAlign.center,
                ),
                HeightSpace(8),

                AutoSizeText(
                  "Scan this QR code from your child's device to start monitoring and protection.",
                  style: StylesManager.descriptionLine(),
                  textAlign: TextAlign.center,
                ),
                HeightSpace(32),
                QrWidget(),
                HeightSpace(32),
                MainCard(
                  onTap: () {},
                  imagePath: ImageAssets.lock,
                  text: "Your safety is our priority",
                  description:
                      "Baseera Guardian AI is running in the background to help keep you safe online.",
                  isParentCard: false,
                ),
                HeightSpace(32),
                QrWorksWidgets(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
