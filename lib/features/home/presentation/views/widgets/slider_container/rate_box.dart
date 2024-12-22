import 'package:course_app/core/widgets/rating_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/styles.dart';

class RateBox extends StatelessWidget {
  const RateBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Full Stack Course",
            style: Styles.textStyle20
                .copyWith(fontSize: 20.sp, color: AppColor.kWhiteColor),
          ),
          Container(
            width: 51.w,
            height: 22.h,
            decoration: BoxDecoration(
              color: AppColor.kRateContainerColor.withOpacity(0.5),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: const RatingBox(),
          ),
        ],
      ),
    );
  }
}
