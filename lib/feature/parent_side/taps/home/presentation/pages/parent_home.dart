import 'dart:async';

import 'package:basera/core/resources/assets_manager.dart';
import 'package:basera/core/resources/font_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/parent_side/taps/home/presentation/widgets/childrens_cards.dart';
import 'package:basera/feature/parent_side/taps/home/presentation/widgets/custom_ads_widget.dart';
import 'package:basera/feature/parent_side/taps/home/presentation/widgets/selected_child_card.dart';
import 'package:basera/feature/parent_side/taps/home/presentation/widgets/status_child_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_auto_size_text/flutter_auto_size_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ParentHomeTab extends StatefulWidget {
  const ParentHomeTab({super.key});

  @override
  State<ParentHomeTab> createState() => _ParentHomeTabState();
}

class _ParentHomeTabState extends State<ParentHomeTab> {
  int adsCurrentIndex = 0;
  late Timer _timer;

  final List<String> adsImages = [
    ImageAssets.firstAds,
    ImageAssets.secondAds,
    ImageAssets.thirdAds,
  ];

  int currentIndex = 0;
  bool isSelected = false;

  @override
  void initState() {
    super.initState();
    _startImageSwitching();
  }

  void _startImageSwitching() {
    _timer = Timer.periodic(const Duration(milliseconds: 2500), (Timer timer) {
      setState(() {
        adsCurrentIndex = (adsCurrentIndex + 1) % adsImages.length;
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
    return Padding(
      padding: REdgeInsets.only(left: 8, right: 8, top: 32),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Good Morning, Mohamed 👋",
              style: StylesManager.headerSelecteLine(),
            ),
            HeightSpace(8),

            AutoSizeText(
              "Here's what's happening with your childrentoday.",
              style: StylesManager.descriptionLine().copyWith(
                fontSize: FontSize.s18,
              ),
            ),

            HeightSpace(32),
            Text("MY CHILDREN", style: StylesManager.descriptionLine()),
            HeightSpace(32),
            SizedBox(
              height: 170.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => ChildrensCards(
                  imagePath: ImageAssets.childImg,
                  name: "Omar",
                  number: "18",
                  onTap: () {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  isSelected: index == currentIndex,
                ),
                separatorBuilder: (context, index) => WidthSpace(16),
                itemCount: 5,
              ),
            ),
            HeightSpace(24),
            CustomAdsWidget(
              adsImages: adsImages,
              currentIndex: adsCurrentIndex,
              timer: _timer,
            ),
            HeightSpace(24),

            HeightSpace(32),
            SelectedChildCard(),
            HeightSpace(32),
            StatusChildWidget(),
          ],
        ),
      ),
    );
  }
}
