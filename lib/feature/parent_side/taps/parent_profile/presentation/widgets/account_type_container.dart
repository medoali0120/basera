import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountTypeContainer extends StatelessWidget {
  const AccountTypeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9999),
        color: ColorManager.lightblue.withValues(alpha: 0.10),
      ),
      child: Padding(
        padding: REdgeInsets.symmetric(horizontal: 12, vertical: 2),
        child: Text(
          "PARENT ACCOUNT",
          style: StylesManager.parentNameLine().copyWith(
            color: ColorManager.lightblue,
          ),
        ),
      ),
    );
  }
}
