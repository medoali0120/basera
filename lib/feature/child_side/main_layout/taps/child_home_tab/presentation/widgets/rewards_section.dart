import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/child_side/main_layout/taps/child_home_tab/presentation/widgets/reward_card.dart';
import 'package:flutter/material.dart';

class RewardsSection extends StatelessWidget {
  const RewardsSection({
    super.key,
    required this.cards,
    required this.onViewAll,
  });

  final List<RewardCard> cards;
  final VoidCallback onViewAll;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("Rewards", style: StylesManager.headerSelecteLine()),
            const Spacer(),
            GestureDetector(
              onTap: onViewAll,
              child: Text("view all", style: StylesManager.descriptionLine()),
            ),
          ],
        ),

        HeightSpace(16),

        SizedBox(
          height: 245,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) => cards[index],
            separatorBuilder: (_, __) => WidthSpace(16),
            itemCount: cards.length,
          ),
        ),
      ],
    );
  }
}
