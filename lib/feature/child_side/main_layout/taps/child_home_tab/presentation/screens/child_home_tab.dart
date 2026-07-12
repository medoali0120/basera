import 'dart:async';

import 'package:basera/core/resources/assets_manager.dart';
import 'package:basera/core/resources/values_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/child_side/main_layout/taps/child_home_tab/presentation/widgets/custom_ads_widget.dart';
import 'package:basera/feature/child_side/main_layout/taps/child_home_tab/presentation/widgets/donation_card.dart';
import 'package:basera/feature/child_side/main_layout/taps/child_home_tab/presentation/widgets/feautre_course_card.dart';
import 'package:basera/feature/child_side/main_layout/taps/child_home_tab/presentation/widgets/mission_widget.dart';
import 'package:basera/feature/child_side/main_layout/taps/child_home_tab/presentation/widgets/points_card.dart';
import 'package:basera/feature/child_side/main_layout/taps/child_home_tab/presentation/widgets/reward_card.dart';
import 'package:basera/feature/child_side/main_layout/taps/child_home_tab/presentation/widgets/rewards_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChildHomeTab extends StatefulWidget {
  const ChildHomeTab({super.key});

  @override
  State<ChildHomeTab> createState() => _ChildHomeTabState();
}

class _ChildHomeTabState extends State<ChildHomeTab> {
  int _currentIndex = 0;
  late Timer _timer;

  final List<String> adsImages = [
    ImageAssets.kidsAds2,
    ImageAssets.kidsAds3,
    ImageAssets.thirdAds,
  ];

  @override
  void initState() {
    super.initState();
    _startImageSwitching();
  }

  void _startImageSwitching() {
    _timer = Timer.periodic(const Duration(milliseconds: 2500), (Timer timer) {
      setState(() {
        _currentIndex = (_currentIndex + 1) % adsImages.length;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

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
            CustomAdsWidget(
              adsImages: adsImages,
              currentIndex: _currentIndex,
              timer: _timer,
            ),
            HeightSpace(24),
            RewardsSection(
              onViewAll: () {},

              cards: [
                RewardCard(
                  image: ImageAssets.robloxImg,
                  title: "Roblox Gift Card",
                  points: 500,
                  onRedeem: () {},
                ),

                RewardCard(
                  image: ImageAssets.kidZaniaImg,
                  title: "KidZania Ticket",
                  points: 800,
                  onRedeem: () {},
                ),
              ],
            ),
            HeightSpace(24),
            FeaturedCourseCard(
              image: ImageAssets.cyberSafetyImg,
              title: "Cyber Safety for Kids",
              level: "BEGINNER",
              duration: "30 MINS",
              points: 80,
              progress: .45,
              progressText: "45% Completed",
              onContinue: () {},
            ),
            HeightSpace(24),
            MissionWidget(),
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
