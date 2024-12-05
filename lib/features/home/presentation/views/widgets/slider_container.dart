import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/assets.dart';

class SliderContainer extends StatelessWidget {
  const SliderContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:390.w,
      height: 311.h,
      decoration: const BoxDecoration(
        image: DecorationImage(
          colorFilter: ColorFilter.srgbToLinearGamma(),
          image: AssetImage(
            AssetsData.homeSliderCover,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
