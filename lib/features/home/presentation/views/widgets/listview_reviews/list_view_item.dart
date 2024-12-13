import 'package:course_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24.w, bottom: 10.h, right: 10.w),
      width: 227.w,
      height: 139.h,
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(12.r),
      //   // image: const DecorationImage(
      //   //   fit: BoxFit.fill,
      //   //   image: AssetImage(
      //   //     AssetsData.reviewsHomeImg,
      //   //   ),
      //   // ),
      // ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12.r),
        elevation: 4,
        child: Image.asset(
          AssetsData.reviewsHomeImg,
          width: 217.w,
          height: 129.h,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
