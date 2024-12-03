import 'package:course_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'on_boarding_page.dart';

class OnboardingPageView extends StatefulWidget {
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
  State<OnboardingPageView> createState() => _OnboardingPageViewState();
}

class _OnboardingPageViewState extends State<OnboardingPageView> {


  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: widget.controller,
      onPageChanged: widget.onPageChanged,
      children: [
        OnboardingPage(
          onTap: widget.onTap,
          image: AssetsData.onBoarding1,
          title: "Best place to learn programming",
          subTitle:
          "In Course programming center, you will learn how to code in the right way with the best instructors.",
        ),
        OnboardingPage(
          onTap: widget.onTap,
          image: AssetsData.onBoarding2,
          title: "Excellent learning environment",
          subTitle:
          "You can choose the constructor you like, and the academy provides continuous follow-up and periodic exams, and viewing the educational content on our platform to catch up on what you missed.",
        ),
        OnboardingPage(
          onTap: widget.onTap,
          image: AssetsData.onBoarding3,
          title: "Achieve your goal and be unique",
          subTitle:
          "After completing the course, you will be able to keep up with the labor market and obtain a job opportunity in your field or start your own project.",
        ),
      ],
    );
  }
}
