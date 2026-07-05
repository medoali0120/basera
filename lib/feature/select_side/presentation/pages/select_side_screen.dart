import 'package:basera/core/enums/user_type.dart';
import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/font_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/resources/values_manager.dart';
import 'package:basera/core/routes_manger/routes.dart';
import 'package:basera/core/widgets/main_botton.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/select_side/presentation/widgets/select_type_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectSideScreen extends StatefulWidget {
  const SelectSideScreen({super.key});

  @override
  State<SelectSideScreen> createState() => _SelectSideScreenState();
}

class _SelectSideScreenState extends State<SelectSideScreen> {
  UserType? selectedUserType;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: SafeArea(
        child: Padding(
          padding: REdgeInsets.symmetric(
            horizontal: AppPadding.p16,
            vertical: AppPadding.p28,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Who Will Use", style: StylesManager.headerSelecteLine()),
              Text(
                "Baseera Guardian AI?",
                style: StylesManager.headerSelecteLine().copyWith(
                  color: ColorManager.babyBlue,
                ),
              ),
              HeightSpace(8),
              Text(
                "Choose the role that best describes you\n to personalize your experience.",
                style: StylesManager.mediumLine().copyWith(
                  fontSize: FontSize.s16,
                ),
              ),
              HeightSpace(40),
              SelectTypeWidget(
                onSelected: (userType) {
                  selectedUserType = userType;
                },
              ),
              HeightSpace(80),
              MainAppButton(
                text: "Continue",
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    Routes.signUpRoute,
                    arguments: selectedUserType,
                  );
                },
                borderRadius: 8,
                textStyle: StylesManager.mediumLine(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
