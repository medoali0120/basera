import 'package:basera/core/resources/assets_manager.dart';
import 'package:basera/core/resources/values_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/child_side/main_layout/taps/child_home_tab/presentation/widgets/donation_card.dart';
import 'package:basera/feature/child_side/main_layout/taps/child_home_tab/presentation/widgets/points_card.dart';
import 'package:basera/feature/child_side/main_layout/taps/rewards_tab/presentation/widgets/reward_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RewardsTab extends StatelessWidget {
  const RewardsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: REdgeInsets.symmetric(
          horizontal: AppPadding.p16,
          vertical: AppPadding.p28,
        ),
        child: Column(
          children: [
            PointsCard(
              points: 1280,
              currentPoints: 1280,
              targetPoints: 2000,
              levelName: "Level 5: Smart Surfer",
              progress: 1280 / 2000,
              giftImage: ImageAssets.rewardsImg,
              onRewardsTap: () {},
            ),
            HeightSpace(24),
            RewardListWidget(),
            HeightSpace(24),
            DonationCard(
              currentPoints: 250,
              goalPoints: 500,
              organization: "Education for All",
              onDonate: () {},
            ),
          ],
        ),
      ),
    );
  }
}
