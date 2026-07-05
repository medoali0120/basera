import 'package:basera/core/resources/assets_manager.dart';
import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/font_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/custom_elevated_button.dart';
import 'package:basera/core/widgets/main_botton.dart';
import 'package:basera/core/widgets/main_card.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/auth/presentation/widgets/divider_widget.dart';
import 'package:basera/feature/auth/presentation/widgets/sign_in_code_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChildLoginScreen extends StatefulWidget {
  const ChildLoginScreen({super.key});

  @override
  State<ChildLoginScreen> createState() => _ChildLoginScreenState();
}

class _ChildLoginScreenState extends State<ChildLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: REdgeInsets.symmetric(horizontal: 24, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Connect to Parent\n Account",
                  style: StylesManager.headerSignLine().copyWith(
                    color: ColorManager.babyBlue,
                  ),
                  textAlign: TextAlign.center,
                ),
                HeightSpace(16),
                Text(
                  "Scan the QR code provided by your parent to\n securely connect your device.",
                  style: StylesManager.mediumLine().copyWith(
                    fontSize: FontSize.s16,
                  ),
                  textAlign: TextAlign.center,
                ),
                HeightSpace(24),
                Image.asset(ImageAssets.scanImg),
                HeightSpace(24),
                MainCard(
                  text: "Secure Connection",
                  description:
                      "Your device will be connected to your parent's account with end-to-end encryption.",
                  imagePath: ImageAssets.lock,
                  isParentCard: false,
                ),
                HeightSpace(24),
                MainAppButton(
                  borderRadius: 8.r,
                  textStyle: StylesManager.mediumLine().copyWith(
                    color: ColorManager.white,
                  ),
                  onTap: () {},
                  text: 'Scan QR Code',
                ),
                HeightSpace(24),
                DividerWidget(),
                HeightSpace(24),
                CustomElevatedButton(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => SignInCodeWidget(),
                    );
                  },
                  label: 'Enter Pairing Code Manually',
                  isStadiumBorder: false,
                ),
                HeightSpace(50),
                Text(
                  "Ask your parent to open the Baseera Guardian AI app\n and show you the QR code.",
                  style: StylesManager.hintLine(),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
