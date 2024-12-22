import 'package:course_app/core/utils/app_color.dart';
import 'package:course_app/core/utils/app_router.dart';
import 'package:course_app/core/widgets/favourite_icon.dart';
import 'package:course_app/core/widgets/rating_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/styles.dart';

class BuildCourseCard extends StatelessWidget {
  const BuildCourseCard(
      {super.key, required this.imageUrl, required this.title});

  final String imageUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: AppColor.kWhiteColor,
      margin: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                child: Image.asset(
                  imageUrl,
                  width: 342.w,
                  height: 143.h,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                top: 8.h,
                right: 12.w,
                child: const FavouriteIcon(),
              ),
              Positioned(
                bottom: 16,
                left: 8,
                child: Container(
                  width: 45.w,
                  height: 22.h,
                  decoration: BoxDecoration(
                    color: AppColor.kIconsColor.withOpacity(0.52),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: const RatingBox(),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Align(
              alignment: Alignment.centerLeft,
              child: InkWell(
                onTap: () {
                  GoRouter.of(context).push(AppRouter.kCourseDetails);
                },
                child: Text(
                  title,
                  style: Styles.textStyle16.copyWith(
                    color: AppColor.kBlackColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
