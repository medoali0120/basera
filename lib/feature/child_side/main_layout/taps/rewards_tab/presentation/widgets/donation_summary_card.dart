import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/custom_elevation_card.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/child_side/main_layout/taps/rewards_tab/presentation/widgets/donation_summary_item.dart';
import 'package:flutter/material.dart';

class DonationSummaryCard extends StatelessWidget {
  const DonationSummaryCard({
    super.key,
    required this.donationAmount,
    required this.currentBalance,
  });

  final int donationAmount;
  final int currentBalance;

  @override
  Widget build(BuildContext context) {
    final remainingBalance = currentBalance - donationAmount;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("DONATION SUMMARY", style: StylesManager.descriptionLine()),

        HeightSpace(16),

        CustomElevationCard(
          widget: Column(
            children: [
              DonationSummaryItem(
                title: "Donation Amount",
                points: donationAmount,
                highlight: true,
              ),

              DonationSummaryItem(
                title: "Current Balance",
                points: currentBalance,
              ),

              DonationSummaryItem(
                title: "Remaining Balance",
                points: remainingBalance,
                showDivider: false,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
