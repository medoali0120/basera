import 'package:basera/core/resources/font_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/routes_manger/routes.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/parent_side/taps/parent_profile/presentation/widgets/add_child_widget.dart';
import 'package:basera/feature/parent_side/taps/parent_profile/presentation/widgets/child_details_card.dart';
import 'package:basera/feature/parent_side/taps/parent_profile/presentation/widgets/options_card.dart';
import 'package:basera/feature/parent_side/taps/parent_profile/presentation/widgets/parent_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ParentProfileTab extends StatelessWidget {
  const ParentProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.only(left: 8, right: 8, top: 32),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Settings", style: StylesManager.headerSelecteLine()),
            HeightSpace(8),
            Text(
              "Manage your family account, protection\n preferences and application settings.",
              style: StylesManager.descriptionLine().copyWith(
                fontSize: FontSize.s18,
              ),
            ),
            HeightSpace(32),
            ParentCard(),
            HeightSpace(24),
            Text(
              "CONNECTED CHILDREN",
              style: StylesManager.descriptionLine().copyWith(
                fontSize: FontSize.s18,
              ),
            ),
            HeightSpace(24),
            ChildDetailsCard(isActive: true),
            HeightSpace(24),
            AddChildWidget(
              onTap: () {
                Navigator.pushNamed(context, Routes.upgradeAddChildScreen);
              },
            ),
            HeightSpace(24),
            Text(
              "PRIVACY & SECURITY",
              style: StylesManager.descriptionLine().copyWith(
                fontSize: FontSize.s16,
              ),
            ),
            HeightSpace(16),
            OptionsCard(),
            HeightSpace(16),
          ],
        ),
      ),
    );
  }
}
