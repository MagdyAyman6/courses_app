import 'package:course_app/core/utils/app_color.dart';
import 'package:course_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StepperItem extends StatelessWidget {
  final String title;
  final bool isLast;

  const StepperItem({
    super.key,
    required this.title,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            // Circle Dot
            Container(
              width: 12.w,
              height: 12.w,
              decoration: const BoxDecoration(
                color: AppColor.kIconsColor,
                shape: BoxShape.circle,
              ),
            ),
            if (!isLast)
              Container(
                width: 1.w,
                height: 40.h, // Vertical Line
                color: AppColor.kRateContainerColor,
              ),
          ],
        ),
        SizedBox(width: 16.w),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(bottom: 12.h),
            child: Text(
              title,
              style: Styles.textStyle14.copyWith(
                color: const Color(0xff585858),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
