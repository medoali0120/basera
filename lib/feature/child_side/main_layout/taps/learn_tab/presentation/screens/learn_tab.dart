import 'package:basera/core/resources/assets_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/resources/values_manager.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/child_side/main_layout/taps/child_home_tab/presentation/widgets/feautre_course_card.dart';
import 'package:basera/feature/child_side/main_layout/taps/learn_tab/presentation/widgets/course_type_card.dart';
import 'package:basera/feature/child_side/main_layout/taps/learn_tab/presentation/widgets/daily_challenges_card.dart';
import 'package:basera/feature/child_side/main_layout/taps/learn_tab/presentation/widgets/learn_progress_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LearnTab extends StatelessWidget {
  const LearnTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: REdgeInsets.all(AppPadding.p16),
        child: Column(
          children: [
            Text(
              "Learn new skills, stay safe online, and earn points.",
              style: StylesManager.hintLine(),
            ),
            HeightSpace(24),
            LearningProgressCard(
              courses: 12,
              points: 680,
              progress: .68,
              streak: 7,
              onContinue: () {},
            ),
            HeightSpace(24),
            DailyChallengeCard(
              icon: ImageAssets.rocketIcon,
              title: "Daily Challenge",
              description: "Finish one lesson today",
              points: 25,
              onTap: () {},
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
            Column(
              children: [
                CourseTypeCard(
                  image: ImageAssets.safeImg,
                  title: "Safe Internet Browsing",
                  author: "Guardian AI Team",
                  points: 50,
                  duration: 25,
                  onTap: () {},
                ),

                HeightSpace(20),

                CourseTypeCard(
                  image: ImageAssets.protectPassImg,
                  title: "Protect Your Passwords",
                  author: "Prof. Secure",
                  points: 40,
                  duration: 18,
                  onTap: () {},
                ),

                HeightSpace(20),

                CourseTypeCard(
                  image: ImageAssets.recognizeImg,
                  title: "Recognizing Online Scams",
                  author: "Security Expert",
                  points: 60,
                  duration: 22,
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
