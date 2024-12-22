import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/assets.dart';
import '../slider_container/slider_container_indicator.dart';
import 'available_button.dart';
import 'course_app_bar.dart';

class CourseDetailsSlider extends StatelessWidget {
  const CourseDetailsSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(AssetsData.fullStackCover),
        ),
      ),
      child: Container(
        color: AppColor.kWhiteColor.withOpacity(0.3),
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.only(left: 8.w, right: 27.w, top: 64.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CourseAppBar(),
              const AvailableButton(),
              Align(
                alignment: Alignment.bottomCenter,
                child: SliderContainerIndicator(
                  controller: PageController(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
