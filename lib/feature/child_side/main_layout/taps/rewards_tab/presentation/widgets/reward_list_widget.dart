import 'package:basera/core/resources/assets_manager.dart';
import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/routes_manger/routes.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/child_side/main_layout/taps/rewards_tab/presentation/widgets/reward_list_card.dart';
import 'package:flutter/material.dart';

class RewardListWidget extends StatelessWidget {
  const RewardListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RewardListCard(
          cardOnTap: () {
            Navigator.pushNamed(context, Routes.rewardDetailsScreen);
          },
          imagePath: ImageAssets.robloxImg,
          title: "Roblox Gift Card",
          description: "Redeem Robux and unlock exclusive items.",
          points: 500,
          buttonText: "Redeem",
          onTap: () {
            Navigator.pushNamed(context, Routes.confirmRedemptionScreen);
          },
        ),
        HeightSpace(16),
        RewardListCard(
          cardOnTap: () {
            Navigator.pushNamed(context, Routes.rewardDetailsScreen);
          },
          imagePath: ImageAssets.kidZaniaImg,
          title: "KidZania Ticket",
          description: "Visit any KidZania branch and enjoy a full day.",
          points: 1200,
          buttonText: "Redeem",
          onTap: () {
            Navigator.pushNamed(context, Routes.confirmRedemptionScreen);
          },
        ),
        HeightSpace(16),
        RewardListCard(
          cardOnTap: () {},
          imagePath: ImageAssets.kidImg,
          title: "Children's Hospital",
          description: "Support medical care for children.",
          points: 300,
          buttonText: "Donate",
          buttonColor: ColorManager.darkPink,
          isGradient: false,
          onTap: () {
            Navigator.pushNamed(context, Routes.confirmDonationScreen);
          },
        ),
        HeightSpace(16),
        RewardListCard(
          cardOnTap: () {
            Navigator.pushNamed(context, Routes.rewardDetailsScreen);
          },
          imagePath: ImageAssets.kidMealImg,
          title: "Kids Meal Coupon",
          description: "Get a free Kids Meal coupon at McDonald's.",
          points: 800,
          buttonText: "Redeem",
          onTap: () {
            Navigator.pushNamed(context, Routes.confirmRedemptionScreen);
          },
        ),
        HeightSpace(16),
        RewardListCard(
          cardOnTap: () {
            Navigator.pushNamed(context, Routes.rewardDetailsScreen);
          },
          imagePath: ImageAssets.toyStoreImg,
          title: "Toy Store Voucher",
          description: "Redeem toys from partner stores.",
          points: 900,
          buttonText: "Redeem",
          onTap: () {
            Navigator.pushNamed(context, Routes.confirmRedemptionScreen);
          },
        ),
        HeightSpace(16),
        RewardListCard(
          cardOnTap: () {
            Navigator.pushNamed(context, Routes.rewardDetailsScreen);
          },
          imagePath: ImageAssets.cinemaImg,
          title: "Cinema Ticket",
          description: "Enjoy your favorite animated movie.",
          points: 1500,
          buttonText: "Redeem",
          onTap: () {
            Navigator.pushNamed(context, Routes.confirmRedemptionScreen);
          },
        ),
        HeightSpace(16),
        RewardListCard(
          cardOnTap: () {},
          imagePath: ImageAssets.foodBankImg,
          title: "Food Bank",
          description: "Healthy meals for children in need.",
          points: 250,
          buttonText: "Donate",
          buttonColor: ColorManager.darkPink,
          isGradient: false,
          onTap: () {
            Navigator.pushNamed(context, Routes.confirmDonationScreen);
          },
        ),
      ],
    );
  }
}
