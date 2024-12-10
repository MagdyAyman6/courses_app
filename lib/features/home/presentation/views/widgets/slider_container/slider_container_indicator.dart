import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../../core/utils/app_color.dart';

class SliderContainerIndicator extends StatelessWidget {
  const SliderContainerIndicator({super.key, required this.controller});

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(top: 24.h),
        height: 10.h,
        width: 90.w,
        child: SmoothPageIndicator(
          controller: controller,
          count: 6,
          effect: JumpingDotEffect(
            dotHeight: 10.h,
            dotWidth: 10.w,
            dotColor: AppColor.kOnboardingIndicatorColor.withOpacity(0.48),
            activeDotColor: AppColor.kOnboardingIndicatorColor,
          ),
        ),
      ),
    );
  }
}
