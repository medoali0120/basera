import 'package:basera/core/resources/color_manager.dart';
import 'package:flutter/material.dart';

class VpnSwitch extends StatefulWidget {
  const VpnSwitch({super.key, required this.onChanged});
  final ValueChanged<bool> onChanged;
  @override
  State<VpnSwitch> createState() => _VpnSwitchState();
}

class _VpnSwitchState extends State<VpnSwitch> {
  bool isConnected = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: isConnected,
      onChanged: (value) {
        setState(() {
          isConnected = value;
        });
        widget.onChanged(value);
      },

      activeColor: ColorManager.white,
      inactiveThumbColor: ColorManager.white,

      activeTrackColor: ColorManager.green,
      inactiveTrackColor: ColorManager.grey,

      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    );
  }
}
