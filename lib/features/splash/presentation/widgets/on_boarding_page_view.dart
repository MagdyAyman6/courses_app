import 'package:flutter/material.dart';
import '../../../../core/utils/assets.dart';
import 'on_boarding_page.dart';

class OnboardingPageView extends StatelessWidget {
  final PageController controller;
  final Function(int) onPageChanged;
  final void Function()? onTap;

  const OnboardingPageView({
    super.key,
    required this.controller,
    required this.onPageChanged,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      onPageChanged: onPageChanged,
      children: [
        OnboardingPage(
          onTap: onTap,
          image: AssetsData.onBoarding1,
          title: "Best place to learn programming",
          subTitle:
              "In Course programming center, you will learn how to code in the right way with the best instructors.",
        ),
        OnboardingPage(
          onTap: onTap,
          image: AssetsData.onBoarding2,
          title: "Excellent learning environment",
          subTitle:
              "After completing the course, you will be able to keep up with the labor market and obtain a job opportunity in your field or start your own project.",
        ),
        OnboardingPage(
          onTap: onTap,
          image: AssetsData.onBoarding3,
          title: "Achieve your goal and be unique",
          subTitle:
              "After completing the course, you will be able to keep up with the labor market and obtain a job opportunity in your field or start your own project.",
        ),
      ],
    );
  }
}
