import 'package:basera/core/enums/user_type.dart';
import 'package:basera/core/resources/assets_manager.dart';
import 'package:basera/feature/select_side/presentation/widgets/select_type_card.dart';
import 'package:flutter/material.dart';

class SelectTypeWidget extends StatefulWidget {
  const SelectTypeWidget({super.key, required this.onSelected});
  final ValueChanged<UserType> onSelected;
  @override
  State<SelectTypeWidget> createState() => _SelectTypeWidgetState();
}

class _SelectTypeWidgetState extends State<SelectTypeWidget> {
  UserType? selectedUserType;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SelectTypeCard(
          isSelected: selectedIndex == 0,
          onTap: () {
            setState(() {
              selectedIndex = 0;
              selectedUserType = UserType.parent;
            });
            widget.onSelected(UserType.parent);
          },
          imagePath: ImageAssets.parentSide,
          text:
              "Monitor activity, receive alerts, and manage your child's digital safety.",
        ),
        SelectTypeCard(
          isSelected: selectedIndex == 1,
          onTap: () {
            setState(() {
              selectedIndex = 1;
              selectedUserType = UserType.child;
            });
            widget.onSelected(UserType.child);
          },
          imagePath: ImageAssets.childSide,
          text:
              "Protected device connected to a parent account for safer online experiences.",
        ),
      ],
    );
  }
}
