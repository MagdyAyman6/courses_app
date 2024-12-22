import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/styles.dart';

class TrainingRoomContainer extends StatelessWidget {
  const TrainingRoomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.h, left: 24.w),
      padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 9.h),
      width: 342.w,
      height: 120.h,
      decoration: BoxDecoration(
        color: AppColor.kWhiteColor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AssetsData.bookingRoomImg,
            width: 100.w,
            height: 100.h,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Training Room",
                style: Styles.textStyle16,
              ),
              Text(
                "Inside",
                style: Styles.textStyle14,
              ),
            ],
          ),
          const CircleAvatar(
              child: Icon(
            Icons.location_on_outlined,
            size: 24,
            color: AppColor.kIconsColor,
          )),
        ],
      ),
    );
  }
}
