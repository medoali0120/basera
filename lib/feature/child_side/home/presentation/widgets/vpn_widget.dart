import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/child_side/home/presentation/widgets/vpn_switch_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auto_size_text/flutter_auto_size_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VpnWidget extends StatefulWidget {
  const VpnWidget({super.key, required this.imagePath, required this.text});
  final String imagePath;
  final String text;

  @override
  State<VpnWidget> createState() => _VpnWidgetState();
}

class _VpnWidgetState extends State<VpnWidget> {
  bool isConnected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: ColorManager.darkBlue,
      ),
      child: Padding(
        padding: REdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(widget.imagePath),
            WidthSpace(8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.text, style: StylesManager.parentNameLine()),
                  HeightSpace(8),
                  AutoSizeText(
                    isConnected ? "Connected" : "DisConnected",
                    style: StylesManager.hintLine().copyWith(
                      color: isConnected
                          ? ColorManager.green
                          : ColorManager.error,
                    ),
                  ),
                ],
              ),
            ),
            VpnSwitch(
              onChanged: (value) {
                setState(() {
                  isConnected = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
