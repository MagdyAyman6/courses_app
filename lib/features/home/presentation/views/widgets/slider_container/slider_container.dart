import 'package:course_app/features/home/presentation/views/widgets/slider_container/location_button.dart';
import 'package:course_app/features/home/presentation/views/widgets/slider_container/rate_box.dart';
import 'package:course_app/features/home/presentation/views/widgets/slider_container/slider_container_indicator.dart';
import 'package:course_app/features/home/presentation/views/widgets/slider_container/slider_head_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/utils/assets.dart';

class SliderContainer extends StatelessWidget {
  const SliderContainer({super.key, required this.controller});

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.w,
      height: 320.h,
      decoration: const BoxDecoration(
        image: DecorationImage(
          colorFilter: ColorFilter.srgbToLinearGamma(),
          image: AssetImage(
            AssetsData.homeSliderCover,
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Padding(
        padding:
            EdgeInsets.only(left: 26.w, right: 26.w, top: 60.h, bottom: 30.w),
        child: Column(
          children: [
            const SliderHeadIcons(),
            SizedBox(
              height: 80.h,
            ),
            const LocationButton(),
            const RateBox(),
            Align(
                alignment: Alignment.bottomLeft,
                child: SliderContainerIndicator(controller: controller)),
          ],
        ),
      ),
    );
  }
}
