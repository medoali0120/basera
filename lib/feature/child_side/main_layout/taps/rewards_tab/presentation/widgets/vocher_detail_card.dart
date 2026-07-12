import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/custom_elevation_card.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/child_side/main_layout/taps/rewards_tab/presentation/widgets/voucher_detail_item.dart';

import 'package:flutter/material.dart';

class VoucherDetailsCard extends StatelessWidget {
  const VoucherDetailsCard({
    super.key,
    required this.partner,
    required this.voucherType,
    required this.delivery,
    required this.expires,
    required this.redeemMethod,
  });

  final String partner;
  final String voucherType;
  final String delivery;
  final String expires;
  final String redeemMethod;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("VOUCHER DETAILS", style: StylesManager.descriptionLine()),

        HeightSpace(16),

        CustomElevationCard(
          widget: Column(
            children: [
              VoucherDetailItem(title: "Partner", value: partner),

              VoucherDetailItem(title: "Voucher Type", value: voucherType),

              VoucherDetailItem(
                title: "Delivery",
                value: delivery,
                valueColor: ColorManager.green,
              ),

              VoucherDetailItem(title: "Expires", value: expires),

              VoucherDetailItem(
                title: "Redeem Method",
                value: redeemMethod,
                showDivider: false,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
