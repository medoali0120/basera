import 'package:basera/core/resources/assets_manager.dart';
import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/font_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/main_card.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/child_side/home/presentation/widgets/vpn_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChildHomeScreen extends StatefulWidget {
  const ChildHomeScreen({super.key});

  @override
  State<ChildHomeScreen> createState() => _ChildHomeScreenState();
}

class _ChildHomeScreenState extends State<ChildHomeScreen> {
  final bool isProtected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: REdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Image.asset(
                  isProtected
                      ? ImageAssets.successImg
                      : ImageAssets.disConnectedImg,
                ),
                HeightSpace(24),
                Text(
                  isProtected ? "Device Protected" : "Device Disconnected",
                  style: StylesManager.headerSignLine().copyWith(
                    color: ColorManager.babyBlue,
                  ),
                ),
                HeightSpace(8),
                Text(
                  isProtected
                      ? "This device is securely connected to a parent \naccount."
                      : "Your device has been disconnected from parental protection. Monitoring and security\n features are no longer active.",
                  style: StylesManager.hintLine().copyWith(
                    fontWeight: FontWeightManager.regular,
                  ),
                  textAlign: TextAlign.center,
                ),
                HeightSpace(40),
                VpnWidget(imagePath: ImageAssets.vpnImg, text: "VPN Status"),
                HeightSpace(30),
                MainCard(
                  onTap: () {},
                  imagePath: ImageAssets.parentImg,
                  text: "Ahmed Mohamed",
                  isParentCard: true,
                  description: "Connected to",
                  acountName: "ParentAccount",
                ),
                HeightSpace(30),
                MainCard(
                  onTap: () {},
                  imagePath: ImageAssets.logout,
                  text: "Logout",
                  description: "Sign out from this device.",
                  isParentCard: false,
                ),
                HeightSpace(30),
                MainCard(
                  onTap: () {},
                  imagePath: ImageAssets.lock,
                  text: "Your safety is our priority",
                  description:
                      "Baseera Guardian AI is running in the background to help keep you safe online.",
                  isParentCard: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
