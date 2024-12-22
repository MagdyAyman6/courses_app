import 'package:course_app/core/utils/app_color.dart';
import 'package:course_app/core/utils/assets.dart';
import 'package:course_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 27.h,
            left: 20.w,
          ),
          child: Text(
            "Categories",
            style: Styles.textStyle20.copyWith(
                fontWeight: FontWeight.w400,
                color: AppColor.kCategoryHomeColor),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 12.h),
          child: SizedBox(
            // height: ,
            // width: ,
            child: Image.asset(AssetsData.categoryHomeImg),
          ),
        ),
      ],
    );
  }
}
