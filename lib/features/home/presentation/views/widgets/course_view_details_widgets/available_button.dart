import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/styles.dart';

class AvailableButton extends StatelessWidget {
  const AvailableButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(top: 200.h, left: 34.w),
        width: 130.w,
        height: 27.h,
        decoration: BoxDecoration(
          color: AppColor.kIconsColor,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Available Now",
              style: Styles.textStyle12.copyWith(color: AppColor.kWhiteColor),
            ),
            const Icon(
              Icons.arrow_forward_ios_outlined,
              color: AppColor.kWhiteColor,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}
