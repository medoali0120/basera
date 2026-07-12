import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/widgets/custom_elevation_card.dart';
import 'package:basera/feature/child_side/main_layout/taps/rewards_tab/presentation/widgets/balance_info_item.dart';
import 'package:flutter/material.dart';

class BalanceInfoCard extends StatelessWidget {
  const BalanceInfoCard({
    super.key,
    required this.requiredPoints,
    required this.balance,
  });

  final int requiredPoints;
  final int balance;

  @override
  Widget build(BuildContext context) {
    final remaining = balance - requiredPoints;

    return CustomElevationCard(
      widget: Column(
        children: [
          BalanceInfoItem(
            title: "Required Points",
            value: requiredPoints.toString(),
            iconColor: ColorManager.starRateColor,
          ),

          BalanceInfoItem(
            title: "Your Balance",
            value: balance.toString(),
            iconColor: ColorManager.starRateColor,
          ),

          BalanceInfoItem(
            title: "Remaining Balance",
            value: remaining.toString(),
            iconColor: ColorManager.lightblue,
            showDivider: false,
          ),
        ],
      ),
    );
  }
}
