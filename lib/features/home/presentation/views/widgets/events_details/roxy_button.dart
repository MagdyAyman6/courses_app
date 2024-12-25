import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/styles.dart';

class RoxyButton extends StatelessWidget {
  const RoxyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 200.h, left: 34.w),
      width: 75.w,
      height: 27.h,
      decoration: BoxDecoration(
        color: AppColor.kIconsColor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Icon(
            Icons.location_on_outlined,
            color: AppColor.kWhiteColor,
            size: 18,
          ),
          Text(
            "Roxy",
            style: Styles.textStyle12.copyWith(color: AppColor.kWhiteColor),
          ),
        ],
      ),
    );
  }
}
